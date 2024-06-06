<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SpotUv extends Model
{
   protected $fillable = [
	    'id', 'job_card_id','status_id','user_id'
	];
	protected $table = 'spot_uv';

	public function jobCard(){
    	return $this->hasOne(JobCard::class, 'id', 'job_card_id');
    }

    public function user(){
    	return $this->hasOne(ModuleUser::class, 'id', 'user_id');
    }
}
