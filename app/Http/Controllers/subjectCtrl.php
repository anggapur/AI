<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\subject;
use App\predikat;
use App\objek;
use App\format;
use App\question;
use App\relasi;
use App\command;
class subjectCtrl extends Controller
{    
    public $data = [];
    //Mengecek kesamaan
    public function similarity($param1,$param2){
        similar_text($param1, $param2, $percent); 
        return $percent;
    }
    //ke halaman index
    public function index(){
        return view('index');
    }
    public function pengolah(Request $request){
        //hilangkan putih alias spasi yang banyak
        $kalimat = $this->removeDoubleWhiteSpace($request->kalimat);
        //save command
        $this->insertToCommand($kalimat,'H');
        
        //cek apakah command ada
        if($this->commandIdentik($kalimat))
        {
            $this->cariSebelumnya($kalimat);
        }
        else
        {
            $this->formatBaku($kalimat);
        }

        //return data
        return $this->data;
    }
    public function cariSebelumnya($kalimat)
    {
        $action = format::where('state','uniq')->pluck('question')->toArray();
        $query = command::where('command_words','!=',$kalimat)
                ->whereNotIn('command_words',$action)
                ->where('command_words','!=','NONE')
                ->orderBy('id','DESC')->get();
        $this->data['id'] = $query[0]->id;
        //cari dengan id sekian    
        //identik tu responsenya apa
        $q = format::where('question','LIKE',$kalimat)->get();  
        //pakai format baku
        $this->formatBaku2($query[0]->command_words,$q[0]->question);
    }
    public function formatBaku2($kalimat,$q){
        //just doit
        $this->data['kalimatAsli'] = $this->cekKalimatAsli($kalimat);
        $this->data['pattern'] = $this->gabungArray($this->dataPattern($kalimat));
        $this->cekDanGabung();
        $this->data['idPattern'] = $this->gabungArray($this->dataIdPattern($this->data['kalimatAslis']));
        // //cek pattern        
        $this->data['idPatternDasar'] = $this->idPatternDasar($this->data['idPattern'],$this->data['patternBaru']);
        $this->data['diketahui'] = $this->buatYangDiketahui($this->data['idPatternDasar'],$this->data['patternBaru']);        
        // // //splittig and save
        $this->data['polaJawaban'] = $this->polaJawaban($q);
        $this->data['jawabanAkhir'] = $this->jawabanAkhir($this->data['polaJawaban'],$this->data['diketahui']);
        // //insert answer
        // $this->insertToCommand($this->data['jawabanAkhir'],'C');            
    }
    public function commandIdentik($kalimat)
    {
        $query = format::where('question','LIKE',$kalimat)->get();
        if(count($query) > 0)
            return TRUE;
        else 
            return FALSE;
    }

    public function formatBaku($kalimat){
        //just doit
        $this->data['kalimatAsli'] = $this->cekKalimatAsli($kalimat);
        $this->data['pattern'] = $this->gabungArray($this->dataPattern($kalimat));
        $this->cekDanGabung();
        $this->data['idPattern'] = $this->gabungArray($this->dataIdPattern($this->data['kalimatAslis']));

        //cek pattern
        

        $this->data['idPatternDasar'] = $this->idPatternDasar($this->data['idPattern'],$this->data['patternBaru']);
        $this->data['diketahui'] = $this->buatYangDiketahui($this->data['idPatternDasar'],$this->data['patternBaru']);        
        // //splittig and save
        $this->data['polaJawaban'] = $this->polaJawaban($this->data['patternBaru']);
        $this->data['jawabanAkhir'] = $this->jawabanAkhir($this->data['polaJawaban'],$this->data['diketahui']);
        //insert answer
        $this->insertToCommand($this->data['jawabanAkhir'],'C');
        //        
    }

    public function insertToCommand($command,$state){
        $data['command_words'] = $command;
        $data['state'] = $state;
        $query = command::create($data);
    }

    public function cekKalimatAsli($kalimat){
        $kal = explode(" ",$kalimat);
        $val = "";
        foreach ($kal as $key => $value) {
            $val.=$value." ";
        }
        return $kal;
    }

    public function cekDanGabung()
    {
        $pattern = $this->data['pattern'];        
        $pattern = explode(" ",$pattern);
        $panjang = count($pattern);

        $val = [];
        $kalimat = "";
        $i = 0;
        for($a = 0; $a < $panjang ; $a++)
        {
               
                $val[$i]=$pattern[$a]; 

                if($a < $panjang -1)
                {
                    if($pattern[$a+1] !== $pattern[$a])
                    {
                        $this->data['kalimatAslis'][$i] = $this->data['kalimatAsli'][$a];
                                           
                    }
                    else
                    {
                        $this->data['kalimatAslis'][$i] = $this->data['kalimatAsli'][$a]." ".$this->data['kalimatAsli'][$a+1];
                        
                        $a++;
                    }
                }
                else
                {
                    $this->data['kalimatAslis'][$i] = $this->data['kalimatAsli'][$a];
                }
            $i++;
            
        }

        $dam = "";

        $this->data['patternBaru'] = $this->gabungArray($val);

    }

