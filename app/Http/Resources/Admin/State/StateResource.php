<?php

namespace App\Http\Resources\Admin\State;

use Illuminate\Http\Resources\Json\JsonResource;
class StateResource extends JsonResource
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
            'country' => $this->country->name,
            'name' => $this->name,
            'created_at' => $this->created_at->format('d M Y'),
        ];
    }
}
