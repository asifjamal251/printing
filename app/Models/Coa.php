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
<<<<<<< HEAD
<<<<<<< HEAD
        'exp_date' => 'date',
        'mfg_date' => 'date',
=======
        'expiry_date' => 'datetime',
        'manufacturing_date' => 'datetime',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
        'expiry_date' => 'datetime',
        'manufacturing_date' => 'datetime',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
    ];

	public function COAItem(){
        return $this->hasMany(CoaItem::class,'coa_id','id');
    }
    public function coaItems()
    {
        return $this->hasMany(CoaItem::class);
    }

    protected static function boot(){
        parent::boot();

        static::creating(function ($coaNo) {
            $coa = static::orderBy('id', 'desc')->first();
            $nextNumber = $coa ? intval($coa->coa_no) + 1 : 1;
            $coaNo->coa_no = str_pad($nextNumber, 3, '0', STR_PAD_LEFT);
        });
    }
}
