<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChemicalCoating extends Model
{
   protected $fillable = [
	    'id', 'job_card_id','status_id',
	];

	public function jobCard(){
    	return $this->hasOne(JobCard::class, 'id', 'job_card_id');
    }

    public function user(){
    	return $this->hasOne(ModuleUser::class, 'id', 'user_id');
    }
}
