<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;

class Carton extends Model
{

    use HasFactory;
    protected $fillable = ['id', 'client_id', 'carton_name', 'carton_size'];
    protected $table = 'cartons';

    public function client(){
        return $this->hasOne(Client::class,'id','client_id');
    }

}
