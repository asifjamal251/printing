<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coa extends Model
{
    protected $fillable = [
	    'id', 'billing_item_id',
	];
	protected $casts = [
        'expiry_date' => 'datetime',
        'manufacturing_date' => 'datetime',
    ];

	public function COAItem(){
        return $this->hasMany(CoaItem::class,'coa_id','id');
    }
    public function coaItems()
    {
        return $this->hasMany(CoaItem::class);
    }
}
