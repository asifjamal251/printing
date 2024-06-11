<?php

namespace App\Http\Resources\Admin\DyeDetails;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class DyeDetailsResource extends JsonResource
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
            'dye_lock'=>$this->dye_lock, 
            'carton_size'=>$this->carton_size, 
            'sheet_size'=>$this->sheet_size, 
            'type'=>$this->automatic?'Automatic':'Manual', 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
