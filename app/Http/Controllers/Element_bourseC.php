<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

class Element_bourseC extends Controller
{
    public function index()
	{
		$my_request=DB::table('element_bourse')->join('niveau_etude','niveau_etude.id','element_bourse.niveau_etude_id')
											   ->join('type_element_bourse','type_element_bourse.id','element_bourse.type_element_bourse_id')
											   ->join('bourse','bourse.id','element_bourse.bourse_id')
											   ->select('*','element_bourse.id as id')
											  ->get();
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.element_bourse",$result);
	}
	public function form($id)
	{
		$my_request=false;
		if($id>0)
		{
			$my_request=DB::table('element_bourse')->where('element_bourse.id',$id)
													->join('niveau_etude','niveau_etude.id','element_bourse.niveau_etude_id')
													->join('type_element_bourse','type_element_bourse.id','element_bourse.type_element_bourse_id')
													->join('bourse','bourse.id','element_bourse.bourse_id')
													->select('*','element_bourse.id as id')
													->first();
		}
		$result=CustomFunction::getMandatementPage($my_request);
		return view("forms.addElement_bourse",$result);
	}
	public function show($id)
	{
		DB::table('element_bourse')->where('id',$id)->delete();
		return redirect('/element_bourse');
	}
	public function edit($id, Request $request)
	{
		$element=DB::table('element_bourse')->where('type_element_bourse_id',$request->type_element_bourse)
											->where('niveau_etude_id',$request->niveau_etude)
											->where('bourse_id',$request->bourse)
											->select('*','element_bourse.id as id')
											->first();
		
		
		$row=[
			'type_element_bourse_id'=>$request->type_element_bourse,
			'niveau_etude_id'=>$request->niveau_etude,
			'bourse_id'=>$request->bourse,
			'nombre'=>$request->nombre,
			'montant'=>$request->montant,
			'date_debut_validite'=>$request->debut,
			'date_fin_validite'=>$request->fin,
		];
		if($id<=0 && $element)
		{
			CustomFunction::previousPage("Cet élement existe déjà");
		}
		else if($id<=0)
		{
			DB::table('element_bourse')->insert($row);
			return redirect('/element_bourse');
		}
		
		if($element && $id>0)
		{
			$exist=CustomFunction::equal($element->id,$id);
			if($exist)
				DB::table('element_bourse')->where('id',$id)->update($row);
			else
				CustomFunction::previousPage("Cet element ne peut être modifié car existe déjà");
		}
		else if($id>0)
		{
			DB::table('element_bourse')->where('id',$id)->update($row);
		}
		
		return redirect("/element_bourse");
	}
}
