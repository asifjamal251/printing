<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class District extends Model
{

   public function state(){
      return $this->hasOne(State::class,'id','state_id');
   }
}
