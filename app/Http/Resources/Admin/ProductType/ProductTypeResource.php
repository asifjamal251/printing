<?php

namespace App\Http\Resources\Admin\ProductType;

use Illuminate\Http\Resources\Json\JsonResource;
class ProductTypeResource extends JsonResource
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
            'sn' => ++$request->start,
            'id' => $this->id,
            'name' => $this->type,
            'code' => $this->start_series,
            'created_at' => $this->created_at->format('d M Y'),
        ];
    }
}
