<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\subject;
use App\predikat;
use App\objek;
use App\format;
use App\question;
use App\relasi;
class subjectCtrl extends Controller
{

    public function index(){
        return view('index');
    }
    public function pengolah(Request $request){
        $kalimat = $request->kalimat;
        $data['pattern'] = $this->gabungArray($this->dataPattern($kalimat));
        $data['idPattern'] = $this->gabungArray($this->dataIdPattern($kalimat));

        $data['idPatternDasar'] = $this->idPatternDasar($data['idPattern'],$data['pattern']);
        $data['diketahui'] = $this->buatYangDiketahui($data['idPatternDasar'],$data['pattern']);        
        //splittig and save
        $data['polaJawaban'] = $this->polaJawaban($data['pattern']);
        $data['jawabanAkhir'] = $this->jawabanAkhir($data['polaJawaban'],$data['diketahui']);
        return $data;
    }

    public function jawabanAkhir($polaJawaban,$diketahui){
        $polaJawaban = explode(" ",$polaJawaban);
        $arrayRecog = ['s','p','o'];
        $jawab = "";
        //cari jawaban dulu
        $parameterDiketahui = $this->susunDiketahui($diketahui);
        $query = relasi::leftJoin('subjects','relasis.id_subject','=','subjects.id')
                    ->leftJoin('objeks','relasis.id_objek','=','objeks.id')
                    ->leftJoin('predikats','relasis.id_predikat','=','predikats.id')
                    ->where($parameterDiketahui)
                    ->select(
                        'relasis.*',
                        'subjects.nama as namaSubject',
                        'objeks.kata as kataObjek',
                        'predikats.kata as kataPredikat'
                    )
                    ->first();
        //disusun
        foreach ($polaJawaban as $key => $value) {
            if($value == "s")
                $jawab.=$query->namaSubject." ";
            else if($value == "p")
                $jawab.=$query->kataPredikat." ";
            else if($value == "o")
                $jawab.=$query->kataObjek." ";
            else 
                $jawab.=$value." ";
        }
        return $jawab;
    }   

    public function susunDiketahui($param){
        $data = [];
        foreach ($param as $key => $value) {
            if($key == "s")
                $data['id_subject'] = $value;
            else if($key == "p")
                $data['id_predikat'] = $value;
            else if($key == "o")
                $data['id_objek'] = $value;
        }
        return $data;
    }
    public function buatYangDiketahui($idPatternDasar,$pattern)
    {
        $data = [];
        $pattern = explode(" ",$pattern);        
        $idPatternDasar = explode(" ",$idPatternDasar);
        $arrayRecog = ['s','p','o'];
        foreach ($pattern as $key => $value) {
            if(in_array($value,$arrayRecog))
            {
                $data[$value] = $idPatternDasar[$key];
            }
        }
        return $data;
    }
    public function idPatternDasar($patternId,$pattern)
    {
        $polaId = "";
        $patternId = explode(" ",$patternId);
        $pattern = explode(" ",$pattern);
        foreach ($pattern as $key => $value) {
            if($value == "p")
            {
                //cari id dari kata dasarnya
                $query = predikat::where('id',$patternId[$key])->first();
                $polaId.=$query->id_parent." ";
            }
            else
            {
                $polaId.=$patternId[$key]." ";
            }
        }
        return $polaId;

    }

    public function polaJawaban($param){
        $query = format::where('question','LIKE','%'.$param.'%')->first();
        return $query->answer;
    }

    public function gabungArray($param){
        $data = "";
        foreach ($param as $key => $value) {
            $data.=$value." ";
        }
        return $data;
    }
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
    		return $tanya->pattern;
    	}
    	else{
    		//echo ", pattern : ";
    		return $param;
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
    		return '-';
    	}
    }

    public function dataPattern($param)
    {
    	$string = $param;
    	$pisah = explode(' ',$string);
        $pattern = [];
        $i=0;
    	foreach ($pisah as $key => $value) {
    		// echo $value.', pattern : '.$this->dataSubject($value).', id : '.$this->dataId($value).'<br>';
            // $pattern.=$this->dataSubject($value)." ";
            $pattern[$i] = $this->dataSubject($value);
            $i++;
    	}
        return $pattern;
    }
    public function dataIdPattern($param)
    {
        $string = $param;
        $pisah = explode(' ',$string);
        $pattern = [];
        $i=0;
        foreach ($pisah as $key => $value) {
            // echo $value.', pattern : '.$this->dataSubject($value).', id : '.$this->dataId($value).'<br>';
            // $pattern.=$this->dataSubject($value)." ";
            $pattern[$i] = $this->dataId($value);
            $i++;
        }
        return $pattern;
    }
}
