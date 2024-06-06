<?php

namespace App\Http\Controllers\Admin;

use App\Exports\CartonPosition\CartonPositionExport;
use App\Exports\ProductLedger\ProductLedgerExport;
use App\Exports\ProductStock\ProductStockExport;
use App\Http\Controllers\Controller;
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
        if($request->product_type == 0 || $request->product_type == '0'){
            if($request->stock == 1 || $request->stock == '1'){
                $stocks = Product::where('product_type_id', '!=', null)->whereColumn('quantity', '<=', 'in_hand_quantity')->with(['transaction', 'category'])->get();
            }
            else{
                $stocks = Product::where('product_type_id', '!=', null)->with(['transaction', 'category'])->get();
            }
        }
        else{
            if($request->stock == 1 || $request->stock == '1'){
                $stocks = Product::where('product_type_id', '=', null)->whereColumn('quantity', '<=', 'in_hand_quantity')->with(['transaction', 'category'])->get();
            }
            else{
                $stocks = Product::where('product_type_id', '=', null)->with(['transaction', 'category'])->get();
            }
        }
        
        $export = new ProductStockExport($stocks);
        Excel::store(new ProductStockExport($stocks), 'excell-download/product-stock.xlsx');
        return response()->json(['filename' => 'https://colourimpration.s3.eu-north-1.amazonaws.com/excell-download/product-stock.xlsx']);
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
        return response()->json(['filename' => 'https://colourimpration.s3.eu-north-1.amazonaws.com/excell-download/product-ledger.xlsx']);
    }

    public function cartonPosition(Request $request)
    {
        $stocks = PurchaseOrder::where(['client_id'=>$request->client])->with(['purchaseOrderItems'=>function($query){
           $query->with(['jobCardItems'=>function($query){
                $query->with('jobCard');
            }]);
        }])->get();
        $export = new CartonPositionExport($stocks);
        Excel::store(new CartonPositionExport($stocks), 'excell-download/carton-position.xlsx');
        return response()->json(['filename' => 'https://colourimpration.s3.eu-north-1.amazonaws.com/excell-download/carton-position.xlsx']);
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
        return response()->json(['filename' => 'https://colourimpration.s3.eu-north-1.amazonaws.com/excell-download/carton-position.xlsx']);
    }
}
