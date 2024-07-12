<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Address extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;

    public function media(){
        return $this->hasOne(Media::class,'id','media_id');
    }
    public function city(){
        return $this->hasOne(City::class,'id','city_id');
    }

    public function state(){
        return $this->hasOne(State::class,'id','state_id');
    }


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Address')
        ->setDescriptionForEvent(fn(string $eventName) => "Address has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
