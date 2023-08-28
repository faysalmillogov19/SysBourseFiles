<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;
use Excel;

class PaiementC extends Controller
{
    public function formPaiementNormal($id)
	{
		$my_request=DB::table('candidat')->where('candidat.id',$id)
										 ->join('compte','compte.boursier_id','candidat.devient_id')
										 ->select('*','candidat.id as id')
										 ->first();
										 
		if($my_request==NULL)
		{
			return redirect("/addcompte/form/".$my_request->id);
		}
		else
		{
			$result=CustomFunction::getMandatementPage($my_request);
			return view("forms.addPaiementNormal",$result);
		}
	}
	
	public function formPaiementPonctuel($id)
	{
		$my_request=DB::table('candidat')->where('candidat.id',$id)
										 ->join('compte','compte.boursier_id','candidat.devient_id')
										 ->select('*','candidat.id as id')
										 ->first();
										 
		if($my_request==NULL)
		{
			return redirect("/addcompte/form/".$id);
		}
		else
		{
			$result=CustomFunction::getMandatementPage($my_request);
			return view("forms.addPaiementPonctuel",$result);
		}
	}
	
	public function addPaiementNormal(Request $request)
	{
		$my_request=DB::table('dossier')->where('dossier.candidat_id',$request->candidat)
											->where('dossier.annee_academique_id',$request->annee_academique_id)
											->Join('candidat','candidat.id','dossier.candidat_id')
											->join('element_bourse', function($join){
												$join->on('element_bourse.niveau_etude_id','=','dossier.niveau_etude_id');
												$join->on('element_bourse.bourse_id','=','dossier.bourse_id');
											})
											->join("type_element_bourse",'type_element_bourse.id','element_bourse.type_element_bourse_id')
											->where('type_element_bourse.periodicite','!=','PONCTUEL')
											->select('*','element_bourse.id as id_element_bourse');
											
		$exist_test=$my_request->join('element_paiement', function($join){
									$join->on('element_paiement.periode','=','dossier.annee_academique_id');
									$join->on('element_paiement.boursier_id','=','candidat.devient_id');
								})
							->first();
		
		if($exist_test==NULL)
		{
			
			foreach($my_request->get() as $row)
			{
				if($row->periodicite!='DUREEBOURSE' || $row->type_dossier_id!=2)
				{
							$element_paiement= DB::table('element_paiement')->insertGetId([
						
								"periode"=>$row->annee_academique_id,
								"montant"=>$row->montant*$row->nombre,
								//"paiement_id "=>$row->paiement_id ,
								"boursier_id"=>$row->devient_id,
								"element_bourse_id"=>$row->id_element_bourse,
						]);
				}
				
			}
			return redirect("/boursiers");
		}
		else
		{
			CustomFunction::previousPage("Paiement déjà effectué");
			
		}
	}
	
