<?php

namespace App\Http\Resources\Admin\ModuleUser;

use Illuminate\Http\Resources\Json\JsonResource;
class ModuleUserResource extends JsonResource
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
            'name' => $this->name,
            'module' => $this->module->name,
            'status' => $this->status,
            'created_at' => $this->created_at->format('d M Y'),
        ];
    }
}
