<?php

namespace App\Http\Resources\Admin\City;

use Illuminate\Http\Resources\Json\JsonResource;
class CityResource extends JsonResource
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
            'state' => $this->state->name,
            'district' => $this->district->name,
            'name' => $this->name,
            'created_at' => $this->created_at->format('d M Y'),
        ];
    }
}
