<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\predikat;
class subjectCtrl extends Controller
{
    //
    public function dataSubject($param)
    {
    	$query = predikat::where('kata','LIKE','%'.$param.'%')->get();
    	return $query;
    }
}
