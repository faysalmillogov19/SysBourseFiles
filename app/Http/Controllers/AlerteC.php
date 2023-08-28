<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Custom\CustomFunction;

class AlerteC extends Controller
{
    public function index()
	{
		$my_request=DB::table("alerte")->where('lu',0)->orderBy('id','desc')
										->get();
		$result=CustomFunction::getMandatementPage($my_request);
		return view('tables.alertes',$result);
	}
	public function show($id)
	{
		$alerte= DB::table('alerte')->where('id',$id)->update([
			
					"lu"=>1,					
			   ]);
		return redirect('alertes')->with("Marqué comme Lu");
	}
	public function deleteAlerte($id)
	{
		$alerte= DB::table('alerte')->where('id',$id)->delete();
		return redirect('alertes')->with("Marqué comme Lu");
	}
}
