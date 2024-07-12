<?php

namespace App\Exports\ProductLedger;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;
use Maatwebsite\Excel\Concerns\Exportable;

class ProductLedgerExport implements FromView
{
    use Exportable;

    private $stocks;

    public function __construct($stocks)
    {
        $this->stocks = $stocks;
    }

    public function view(): View
    {
        return view('admin.excell.product-ledger', [
            'stocks' =>$this->stocks,
        ]);
    }
}
