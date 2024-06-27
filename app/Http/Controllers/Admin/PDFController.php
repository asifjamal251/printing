<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Billing;
use App\Models\Issue;
use App\Models\MaterialInward;
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


    public function materialInward(Request $request, $id){
        $material =  MaterialInward::where('id', $id)->with(['vendor', 'materialItems'=>function($query){
            $query->with(['product', 'unit']);
        }])->first();
        $pdf = PDF::loadView('admin.pdf.material-inward', compact('material'));
        return $pdf->download('material-inward-'.$material->receipt_no.'.pdf');
    }

    public function issue(Request $request, $id){
        $material =  Issue::where('id', $id)->with(['user', 'issueItems'=>function($query){
            $query->with(['product', 'issueFor']);
        }])->first();
        $pdf = PDF::loadView('admin.pdf.issue', compact('material'));
        return $pdf->download('issue-'.$material->issue_no.'.pdf');
    }
}
