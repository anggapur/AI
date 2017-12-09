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
    	$objec = objek::where('kata','LIKE','%'.$param.'%')->get();//eksekusi dalam bentuk array
    	$tanya = question::where('kata','LIKE','%'.$param.'%')->first();//mengecek dalam  satu line
    	if(count($subjek)>0){
    		//echo ", pattern : ";
    		return 's';
    	}
    	else if(count($predic)>0){
    		//echo ", pattern : ";
    		return 'p';
    	}
    	else if(count($objec)>0){
    		//echo ", pattern : ";
    		return 'o';
    	}
    	else if(count($tanya)>0){
    		//echo ", pattern : ";
    		return 't';
    	}
    	else{
    		//echo ", pattern : ";
    		return 'k';
    	}
    	//return count($subjek).count($predic).count($objec);
    }

    
    public function dataId($param)
    {
    	$subjek = subject::where('nama','LIKE','%'.$param.'%')->get();
    	$predic = predikat::where('kata','LIKE','%'.$param.'%')->first();
    	$objec = objek::where('kata','LIKE','%'.$param.'%')->get();//eksekusi dalam bentuk array
    	$tanya = question::where('kata','LIKE','%'.$param.'%')->first();//mengecek dalam  satu line
    	if(count($subjek)>0){
    		return $subjek[0]->id;
    	}
    	else if(count($predic)>0){
    		return $predic->id;
    	}
    	else if(count($objec)>0){
    		return $objec[0]->id;
    	}
    	else if(count($tanya)>0){
    		return $tanya->id;
    	}
    	else{
    		return 'k';
    	}
    }

    public function dataSplit()
    {
    	$string = 'siapa menemukan ikan';
    	$pisah = explode(' ',$string);
    	foreach ($pisah as $key => $value) {
    		echo $value.', pattern : '.$this->dataSubject($value).', id : '.$this->dataId($value).'<br>';
    	}
    }
}
