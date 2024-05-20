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
        'cutting',
        'printing',
        'chemical_coating',
        'embossing',
        'leafing',
        'dye_cutting',
        'pasting',
    ];
    protected $table = 'job_card_users';

    public function printingUser(){
        return $this->hasOne(Admin::class,'id','printing');
    }

    public function cuttingUser(){
        return $this->hasOne(Admin::class,'id','cutting');
    }

    public function coatingUser(){
        return $this->hasOne(Admin::class,'id','coating');
    }

    public function embossingUser(){
        return $this->hasOne(Admin::class,'id','embossing');
    }

    public function leafingUser(){
        return $this->hasOne(Admin::class,'id','leafing');
    }

    public function dyeCuttingUser(){
        return $this->hasOne(Admin::class,'id','dye_cutting');
    }

    public function pastingUser(){
        return $this->hasOne(Admin::class,'id','pasting');
    }
    
}
