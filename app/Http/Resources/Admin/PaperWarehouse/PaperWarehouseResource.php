<?php

namespace App\Http\Resources\Admin\PaperWarehouse;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class PaperWarehouseResource extends JsonResource
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
            'paper_stock'=>$this->paper_stock, 
            'sheets'=>$this->sheets, 
        ];
    }
}
