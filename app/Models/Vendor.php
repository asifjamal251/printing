<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Vendor extends Model
{
    use HasFactory,SoftDeletes;

    public function media(){
        return $this->hasOne(Media::class,'id','media_id');
    }



    public function state(){
        return $this->hasOne(State::class,'id','state_id');
    }

    public function district(){
        return $this->hasOne(District::class,'id','district_id');
    }

    public function city(){
        return $this->hasOne(City::class,'id','city_id');
    }
}
