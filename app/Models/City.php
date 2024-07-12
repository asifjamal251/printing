<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class City extends Model{

   	public function state(){
      return $this->hasOne(State::class,'id','state_id');
    }

    public function district(){
      return $this->hasOne(District::class,'id','district_id');
    }
}
