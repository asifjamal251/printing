<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class MaterialInwardItem extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $fillable = ['id'];
    protected $table = 'material_inward_items';


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Material Inward Item')
        ->setDescriptionForEvent(fn(string $eventName) => "Material Inward Item has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
