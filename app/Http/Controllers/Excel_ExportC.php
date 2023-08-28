<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\Excel_ExportC;
use Maatwebsite\Excel\Facades\Excel;

class Excel_ExportC extends Controller
{
    public function export() 
	{
			return Excel::download(new DisneyplusExport, 'disney.xlsx');
	}
}
