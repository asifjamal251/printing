<?php

namespace App\Http\Resources\Admin\Billing;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Http\Resources\Admin\Billing\BillingResource;
class BillingCollection extends ResourceCollection
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
            'data' => BillingResource::collection($this->collection),
            'recordsTotal' => $request->recordsTotal,
            'recordsFiltered' => $request->recordsTotal,
            'length' => $request->lenght,
        ];
    }
}
