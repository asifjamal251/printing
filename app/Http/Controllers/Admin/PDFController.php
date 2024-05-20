<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Billing;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use PDF;

class PDFController extends Controller{

    public function billing(Request $request, $id)
    {
        $billing = Billing::where('id', $id)->with(['client', 'billingItems'=>function($query){
            $query->with(['PO','POItem']);
        }])->first();


        $pdf = PDF::loadView('admin.pdf.billing', compact('billing'));

        return $pdf->download($billing->bill_no.'.pdf');
    }
}
