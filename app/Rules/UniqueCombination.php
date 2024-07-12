<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;
use Illuminate\Support\Facades\DB;

class UniqueCombination implements Rule
{
    protected $table;
    protected $fields;
    protected $ignoreId;

    public function __construct($table, $fields, $ignoreId = null)
    {
        $this->table = $table;
        $this->fields = $fields;
        $this->ignoreId = $ignoreId;
    }

    public function passes($attribute, $value)
    {
        $query = DB::table($this->table);

        foreach ($this->fields as $field => $fieldValue) {
            $query->where($field, $fieldValue);
        }

        if (!is_null($this->ignoreId)) {
            $query->where('id', '!=', $this->ignoreId);
        }

        return $query->doesntExist();
    }

    public function message()
    {
        return 'The combination of these fields already exists in the database.';
    }
}
