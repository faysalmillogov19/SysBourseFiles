<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

class BoursierC extends Controller
{
    public function index()
	{
		$my_request=DB::table('candidat')->where('devient_id','<>',NULL)
						->join("boursier",'boursier.id','=','candidat.devient_id')
						->select("*","candidat.id as id")
						->get();
						
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.boursiers",$result);
	}
	public function addCompteForms($id)
	{
		$my_request=DB::table('candidat')->where('id',$id)->first();
		$compte=DB::table('compte')->where('boursier_id',$my_request->devient_id)->first();
		if($compte==NULL)
		{
			$result=CustomFunction::getMandatementPage($my_request);
			return view("forms.addCompte",$result);
		}
		else
		{
			$my_request=DB::table('candidat')->where('candidat.id',$id)
											 ->join('compte','candidat.devient_id','=','compte.boursier_id')
											 ->join('banque','banque.id','=','compte.banque_id')
											 ->join('mode_paiement','mode_paiement.id','=','compte.mode_paiement_id')
											 ->select('*','compte.id as compte_id')
											 ->first();
			$result=CustomFunction::getMandatementPage($my_request);
			return view("forms.updateCompte",$result);
		}
		
	}
	
	public function addCompte(Request $request)
	{
		if($request->compte)
		{
			DB::table('compte')->where('id',$request->compte)->update([
			
					"num_compte"=>$request->num_compte,
					"libelle_compte"=>$request->libelle_compte,
					"mode_paiement_id"=>$request->mode_paiement_id,
					"banque_id"=>$request->banque_id,
					"rib"=>$request->rib,			
			]);
		}
		else
		{
			$compte= DB::table('compte')->insertGetId([
			
					"num_compte"=>$request->num_compte,
					"libelle_compte"=>$request->libelle_compte,
					"mode_paiement_id"=>$request->mode_paiement_id,
					"banque_id"=>$request->banque_id,
					"rib"=>$request->rib,
					"boursier_id"=>$request->boursier,
			
			]);
		}
			return redirect("/boursiers");
	}
}