	public function addPaiementPonctuel(Request $request)
	{
				
		$my_request=DB::table('dossier')->where('dossier.candidat_id',$request->candidat)
										->where('dossier.annee_academique_id',$request->annee_academique_id)
										->join('filiere','filiere.id','=','dossier.filiere_id')
										->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etude_id')
										->Join('candidat','candidat.id','dossier.candidat_id')
										->Join('boursier','boursier.id','candidat.devient_id')
										->Join('compte','compte.boursier_id','candidat.devient_id');
		$candidat=$my_request->first();
										
		$element_bourse=$my_request->join('element_bourse', function($join){
												$join->on('element_bourse.niveau_etude_id','=','dossier.niveau_etude_id');
												$join->on('element_bourse.bourse_id','=','dossier.bourse_id');
											})
											->where('element_bourse.type_element_bourse_id',$request->type_element_bourse)
											->join('type_element_bourse','type_element_bourse.id','element_bourse.type_element_bourse_id')
										    ->select('*','element_bourse.id as element_bourse_id');
													
		$element_bourse_exist=$my_request->first();
		
		if($element_bourse_exist!=NULL)
		{			
			$paiement_effectue=$my_request->join('paiement_periodique', function($join){
										$join->on('paiement_periodique.annee_academique_id','=','dossier.annee_academique_id');
										$join->on('paiement_periodique.boursier_id','=','candidat.devient_id');
										$join->on('paiement_periodique.element_bourse_id','=','element_bourse.id');
									})->first();
			$my_request=[];	
			$my_request[0]="Paiement des ".$element_bourse_exist->libelle_element;
			$my_request[1]=1;
			
			$message="Paiement effectué avec succès";						
			if($paiement_effectue==NULL)
			{
				CustomFunction::InsertPaiementPeriodique($element_bourse_exist->devient_id,"","",$element_bourse_exist->nombre,$element_bourse_exist->element_bourse_id,$element_bourse_exist->montant,$element_bourse_exist->annee_academique_id,$element_bourse_exist->niveau_etude_id);					
				//return redirect("/boursiers");
				
			}
			else
			{
				$message="Le paiement avait déjà été effectué";
				
			}
			$row=[
					"Nom"=>$candidat->nom_etudiant.' '.$candidat->prenom_etudiant,
					"N° Attestation"=>$candidat->numero_attestation_complet,
					"N° Compte"=>$candidat->num_compte,
					"Date_Naissance"=>date('d-m-Y',strtotime($candidat->date_naiss_etudiant)),
					"filiere"=>$candidat->libelle_filiere,
					"niveau"=>$candidat->libelle_niveau,
					"Montant"=>$element_bourse_exist->montant,
				];
			array_push($my_request,$row);
			$result=CustomFunction::getMandatementPage($my_request);
			return view("tables.GenerateWordDocment",$result)->with($message);
		}
		else
		{
			CustomFunction::previousPage("Veillez definir un montant pour ce type de  paiement");
		}
	}
	
	
	public function PaiementGroupe(Request $request)
	{
			
		
		$dossiers=DB::table('attribution')->join('candidat','candidat.id','=','attribution.candidat_id')
											->join("dossier",function($join){
												$join->on('dossier.candidat_id','=','attribution.candidat_id')->on('dossier.annee_academique_id','=','attribution.annee_academique_id');
											})
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structureorigine_id')
									  ->join('universite','universite.id','=','dossier.universiteorigine_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etude_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									  ->join('type_attribution','type_attribution.id','=','attribution.type_attribution_id')
									  ->join('boursier','boursier.id','=','candidat.devient_id');
									 // ->select('*','dossier.bourse_id as b_id');
								 
		$titre="Etat de mandatement d'étudiant inscrits";							  
		if($request->numero_attestation_complet!=NULL)
		{
			$dossiers=$dossiers->where('boursier.numero_attestation_complet',strtoupper($request->numero_attestation_complet));
			
		}
		if($request->annee!="null")
		{
			$dossiers=$dossiers->where('dossier.annee_academique_id',$request->annee);
			
		}
		if($request->bourse!="null")
		{
			$dossiers=$dossiers->where('dossier.bourse_id',$request->bourse);
						
		}
		if($request->universite!="null")
		{
			$dossiers=$dossiers->where('universiteorigine_id',$request->universite);
						
		}
		if($request->filiere!="null")
		{
			$dossiers=$dossiers->where('filiere_id',$request->filiere);
						
		}
		if($request->niveau!="null")
		{
			$dossiers=$dossiers->where('niveau_etude_id',$request->niveau);
						
		}
		if($request->sexe!="null" )
		{
			$dossiers=$dossiers->where('sexe',$request->sexe);
			
		}
		
		if($request->imprimer=="imprimer")
		{					
						$my_request=$dossiers->join('compte','compte.boursier_id','=','boursier.id')
											 ->join('element_bourse', function($join){
													$join->on('element_bourse.niveau_etude_id','=','dossier.niveau_etude_id');
													$join->on('element_bourse.bourse_id','=','dossier.bourse_id');
													})
											  ->join('type_element_bourse','type_element_bourse.id','=','element_bourse.type_element_bourse_id')
											  ->where('type_element_bourse.periodicite','<>','PONCTUEL')
											  ->select('*','element_bourse.montant as montant','element_bourse.nombre as nombre_total_a_payer','element_bourse.id as element_bourse_id','boursier.id as boursier_id','dossier.annee_academique_id as annee_academique_id','dossier.niveau_etude_id as niveau_etude_id')
											  ->get();
							
							$debut_entree=$request->debut;
							$fin_entree=$request->fin;
							
							$i=0;
							foreach($my_request as $m)
							{
								//dd($m);
								$element=DB::table("paiement_periodique")->where('annee_academique_id',$m->annee_academique_id)
																		->where('boursier_id',$m->boursier_id)
																		->where('element_bourse_id',$m->element_bourse_id);
																		
								$max_fin=0+$element->max('fin_periode');										
								$min_debut=0+$element->min('debut_periode');
								$nombre_paye=0+$element->max('nombre');
								$debut=$request->debut;
								$fin=$request->fin;
								
								if($element->first()==null)
								{
									if($m->type_attribution_id!=1 && strtolower($m->periodicite)==strtolower('DUREEBOURSE'))
									{
									  CustomFunction::InsertPaiementPeriodique($m->boursier_id,$request->debut,$request->fin,1,$m->element_bourse_id,0,$m->annee_academique_id,$m->niveau_etude_id);
									}
									else
									{
										$fin=min($debut+$m->nombre-1,$fin);
										$nombre=min($fin-$debut+1,$m->nombre);
										CustomFunction::InsertPaiementPeriodique($m->boursier_id,$debut,$fin,$nombre,$m->element_bourse_id,$nombre*$m->montant,$m->annee_academique_id,$m->niveau_etude_id);
									}
								}
								else if($m->nombre>1)
								{	
									$reste_debut=$min_debut-$debut;
									$reste_fin=$fin-$max_fin;
									$nombre_restant=min($reste_debut,$m->nombre-$nombre_paye);
									if($reste_debut>0 && $nombre_restant>0)
									{
										$min_debut=$min_debut-$reste_debut;
										$nombre_paye=$nombre_paye+$reste_debut;
										
									}
									$nombre_restant=min($reste_fin,$m->nombre-$nombre_paye);
									if($reste_fin>0 && $nombre_restant>0)
									{
										$max_fin=$max_fin+$reste_fin;
										$nombre_paye=$nombre_paye+$reste_fin;
									}
									CustomFunction::UpdatePaiementPeriodique($element->max('id'),$m->boursier_id,$min_debut,$max_fin,$nombre_paye,$m->element_bourse_id,$nombre_paye*$m->montant,$m->annee_academique_id,$m->niveau_etude_id);
								}
							}
											
							return redirect("/boursiers");	
							
			
		}
		
		$my_request[0]=$titre;
		$my_request[1]=0;
		$i=0;
															
		foreach($dossiers->get() as $m)
		{		
				$elements=DB::table('paiement_periodique')->where('boursier_id',$m->devient_id)
														->where('annee_academique_id',$m->annee_academique_id)
														->join('element_bourse','element_bourse.id','paiement_periodique.element_bourse_id')
														->join('type_element_bourse','type_element_bourse.id','element_bourse.type_element_bourse_id')
														->get();
														
				$ajustements=DB::table('ajustement')->where('boursier_id',$m->devient_id)
													->where('annee_academique_id',$m->annee_academique_id)
													->get();
				
				
				
				$compte=DB::table('compte')->where('boursier_id',$m->devient_id)
										   ->first();
			if($compte)
			{
				$compte=$compte->num_compte;
				
			
				$row=[
						"Nom"=>$m->nom_etudiant.' '.$m->prenom_etudiant,
						"N° Attestation"=>$m->numero_attestation_complet,
						"N° Compte"=>$compte,
						"Date_Naissance"=>date('d-m-Y',strtotime($m->date_naiss_etudiant)),
						"filiere"=>$m->libelle_filiere,
						"niveau"=>$m->libelle_niveau,
						//"structure"=>$m->nom_structure,
					];
				$trop_perçu=0;
				$moins_perçu=0;
				foreach($ajustements as $ajustement)
				{
					$nombre=CustomFunction::positive($ajustement->duree-$request->debut+1);
					$nombre=min($request->fin-$request->debut+1,$nombre);
					if($ajustement->type_ajustement_id==1)
					{
						$moins_perçu=$moins_perçu+($ajustement->montant*$nombre);
					}
					else
					{
						$trop_perçu=$trop_perçu-($ajustement->montant*$nombre);
					}
				}
				$ajustement=$moins_perçu+$trop_perçu;
				$row['ajustement']=$ajustement;
			
				foreach($elements as $element)
				{
					$debut=max($request->debut,$element->debut_periode);
					$fin=min($request->fin,$element->fin_periode);
					$nombre=$fin-$debut+1;
					$nombre=min($nombre,$element->nombre);
					//$nombre_mois_paye=$element->fin_periode-$element->debut_periode+1;
					//$nombre_mois_affiche=$nombre_a_fin-$nombre_au_debut+1;
					$net_a_payer=($element->net_a_payer*$nombre)/$element->nombre;
					
					$row[$element->libelle_element]=$net_a_payer;
				}
				array_push($my_request,$row);
				
				
					$i++;  
			}
			else
			{
				CustomFunction::add_alerte("Le boursier ".$m->nom_etudiant." ".$m->prenom_etudiant." ".$m->numero_attestation_complet." ne possède pas de numéro de compte","ERROR");
			}
			
		}
		$my_request[1]=$i;
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.GenerateWordDocment",$result);
	}

	
	
}
