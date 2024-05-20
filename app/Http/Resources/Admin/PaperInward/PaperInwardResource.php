<?php

namespace App\Http\Resources\Admin\PaperInward;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class PaperInwardResource extends JsonResource
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
            'dye_no'=>$this->dye_no, 
            'length'=>$this->length, 
            'width'=>$this->width, 
            'height'=>$this->height, 
            'ups'=>$this->ups, 
            'carton_size'=>$this->carton_size, 
            'type'=>$this->type?'Automatic':'Menual', 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
