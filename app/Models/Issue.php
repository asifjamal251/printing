<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Issue extends Model
{
    protected $fillable = [
	    'id', 'issue_at'
	];

    public function issueItems(){
        return $this->hasMany(IssueItem::class,'issue_id','id');
    }

    public function user(){
        return $this->hasOne(Admin::class,'id','user_id');
    }


    protected static function boot()
    {
        parent::boot();

        static::creating(function ($isseuNo) {
            $isseuNo->issue_no = 'ISN' . static::generateSerialNumber();
        });
    }

    protected static function generateSerialNumber()
    {
        return str_pad(static::max('id') + 1, 4, '0', STR_PAD_LEFT);
    }
}
