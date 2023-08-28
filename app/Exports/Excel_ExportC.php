<?php

namespace App\Exports;

//use App\candidat;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;

class Excel_ExportC implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    
    public function collection()
    {
        return candidat::all();
    }
	*/
	public function view($result): View
	{
		return view("tables.GenerateWordDocment",$result);
	}
}
