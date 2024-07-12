<?php

namespace App\Http\Controllers\Admin;

use App\Exports\CartonPosition\CartonPositionExport;
use App\Exports\ProductLedger\ProductLedgerExport;
use App\Exports\ProductStock\OtherProductStockExport;
use App\Exports\ProductStock\ProductStockExport;
use App\Http\Controllers\Controller;
<<<<<<< HEAD
use App\Models\Client;
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
use App\Models\Product;
use App\Models\PurchaseOrder;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel; 

class ExcelController extends Controller
{
    public function productStock(Request $request)
    {
        
        $this->validate($request, [
            'product_type' => 'required',
        ]);

        if ($request->product_type == 1) {
            if ($request->has('paper_type') && $request->paper_type != null) {
                $query = Product::where('paper_type', $request->paper_type)->with(['category']);
            } else{
                $query = Product::where('type', 1)->with(['category']);
            }
            $stocks = $query->get();
            $export = new ProductStockExport($stocks);
        } else {
            $query = Product::with(['category']);
            $stocks = $query->get();
            $export = new OtherProductStockExport($stocks);
        }

        Excel::store($export, 'excell-download/product-stock.xlsx');
        return response()->json(['filename' => config('printing.media_url') . 'excell-download/product-stock.xlsx']);


    }

    

    public function productLedger(Request $request)
    {
        $now = Carbon::now();
        $currentMonth = $now->month;
        $currentYear = $now->year;
        $previousMonth = $now->subMonth()->month;

        $stocks = Transaction::where('product_id', $request->id)->with('product')->whereYear('created_at', $currentYear)->get();

        $export = new ProductLedgerExport($stocks);
        Excel::store(new ProductLedgerExport($stocks), 'excell-download/product-ledger.xlsx');
        return response()->json(['filename' => config('printing.media_url').'excell-download/product-ledger.xlsx']);
    }

    public function cartonPosition(Request $request)
    {
<<<<<<< HEAD
        $this->validate($request, [
            'client' => 'required',
        ]);
        $todayDate = Carbon::now()->format('Y-m-d');
        $startDate = $todayDate;
        $endDate = $todayDate;
        $getDate = request()->input('datefilter');

        if ($getDate != '') {
            $filterDate = explode(' - ', $getDate);
            $startDate = Carbon::parse($filterDate[0])->format('Y-m-d');
            $endDate = Carbon::parse($filterDate[1])->format('Y-m-d');
        }

        $stocks = PurchaseOrder::where(['client_id'=>$request->client])->whereBetween('po_date', [$startDate, $endDate])->with(['purchaseOrderItems'=>function($query){
=======
        $stocks = PurchaseOrder::where(['client_id'=>$request->client])->with(['purchaseOrderItems'=>function($query){
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
           $query->with(['jobCardItems'=>function($query){
                $query->with('jobCard');
            }]);
        }])->get();
<<<<<<< HEAD

    

        $client = Client::where(['id'=>$request->client])->first();
        $export = new CartonPositionExport($stocks, $client);
        Excel::store(new CartonPositionExport($stocks, $client), 'excell-download/carton-position.xlsx');
=======
        $export = new CartonPositionExport($stocks);
        Excel::store(new CartonPositionExport($stocks), 'excell-download/carton-position.xlsx');
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        return response()->json(['filename' => config('printing.media_url').'excell-download/carton-position.xlsx']);
    }


    public function cuttingReport(Request $request)
    {
        $cutting = Cutting::orderBy('id','desc')
            ->with(['user', 'jobCard'=>function($query){
                $query->with(['jobCardPapers'=>function($query){
                    $query->with(['product']);
                }, 'putPaperWarehouse', 'JobCardUser', 'jobCardItems'=>function($query){
                    $query->with(['PO', 'POItem']);
                }]);
            }])->has('jobCard')->get();

        $export = new CuttingReportExport($cutting);
        Excel::store(new CuttingReportExport($stocks), 'excell-download/cutting-report.xlsx');
        return response()->json(['filename' => config('printing.media_url').'excell-download/carton-position.xlsx']);
    }
}
