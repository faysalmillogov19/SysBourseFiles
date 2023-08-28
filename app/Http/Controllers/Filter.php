<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;


use Illuminate\Http\Request;

class Filter extends Controller
{
    public function index()
	{
		$pays=DB::select("SELECT * FROM pays");
		$bourses=DB::select("SELECT * FROM bourse");
		$universites=DB::select("SELECT * FROM universite");
		$filieres=DB::select("SELECT * FROM filiere");
		$niveaux=DB::select("SELECT * FROM niveau_etude");
		$attributions=DB::select("SELECT * FROM type_attribution");
		$sexes=DB::select("SELECT DISTINCT(sexe) FROM candidat");
		return view("forms.filter",compact('pays','bourses','universites','filieres','niveaux','attributions','sexes'));
	}
	
	
}
