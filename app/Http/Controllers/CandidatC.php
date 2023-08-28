<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

class CandidatC extends Controller
{
	public function index()
	{
		$my_request=DB::table('candidat')->get();
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.candidats",$result);
	}
	public function formulaire($id)
	{
		
		if($id>0)
		{
			$my_request=DB::table('candidat')->where('id',$id)->first();
			//dd($id);
		}
		else
		{
			$my_request=false;
		}
		$result=CustomFunction::getMandatementPage($my_request);
		return view("forms.Addcandidat",$result);
	}
	
	public function edit($id,Request $request)
	{
		if($id>0)
		{
			$candidat= DB::table('candidat')->where('id',$id)->update([
			
					"num_piece_identite"=>$request->num_piece_identite,
					"telephone"=>$request->telephone,
					"nom_etudiant"=>$request->nom_etudiant,
					"prenom_etudiant"=>$request->prenom_etudiant,
					"date_naiss_etudiant"=>$request->date_naiss_etudiant,
					"sexe"=>$request->sexe,
					"nom_pere"=>$request->nom_pere,
					"nom_mere"=>$request->nom_mere,
					"profession_pere"=>$request->profession_pere,
					"profession_mere"=>$request->profession_mere,
					
			]);
			
			return redirect("/candidats");
		}
		else
		{
			$candidat= DB::table('candidat')->insertGetId([
			
					"num_piece_identite"=>$request->num_piece_identite,
					"telephone"=>$request->telephone,
					"nom_etudiant"=>$request->nom_etudiant,
					"prenom_etudiant"=>$request->prenom_etudiant,
					"date_naiss_etudiant"=>$request->date_naiss_etudiant,
					"sexe"=>$request->sexe,
					"nom_pere"=>$request->nom_pere,
					"nom_mere"=>$request->nom_mere,
					"profession_pere"=>$request->profession_pere,
					"profession_mere"=>$request->profession_mere,
			
			]);
			
			//dd($candidat);
			
			$dossier= DB::table('dossier')->insert([
			
					"candidat_id"=>$candidat,
					"revenu_parent"=>$request->revenu_parent,
					"nbre_charges"=>$request->nbre_charges,
					"moyenne"=>$request->moyenne,
					"moyenne2"=>$request->moyenne2,
					"niveau_etude_id"=>$request->niveau_etude_id,
					"filiere_id"=>$request->filiere_id,
					"structureorigine_id"=>$request->structure_universite_id,
					"universiteorigine_id"=>$request->universite_id,
					"annee_academique_id"=>$request->annee_academique_id,
					"type_dossier_id"=>1,
					"bourse_id"=>$request->bourse_id,
			
			]);
			
			return redirect("/candidat/form/{{0}}");
		}
		
				
	}
	
    
}
