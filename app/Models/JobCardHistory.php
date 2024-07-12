<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JobCardHistory extends Model
{
    use HasFactory;
    protected $fillable = ['id', 'job_card_id', 'machine'];
    protected $table = 'job_card_histories';
    protected $casts = [
        'job_card_in' => 'datetime',
        'job_card_out' => 'datetime',
    ];
}
