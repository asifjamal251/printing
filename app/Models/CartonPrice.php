<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;

class CartonPrice extends Model
{

    use HasFactory;
    protected $fillable = ['id', 'carton_id', 'price', 'quantity'];
    protected $table = 'carton_prices';

}
