<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JobCardUser extends Model
{
    use HasFactory;
    protected $fillable = [
        'id', 
        'job_card_id', 
        'module_id', 
        'module_user_id'
    ];
    protected $table = 'job_card_users';

    public function module(){
        return $this->hasOne(Module::class, 'id', 'module_id');
    }

    public function moduleUser(){
        return $this->hasOne(ModuleUser::class,'id','module_user_id');
    }
    
}
