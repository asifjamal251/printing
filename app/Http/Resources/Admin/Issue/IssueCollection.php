<?php

namespace App\Http\Resources\Admin\Issue;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Http\Resources\Admin\Issue\IssueResource;
class IssueCollection extends ResourceCollection
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
            'data' => IssueResource::collection($this->collection),
            'recordsTotal' => $request->recordsTotal,
            'recordsFiltered' => $request->recordsTotal,
            'length' => $request->lenght,
        ];
    }
}
