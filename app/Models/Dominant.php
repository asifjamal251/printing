<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dominant extends Model
{
   protected $fillable = [
	    'id', 'job_no', 'project_id','status',
	];

	public function project(){
    	return $this->hasOne(Project::class, 'id', 'project_id');
    }
}
