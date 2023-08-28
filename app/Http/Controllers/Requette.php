<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Custom\CustomFunction;


use Illuminate\Support\Facades\DB;


use App\Ajustement;
use App\Alerte;
use App\Annee_academique;
use App\Attestation;
use App\Attribution;
use App\Banque;
use App\Bordereau;
use App\Bourse;
use App\Boursier;
use App\Candidat;
use App\Compte;
use App\Cycle;
use App\Document_signataire;
use App\Dossier;
use App\Element_bourse;
use App\Element_paiement;
use App\Essai;
use App\Filiere;
use App\Fonction;
use App\Inscription;
use App\Mode_paiement;
use App\Mouvement;
use App\Nature_bourse;
use App\Niveau_etude;
use App\Paiement;
use App\Parametre_sys;
use App\Pays;
use App\Piece_attribution;
use App\Signataire;
use App\Structure_universite;
use App\Type_ajustement;
use App\Type_attribution;
use App\Type_bourse;
use App\Type_dossier;
use App\Type_element_bourse;
use App\Type_piece;
use App\Universite;
use App\User;
use App\V_paiement;
use App\Ville;
use App\Zone;

use Illuminate\Http\Request;

class Requette extends Controller
{
    public function index()
	{
		$my_request= DB::select('SELECT * FROM annee_academique JOIN type_dossier JOIN cycle JOIN niveau_etude JOIN filiere JOIN bourse JOIN dossier JOIN candidat WHERE candidat.id=dossier.candidat_id  AND dossier.bourse_id=bourse.id AND dossier.filiere_id=filiere.id AND dossier.niveau_etudeacc_id=niveau_etude.id AND niveau_etude.cycle_id=cycle.id AND dossier.type_dossier_id=type_dossier.id AND dossier.annee_academique_id=annee_academique.id');
		
		$my_request=DB::table('dossier')->join('candidat','candidat.id','=','dossier.candidat_id')
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structure_universite_id')
									  ->join('universite','universite.id','=','dossier.universite_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etudeacc_id')
									  //->join('cycle','cycle.id','=','niveau_etude.cycle_id')
									  ->join('type_dossier','type_dossier.id','=','dossier.type_dossier_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									  ->join('attribution','attribution.candidat_id','=','dossier.candidat_id')
									  ->get();
		$result=CustomFunction::getMandatementPage($my_request);
		//return view("tables.data",compact('my_request','pays','bourses','universites','filieres','niveaux','attributions','sexes'));
		return view("tables.data",$result);
	}
	
	public function store(Request $request)
	{
		
		
		$dossiers=DB::table('dossier')->join('candidat','candidat.id','=','dossier.candidat_id')
									  ->join('bourse','bourse.id','=','dossier.bourse_id')
									  ->join('structure_universite','structure_universite.id','=','dossier.structure_universite_id')
									  ->join('universite','universite.id','=','dossier.universite_id')
									  ->join('filiere','filiere.id','=','dossier.filiere_id')
									  ->join('niveau_etude','niveau_etude.id','=','dossier.niveau_etudeacc_id')
									  //->join('cycle','cycle.id','=','niveau_etude.cycle_id')
									  ->join('type_dossier','type_dossier.id','=','dossier.type_dossier_id')
									  ->join('annee_academique','annee_academique.id','=','dossier.annee_academique_id')
									  ->join('attribution','attribution.candidat_id','=','dossier.candidat_id');
		if($request->pays!="null")
		{
			//$dossiers=$dossiers->where('pays_id',$request->pays);
			dd("pays");
		}
		if($request->bourse!="null")
		{
			$dossiers=$dossiers->where('bourse_id',$request->bourse);
			//dd("bourse");
		}
		if($request->universite!="null")
		{
			$dossiers=$dossiers->where('universite_id',$request->universite);
			//dd("universite");
		}
		if($request->filiere!="null")
		{
			$dossiers=$dossiers->where('filiere_id',$request->filiere);
			//dd("filiere");
		}
		if($request->niveau!="null")
		{
			//$dossiers=$dossiers->where('niveau_etude_id',$request->niveau);
		}
		if($request->sexe!="null" )
		{
			$dossiers=$dossiers->where('sexe',$request->sexe);
			//dd("sexe");
		}
		$dossiers=$dossiers->get();
		$my_request=$dossiers;
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.data",$result);
	}
	
	
	public function show($id)
	{
		dd("show");
	}
}
