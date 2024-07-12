<?php

namespace App\Http\Resources\Admin\Designing;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Http\Resources\Admin\Designing\DesigningResource;
class DesigningCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'data' => DesigningResource::collection($this->collection),
            'recordsTotal' => $request->recordsTotal,
            'recordsFiltered' => $request->recordsTotal,
            'length' => $request->lenght,
        ];
    }
}
