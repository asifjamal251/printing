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
<<<<<<< HEAD
    private $client;

    public function __construct($stocks, $client)
    {
        $this->stocks = $stocks;
        $this->client = $client;
=======

    public function __construct($stocks)
    {
        $this->stocks = $stocks;
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
    }

    public function view(): View
    {
        return view('admin.excell.carton-position', [
<<<<<<< HEAD
            'stocks' => $this->stocks,
            'client' => $this->client,
=======
            'stocks' =>$this->stocks,
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        ]);
    }
}