    public function removeDoubleWhiteSpace($param)
    {
        $kalimat = preg_replace('/\s+/', ' ',$param);
        return $kalimat;
    }
    public function jawabanAkhir($polaJawaban,$diketahui){
        $polaJawaban = explode(" ",$polaJawaban);
        $arrayRecog = ['s','p','o'];
        $jawab = [];
        //cari jawaban dulu
        $parameterDiketahui = $this->susunDiketahui($diketahui);
        $query = relasi::leftJoin('subjects','relasis.id_subject','=','subjects.id')
                    ->leftJoin('objeks','relasis.id_objek','=','objeks.id')
                    ->leftJoin('predikats','relasis.id_predikat','=','predikats.id')
                    ->where($parameterDiketahui)
                    ->select(
                        'relasis.*',
                        'subjects.nama as namaSubject',
                        'subjects.detail_subject as detail_subject',
                        'objeks.kata as kataObjek',
                        'objeks.detail_objek as detail_objek',
                        'predikats.kata as kataPredikat'
                    )
                    ->first();
        //disusun
        $i = 0;
        foreach ($polaJawaban as $key => $value) {
            if($value == "s")
            {
                $jawab[$i]=$query->namaSubject;
            }
            else if($value == "p")
            {
                //cek apakah sebelumnya dia merupakan subject atau object
                $myPredikat = $this->tentukanBentukPredikat($query->kataPredikat,$polaJawaban[$key-1]);
                $jawab[$i]=$myPredikat;
            }
            else if($value == "o")
            {
                $jawab[$i]=$query->kataObjek;
            }
            else if($value == "kw")
            {
                $jawab[$i]=$query->keterangan_waktu;
            }
            else if($value == "kt")
            {
                $jawab[$i]=$query->keterangan_tempat;
            }
            else if($value == "kp")
            {
                $jawab[$i]=$query->keterangan_proses;
            }
            else if($value == "ka")
            {
                $jawab[$i]=$query->keterangan_alasan;
            }
            else if($value == "do")
            {
                $jawab[$i]=$query->detail_objek;
            }
            else if($value == "do1")
            {
                // hanya kalimat terdepan
                $datas = explode(".",$query->detail_objek);
                $jawab[$i]=$datas[0];
            }
            else if($value == "ds")
            {
                $jawab[$i]=$query->detail_subject;
            }
            else if($value == "ds1")
            {
                //hanya kalimat terdepan
                $datas =  explode(".",$query->detail_subject);
                $jawab[$i]=$datas[0];
            }
            else 
            {
                $jawab[$i]=$value;
            }
            $i++;
        }
        return $this->gabungArray($jawab);
    }   

    public function tentukanBentukPredikat($predikat,$sebelum)
    {
        //dapatkan id dari kata dasar
        $query = predikat::where('kata',$predikat)->first();
        $dataWhere['id_parent'] = $query->id;
        if($sebelum == "s")
        {
            $dataWhere['jenis'] = "aktif";            
        }
        else if($sebelum == "o")
        {
            $dataWhere['jenis'] = "pasif";       
        }
        $query = predikat::where($dataWhere)->first();
        return $query->kata;
    }
    public function susunDiketahui($param){
        $datas = [];
        foreach ($param as $key => $value) {
            if($key == "s")
                $datas['id_subject'] = $value;
            else if($key == "p")
                $datas['id_predikat'] = $value;
            else if($key == "o")
                $datas['id_objek'] = $value;
        }
        return $datas;
    }
    public function buatYangDiketahui($idPatternDasar,$pattern)
    {
        $datas = [];
        $pattern = explode(" ",$pattern);        
        $idPatternDasar = explode(" ",$idPatternDasar);
        $arrayRecog = ['s','p','o'];
        foreach ($pattern as $key => $value) {
            if(in_array($value,$arrayRecog))
            {
                $datas[$value] = $idPatternDasar[$key];
            }
        }
        return $datas;
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
        if(count($query) > 0)
            return $query->answer;
        else
            return "NONE";
    }

    public function gabungArray($param){
        $datas = "";
        $ignorePattern = ['?','!'];
        $jums = count($param);
        $i = 0;
        foreach ($param as $key => $value) {            
            //
            if(!in_array($value, $ignorePattern))
            {

                if($i < $jums-1)
                    $datas.=$value." ";
                else
                    $datas.=$value;
            }
            $i++;
        }
        return $datas;
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
        $ignorePattern = ['?','!'];
    	if(count($subjek)>0){
    		return $subjek[0]->id;
    	}
    	else if(count($predic)>0){
    		return $predic->id;
    	}
    	else if(count($objec)>0){
    		$pil = $objec[0]->id;            
            $percent = 0;
            if(count($objec) > 1)
            {
                foreach ($objec as $key => $value) {
                    if($percent < $this->similarity($param,$value->kata))
                    {
                        $percent = $this->similarity($param,$value->kata);
                        $pil = $value->id;
                    }
                }
            }
            return $pil;
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
        
        $pisah = $param;
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
