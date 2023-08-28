<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

use Illuminate\Http\Request;

class AttributionC extends Controller
{
    public function index()
	{
		$my_request=DB::table('candidat')->get();
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.candidats",$result);
	}
	public function formulaire($id)
	{
		//dd($id);
		$year=date('Y');
		$my_request=DB::table('dossier')->join('candidat','candidat.id','=','dossier.candidat_id')
									  ->where('candidat.id',$id)
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structureorigine_id')
									  ->join('universite','universite.id','=','dossier.universiteorigine_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etude_id')
									  ->join('type_dossier','type_dossier.id','=','dossier.type_dossier_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									 // ->select('*','un)
									  ->first();
			
		if($my_request->devient_id==NULL)
		{
			echo"<script>history.go(-1)</script>" ;							  
		}
		else
		{
			//dd($my_request->bourse_id);
			$result=CustomFunction::getMandatementPage($my_request);
			return view("forms.addAttribution",$result);
		}
		
	}
	
	public function nouvelleAttribution($id)
	{
		
		$year=date('Y');
		$my_request=DB::table('dossier')->join('candidat','candidat.id','=','dossier.candidat_id')
									  ->where('candidat.id',$id)
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structureorigine_id')
									  ->join('universite','universite.id','=','dossier.universiteorigine_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etude_id')
									  ->join('type_dossier','type_dossier.id','=','dossier.type_dossier_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									  ->first();
			//dd($my_request);
		if($my_request->devient_id==NULL)
		{
			$result=CustomFunction::getMandatementPage($my_request);
			return view("forms.addNouvelleAttribution",$result);
		}
		else
		{
			echo "<script>history.go('-1')</script>";
		}
		
	}
	
	//Attributtion de bourse pour la 1ère fois
	public function editNouvelleAttribution(Request $request)
	{
		$candidat_id=$request->candidat_id; //dd($request->annee_academique_id);
		
		
			$boursier= DB::table('boursier')->insertGetId([
			
					"mode_paiement"=>$request->mode_paiement,
					"numero_attestation_complet"=>$request->numero_attestation,
					"bourse_id"=>$request->bourse_id,
					"cle"=>$request->cle,
					"etat"=>$request->etat,
					"debut_etude"=>$request->debut_etude,
					"fin_etude"=>$request->fin_etude,
					//"date_effet"=>$request->date_effet,
					//"photo"=>CustomFunction::uploadFichier($request->file('photo'),"Dossiers/Candidat_".$candidat_id."/","Photo_"),
			
			]);
			
			$candidat=DB::table('candidat')->where('id',$candidat_id)->update([
			
					"devient_id"=>$boursier,
			]);
			$candidat=DB::table('candidat')->where('id',$candidat_id)->first();
			//dd($request);
			$attribution= DB::table('attribution')->insert([
					"numero_attestation"=>$request->numero_attestation,
					"candidat_id"=>$candidat_id,
					"boursier_id"=>$request->bourse_id,
					//"statut"=>$request->statut,
					"decision"=>$request->decison,
					"observation"=>$request->observation,
					"annee_academique_id"=>$request->annee_academique_id,
					//"nature_bourse_id"=>$request->nature_bourse_id,
					"type_attribution_id"=>$request->type_attribution_id,
			
			]);
			CustomFunction::add_alerte("Le boursier ".$candidat->nom_etudiant." ".$candidat->prenom_etudiant." ".$request->numero_attestation." ne possède pas de numéro de compte","ERROR");
			
			return redirect("candidats");
		}
	
	public function edit(Request $request)
	{
		$candidat_id=$request->candidat_id; //dd($request->annee_academique_id);
		$annee_academique=$request->annee_academique_id; //dd($request->annee_academique_id);
		$my_request=DB::table('dossier')->where('candidat_id',$candidat_id)->where('annee_academique_id','>=',$annee_academique)->first();
		//dd(gettype($my_request));
		if($my_request==NULL)
		{
			$my_request=DB::table('dossier')->where('candidat_id',$candidat_id)
											->join('candidat','candidat.id','=','dossier.candidat_id')
											->first();
			$dossier= DB::table('dossier')->insert([
			
					"candidat_id"=>$candidat_id,
					"revenu_parent"=>$my_request->revenu_parent,
					"nbre_charges"=>$my_request->nbre_charges,
					"moyenne"=>$request->moyenne,
					"moyenne2"=>$request->moyenne2,
					"niveau_etude_id"=>$request->niveau_etude_id,
					"filiere_id"=>$request->filiere_id,
					"structureorigine_id"=>$request->structure_universite_id,
					"universiteorigine_id"=>$request->universite_id,
					"annee_academique_id"=>$request->annee_academique_id,
					"type_dossier_id"=>2,
					"bourse_id"=>$request->bourse_id,
			
			]);
			
			$dossier= DB::table('attribution')->insert([
					"numero_attestation"=>$request->numero_attestation,
					"candidat_id"=>$candidat_id,
					"boursier_id"=>$my_request->devient_id,
					"bourse_id"=>$request->bourse_id,
					//"statut"=>$request->statut,
					"decision"=>$request->decision,
					"observation"=>$request->observation,
					"annee_academique_id"=>$request->annee_academique_id,
					"nature_bourse_id"=>$request->nature_bourse_id,
					"type_attribution_id"=>$request->type_attribution_id,
			
			]);
			
			return redirect("candidats");
			
		}
		else
		{
			echo CustomFunction::previousPage("Année académique invalide");
		}
	}
		
	
}
