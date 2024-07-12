<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cutting extends Model
{
	protected $dates = [
	  	'po_date',
	  	'user_id',
	  	'created_at',
	  	'updated_at'
	];

	protected $fillable = [
	    'id', 'job_card_id','status_id','metalic_status'
	];

	public function jobCard(){
    	return $this->hasOne(JobCard::class, 'id', 'job_card_id');
    }

    public function user(){
    	return $this->hasOne(ModuleUser::class, 'id', 'user_id');
    }


}
