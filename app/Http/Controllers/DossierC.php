<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

use Illuminate\Http\Request;

class DossierC extends Controller
{
    public function index()
	{
		$my_request=DB::table('dossier')->join('candidat','candidat.id','=','dossier.candidat_id')
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structure_universite_id')
									  ->join('universite','universite.id','=','dossier.universite_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etudeacc_id')
									  ->join('cycle','cycle.id','=','niveau_etude.cycle_id')
									  ->join('type_dossier','type_dossier.id','=','dossier.type_dossier_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									  ->get();
		
		$result=CustomFunction::getMandatementPage($my_request);
		//return view("tables.mandats",compact('my_request','pays','bourses','universites','filieres','niveaux','attributions','sexes','entete','signataire'));
		return view("tables.mandats",$result);
	}
	
	public function listedossier($idCandidat)
	{
		$my_request=DB::table('dossier')->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etude_id')
										->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
										->join('type_dossier','type_dossier.id','=','dossier.type_dossier_id')
										->where('candidat_id',$idCandidat)
										->select("dossier.*","libelle_niveau","libelle_type_dossier","debut_annee","fin_annee","annee_academique.id as annee_academique_id",'dossier.id as dossier_id')
										->get();
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.dossiers",$result);
		
	}
	
	public function detailsattribution($id)
	{
		$id=explode("@",$id);
		//dd($id[0]);
		$my_request=DB::table('dossier')->where('dossier.id',$id[0])
										->join('candidat','candidat.id','=','dossier.candidat_id')
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structureorigine_id')
									  ->join('universite','universite.id','=','dossier.universiteorigine_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etude_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									  ->join('attribution','attribution.candidat_id','=','dossier.candidat_id')
									  //->where('attribution.annee_academique_id',$id[1])
									  ->select('dossier.*','annee_academique.*','filiere.*','universite.*','niveau_etude.*','candidat.*','structure_universite.*','bourse.*','attribution.*','dossier.id as dossier_id','dossier.candidat_id as candidat','attribution.id as attribution_id' )
									  ->first();
									  //dd($my_request);
		$result=CustomFunction::getMandatementPage($my_request);
		return view("forms.updateDossier",$result);
		
	}
	
	public function updateAttribution(Request $request)
	{
		$dossier= DB::table('dossier')->where('id',$request->dossier_id)->update([
			
					"revenu_parent"=>$request->revenu_parent,
					"nbre_charges"=>$request->nbre_charges,
					"moyenne"=>$request->moyenne,
					"moyenne2"=>$request->moyenne2,
					"niveau_etude_id"=>$request->niveau_etude_id,
					"filiere_id"=>$request->filiere_id,
					"structureorigine_id"=>$request->structure_universite_id,
					"universiteorigine_id"=>$request->universite_id,
					"annee_academique_id"=>$request->annee_academique_id,
					"bourse_id"=>$request->bourse_id,
			
			]);
		
		$attribution= DB::table('attribution')->where('id',$request->attribution_id)->update([
					"numero_attestation"=>$request->numero_attestation,
					"bourse_id"=>$request->bourse_id,
					//"statut"=>$request->statut,
					"decision"=>$request->decison,
					"observation"=>$request->observation,
					"annee_academique_id"=>$request->annee_academique_id,
					"nature_bourse_id"=>$request->nature_bourse_id,
					"type_attribution_id"=>$request->type_attribution_id,
			
			]);
			
			return redirect("/dossier/candidat/".$request->candidat_id);
	}
}
