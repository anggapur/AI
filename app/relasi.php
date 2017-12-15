<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class relasi extends Model
{
    //
    public function toSubject()
    {
    	return $this->belongsTo('App\subject','id','id_subject');
    }
    public function toPredikat()
    {
    	return $this->belongsTo('App\predikat','id','id_predikat');
    }
    public function toObject()
    {
    	return $this->belongsTo('App\objek','id','id_objek');
    }
}
