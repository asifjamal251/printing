<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'id', 'parent',
    ];

    public function subCategory(){
        return $this->hasOne(Category::class,'id','parent');
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Category')
        ->setDescriptionForEvent(fn(string $eventName) => "Client has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
