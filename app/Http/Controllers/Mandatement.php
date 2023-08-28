<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

use Illuminate\Http\Request;
use PDF;
use DomPDF;

class Mandatement extends Controller
{
    public function index()
	{
			$my_request=DB::table('attribution')->join('candidat','candidat.id','=','attribution.candidat_id')
											->join("dossier",function($join){
												$join->on('dossier.candidat_id','=','attribution.candidat_id')->on('dossier.annee_academique_id','=','attribution.annee_academique_id');
											})
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('boursier','boursier.id','=','candidat.devient_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structureorigine_id')
									  ->join('universite','universite.id','=','dossier.universiteorigine_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etude_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									  ->join('type_attribution','type_attribution.id','=','attribution.type_attribution_id')
									  ->get();
		
		$result=CustomFunction::getMandatementPage($my_request);
		//return view("tables.mandats",compact('my_request','pays','bourses','universites','filieres','niveaux','attributions','sexes','entete','signataire'));
		return view("tables.mandats",$result);
	}
	
	public function store(Request $request)
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
									  ->join('boursier','boursier.id','=','candidat.devient_id')
									  ->select('*','dossier.bourse_id as b_id');
									 
		$titre="Etat de mandatement des étudiant inscrits";	
		if($request->numero_attestation_complet!=NULL)
		{
			$dossiers=$dossiers->where('boursier.numero_attestation_complet',strtoupper($request->numero_attestation_complet));
			
		}
		if($request->annee!="null")
		{
			$dossiers=$dossiers->where('dossier.annee_academique_id',$request->annee);
			
			$TT=DB::table('annee_academique')->where('id',$request->annee)->first();
			$titre=$titre."au titre de l'année ".date('Y',strtotime($TT->debut_annee))."-".date('Y',strtotime($TT->fin_annee));
		}
		if($request->bourse!="null")
		{
			$dossiers=$dossiers->where('dossier.bourse_id',$request->bourse);
			
			$TT=DB::table('bourse_id')->where('id',$request->bourse)->first();
			$titre=$titre." ".$TT->libelle_bourse;
		}
		if($request->universite!="null")
		{
			$dossiers=$dossiers->where('universiteorigine_id',$request->universite);
			
			$TT=DB::table('universite')->where('id',$request->universite)->first();
			$titre=$titre." ".$TT->nom_universite;
		}
		if($request->filiere!="null")
		{
			$dossiers=$dossiers->where('filiere_id',$request->filiere);
			
			$TT=DB::table('filiere')->where('id',$request->filiere)->first();
			$titre=$titre." ".$TT->libelle_filiere;
		}
		if($request->niveau!="null")
		{
			$dossiers=$dossiers->where('niveau_etude_id',$request->niveau);
			
			$TT=DB::table('niveau_etude')->where('id',$request->niveau)->first();
			$titre=$titre." ".$TT->libelle_niveau;
		}
		if($request->sexe!="null" )
		{
			$dossiers=$dossiers->where('sexe',$request->sexe);
			$titre=$titre." ".$request->sexe;
			//dd($request->sexe);
		}
		

		if($request->imprimer=="imprimer")
		{
			$my_request[0]=$titre;
			$my_request[1]=0;
			$i=0;

							foreach($dossiers->get() as $dossier)
							{
								$elements=DB::table("element_bourse")->where('bourse_id',$dossier->b_id)
																   ->where('niveau_etude_id',$dossier->niveau_etude_id)
																   ->join('type_element_bourse',  'type_element_bourse.id' , '=' , 'element_bourse.type_element_bourse_id')
																   ->where('type_element_bourse.periodicite','<>','PONCTUEL')
																   ->get();
								//dd($dossier);								   
								$row=[
										"Nom"=>$dossier->nom_etudiant.' '.$dossier->prenom_etudiant,
										"Date_Naissance"=>date('d-m-Y',strtotime($dossier->date_naiss_etudiant)),
										"N°Attestation"=>$dossier->numero_attestation_complet,
										"filiere"=>$dossier->libelle_filiere,
										"niveau"=>$dossier->libelle_niveau,
										"structure"=>$dossier->nom_structure,
						
									];
									
								foreach($elements as $element)
								{	if($dossier->type_attribution_id!=1 && strtolower($element->periodicite)==strtolower('DUREEBOURSE'))
									{
										$element->montant=0;
									}
									$row[$element->libelle_element]=$element->montant;
								}
								array_push($my_request,$row);
								$i++;
							}
							$my_request[1]=$i;
							$result=CustomFunction::getMandatementPage($my_request);
							return view("tables.GenerateWordDocment",$result);
			
		}
		$my_request=$dossiers->get();
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.mandats",$result);
	}
	
	function convert_customer_data_to_html()
    {
     $customer_data = DB::table('candidat')->limit(10)->get();
     $output = '
     <h3 align="center">Customer Data</h3>
     <table width="100%" style="border-collapse: collapse; border: 0px;">
      <tr>
    <th style="border: 1px solid; padding:12px;" width="20%">Name</th>
    <th style="border: 1px solid; padding:12px;" width="30%">Address</th>
    <th style="border: 1px solid; padding:12px;" width="15%">City</th>
    <th style="border: 1px solid; padding:12px;" width="15%">Postal Code</th>
    <th style="border: 1px solid; padding:12px;" width="20%">Country</th>
   </tr>
     ';  
     foreach($customer_data as $customer)
     {
      $output .= '
      <tr>
       <td style="border: 1px solid; padding:12px;">'.$customer->num_piece_identite.'</td>
       <td style="border: 1px solid; padding:12px;">'.$customer->nom_etudiant.'</td>
       <td style="border: 1px solid; padding:12px;">'.$customer->prenom_etudiant.'</td>
       <td style="border: 1px solid; padding:12px;">'.$customer->sexe.'</td>
       <td style="border: 1px solid; padding:12px;">'.$customer->telephone.'</td>
      </tr>
      ';
     }
     $output .= '</table>';
     return $output;
    }
	
	
}
