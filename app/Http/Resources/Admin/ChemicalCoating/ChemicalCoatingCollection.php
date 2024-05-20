<?php

namespace App\Http\Resources\Admin\ChemicalCoating;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Http\Resources\Admin\ChemicalCoating\ChemicalCoatingResource;
class ChemicalCoatingCollection extends ResourceCollection
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
            'data' => ChemicalCoatingResource::collection($this->collection),
            'recordsTotal' => $request->recordsTotal,
            'recordsFiltered' => $request->recordsTotal,
            'length' => $request->lenght,
        ];
    }
}
