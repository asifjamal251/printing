<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CoatingMachine extends Model
{
    use HasFactory;

    public function user(){
    	return $this->hasOne(ModuleUser::class, 'id', 'user_id');
    }
}
