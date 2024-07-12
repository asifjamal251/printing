<?php

namespace App\Http\Resources\Admin\Carton;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class CartonResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    
    public function toArray($request)
    {
        return [
            'sn'=>++$request->start,
            'id'=>$this->id,
            'client'=>$this->client->company_name, 
            'carton'=>$this->carton_name, 
            'paper_type'=>$this->paperType->type, 
            'size'=>$this->carton_size, 
            'art_wprk'=>$this->art_work, 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
