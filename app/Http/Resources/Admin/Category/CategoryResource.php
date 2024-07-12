<?php

namespace App\Http\Resources\Admin\Category;

use Illuminate\Http\Resources\Json\JsonResource;
class CategoryResource extends JsonResource
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
            'category' => $this->subCategory ? $this->subCategory->name : $this->name,
            'subcategory' => $this->subCategory ? $this->name : null,
            'created_at' => $this->created_at->format('d M Y'),
        ];
    }
}
