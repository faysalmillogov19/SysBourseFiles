<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dossier extends Model
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
		return view("tables.dossiers",$result);
	}
}
