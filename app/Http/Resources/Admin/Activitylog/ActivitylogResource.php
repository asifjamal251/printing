<?php

namespace App\Http\Resources\Admin\Activitylog;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class ActivitylogResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    function eventColor($event, $desc){
        if($event == 'created'){
            return '<p class="text-info m-0">'.$desc.'</p>';
        }
        else if($event == 'updated'){
            return '<p class="text-warning m-0">'.$desc.'</p>';
        }
        else if($event == 'deleted'){
            return '<p class="text-danger m-0">'.$desc.'</p>';
        }
        else{
            return '<p class="text-dark m-0">'.$desc.'</p>';
        }
    }
    public function toArray($request)
    {
        return [
            'sn'=>++$request->start,
            'id'=>$this->id,
            'created_at'=>$this->created_at->format('d F, Y | H:i A'),
            'log_name'=>$this->log_name, 
            'description'=>$this->eventColor($this->event, $this->description), 
            'user2'=>$this->causer?$this->causer:'N/A', 
            'user'=>$this->causer?$this->causer->name.' | '.$this->causer->email:'N/A', 
        ];
    }
}
