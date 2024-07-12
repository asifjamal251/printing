<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;
use App\Models\PurchaseOrder;

class UniquePoNumber implements Rule
{
    protected $clientId;
    protected $currentId;

    public function __construct($clientId, $currentId = null)
    {
        $this->clientId = $clientId;
        $this->currentId = $currentId;
    }

    public function passes($attribute, $value)
    {
        $query = PurchaseOrder::where('client_id', $this->clientId)
                              ->where('po_no', $value);

        if ($this->currentId) {
            $query->where('id', '!=', $this->currentId);
        }

        return !$query->exists();
    }

    public function message()
    {
        return 'The purchase order number must be unique for this client.';
    }
}
