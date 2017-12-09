<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\subject;
use App\predikat;
use App\objek;
use App\question;
class subjectCtrl extends Controller
{
    //
    public function dataSubject($param)
    {
    	$subjek = subject::where('nama','LIKE','%'.$param.'%')->get();
    	$predic = predikat::where('kata','LIKE','%'.$param.'%')->get();
    	$objec = objek::where('kata','LIKE','%'.$param.'%')->get();
    	$tanya = question::where('kata','LIKE','%'.$param.'%')->first();
    	if(count($subjek)>0){
    		return ': s';
    	}
    	else if(count($predic)>0){
    		return ': p';
    	}
    	else if(count($objec)>0){
    		return ': o';
    	}
    	else if(count($tanya)>0){
    		return $tanya->pattern;
    	}
    	else{
    		return ': k';
    	}
    	//return count($subjek).count($predic).count($objec);
    }

    public function dataSplit()
    {
    	$string = 'siapa menemukan ikan';
    	$pisah = explode(' ',$string);
    	foreach ($pisah as $key => $value) {
    		echo $value.$this->dataSubject($value).'<br>';
    	}
    }
}
