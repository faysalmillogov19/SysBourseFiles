<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

class Type_element_bourseC extends Controller
{
    public function index()
	{
		$my_request=DB::table('type_element_bourse')->get();
		$result=CustomFunction::getMandatementPage($my_request);
		return view("tables.type_element_bourse",$result);
	}
	public function form($id)
	{
		$my_request=false;
		if($id>0)
		{
			$my_request=DB::table('type_element_bourse')->where('id',$id)->first();
		}
		$result=CustomFunction::getMandatementPage($my_request);
		return view("forms.addType_element_bourse",$result);
	}
	public function show($id)
	{
		DB::table('type_element_bourse')->where('id',$id)->delete();
		return redirect("/type_element_bourse");
	}
	public function edit($id,Request $request)
	{
		$coef= CustomFunction::int2boolean($request->coef_applicable);
		$etat_element=CustomFunction::int2boolean($request->etat_element);
		$row=[
			'code_element'=>$request->code_element,
			'libelle_element'=>$request->libelle_element,
			'periodicite'=>$request->periodicite,
			'etat_element'=> $etat_element,//b'1',
			'coef_applicable'=>$coef,// b'1',
		];
		if($id >0)
		{
			DB::table('type_element_bourse')->where('id',$id)->update($row);
		}
		else 
		{
			DB::table('type_element_bourse')->insertGetId($row);
		}
		return redirect("/type_element_bourse");
	}
}
