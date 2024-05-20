<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JobCardTimer extends Model
{
    use HasFactory;
    protected $fillable = ['job_card_id', 'machine', 'started_at', 'ended_at', 'elapsed_time', 'paused_time'];
    protected $table = 'job_card_timers';
    protected $casts = [
        'started_at' => 'datetime',
        'ended_at' => 'datetime',
    ];

}
