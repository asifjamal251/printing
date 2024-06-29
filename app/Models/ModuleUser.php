<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ModuleUser extends Model
{
    protected $fillable = [
	    'id', 'name','module_id', 'module_user_id', 'job_card_id',
	];

	public function module(){
    	return $this->hasOne(Module::class, 'id', 'module_id');
    }
}
