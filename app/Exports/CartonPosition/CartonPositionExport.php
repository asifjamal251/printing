<?php

namespace App\Exports\CartonPosition;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;
use Maatwebsite\Excel\Concerns\Exportable;

class CartonPositionExport implements FromView
{
    use Exportable;

    private $stocks;
    private $client;

    public function __construct($stocks, $client)
    {
        $this->stocks = $stocks;
        $this->client = $client;
    }

    public function view(): View
    {
        return view('admin.excell.carton-position', [
            'stocks' => $this->stocks,
            'client' => $this->client,
        ]);
    }
}
