<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

class AjustementC extends Controller
{
	public function liste($id)
	{
		$my_request=DB::table('candidat')->where('candidat.id',$id)
										->join('ajustement','ajustement.boursier_id','candidat.devient_id')
										->join('annee_academique','annee_academique.id','ajustement.annee_academique_id')
										->join('type_ajustement','type_ajustement.id','ajustement.type_ajustement_id')
										->select('*','ajustement.id as id','ajustement.boursier_id as boursier_id');
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.ajustement",$result);
	}
	
	public function form($id)
	{
		$id=explode('|',$id);
		$candidat=DB::table('candidat')->where('candidat.devient_id',$id[0])
									   ->join('compte','compte.boursier_id','candidat.devient_id')
									   ->select('*','candidat.id as id')
									   ->first();
		$my_request=[];	
		if($candidat==NULL)
		{
			return redirect("/addcompte/form/".$candidat->id);
		}
		else
		{	
			$my_request[1]=$candidat->id;
			$my_request[2]=false;
			if($id[1]>0)
			{
				$my_request[2]=DB::table('ajustement')->where('ajustement.id',$id[1])
												  ->join('annee_academique','annee_academique.id','ajustement.annee_academique_id')
												  ->join('type_ajustement','type_ajustement.id','ajustement.type_ajustement_id')
												  ->select('*','ajustement.boursier_id as boursier_id','ajustement.id as id')
												  ->first();
			}
			$result=CustomFunction::getMandatementPage($my_request);
			return view("forms.addAjustement",$result);
		}
		
	}
	public function show($id)
	{
		$candidat=DB::table('ajustement')->where('ajustement.id',$id)
										 ->join('candidat','candidat.devient_id','ajustement.boursier_id')
										 ->select('candidat.id as id')
										 ->first();
		DB::table('ajustement')->where('id',$id)->delete();
		redirect('/ajustement/liste/'.$candidat->id);
	}
	
	public function edit($id, Request $request)
	{
		
		$my_request=DB::table('dossier')->where('dossier.candidat_id',$id)
										->where('dossier.annee_academique_id',$request->annee_academique_id)
										->Join('candidat','candidat.id','dossier.candidat_id');
																							
		$info_paiement=$my_request->first();

				
		if($info_paiement==NULL)
		{
			CustomFunction::previousPage("Pas d'inscription pour cette année"); 
		}
			
		$my_request=$my_request->join('ajustement', function($join){
									$join->on('ajustement.annee_academique_id','=','dossier.annee_academique_id');
									$join->on('ajustement.boursier_id','=','candidat.devient_id');
								})
								->where('raison',$request->raison)
								->first();

		$row=[						
				"boursier_id"=>$info_paiement->devient_id,
				"duree"=>$request->duree,
				"montant"=>$request->montant,
				"type_ajustement_id"=>$request->type_ajustement,
				"raison"=>$request->raison,
				"annee_academique_id"=>$info_paiement->annee_academique_id,
			];

		
		if($my_request==NULL && $request->ajustement_id<=0)
		{
			
			DB::table('ajustement')->insertGetId($row);
			
		}
		else if($request->ajustement_id>0)
		{
			DB::table('ajustement')->where('id',$request->ajustement_id)->update($row);
		}
		else
		{
			CustomFunction::previousPage("Paiement déjà effectué");
			
		}
		return redirect("/ajustement/liste/".$info_paiement->candidat_id);
	}
}
