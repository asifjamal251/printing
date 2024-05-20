<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Pasting\PastingCollection;
use App\Models\Billing;
use App\Models\BillingItem;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\Pasting;
use App\Models\Project;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderItem;
use App\Models\Warehouse;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PastingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
     
        if ($request->wantsJson()) {
            $datas = Pasting::orderByRaw("CASE
                WHEN status_id = 5 THEN 1
                ELSE 0
            END")->orderBy('created_at', 'desc')
            ->with(['user', 'PO', 'POItem', 'jobCard'=>function($query){
                $query->with(['paper', 'jobCardItems','putPaperWarehouse', 'getPaperWarehouse', 'jobCardUser' => function ($query2) {
                        $query2->with('printingUser');
                    }]);
            }])->has('jobCard');


            // if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2) {
            //     $datas->whereNotIn('status_id', [5])
            //         ->whereHas('jobCard', function ($query) {
            //             $query->whereHas('jobCardUser', function ($query2) {
            //                 $query2->where('pasting', auth('admin')->user()->id);
            //             });
            //         });
            // }

            if ($request->fromDate && $request->toDate) {
                $from = Carbon::parse($request->fromDate)->format('Y-m-d');
                $to = Carbon::parse($request->toDate)->format('Y-m-d');
                $datas->whereBetween('updated_at', [$from." 00:00:00", $to." 23:59:59"]);
            }

            $totaldata = $datas->count();
            $search = $request->search['value'];
            if ($search) {
                $datas->where(function($query) use ($search) {
                    $query->whereHas('jobCard.jobCardItems.POItem', function ($query) use ($search) {
                        $query->where('carton_size', 'like', '%'.$search.'%')
                              ->orWhere('carton_name', 'like', '%'.$search.'%')
                              ->orWhere('quantity', 'like', '%'.$search.'%');
                    })
                    ->orWhereHas('jobCard', function ($query) use ($search) {
                        $query->where('job_card_no', 'like', '%'.$search.'%');
                    });
                });
            }

            if($request->user_id){
                $datas->where('user_id', $request->user_id);
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new PastingCollection($datas));
        }
        return view('admin.pasting.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $pasting = Pasting::where('id', $id)
            ->with(['jobCard'=>function($query){
                $query->with(['paper', 'putPaperWarehouse', 'getPaperWarehouse', 'jobCardItems'=>function($query){
                    $query->with(['PO', 'POItem']);
                }]);
            }])->has('jobCard')->first();
        return view('admin.pasting.view', compact('pasting'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        
        if(auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
            $pasting = Pasting::where(['id' => $id])->first();
        }else{
            $pasting = Pasting::where(['id' => $id, 'user_id' => $request->user_id ])->first();
            if($pasting == null){
                return response()->json(['message'=>'Please Choose Your Carton Name', 'class'=>'error', 'error'=>true]);
            }
        }
        if($request->ready_quantity != ''){
            if(auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
                $pasting->ready_quantity = $request->ready_quantity;
            }else{
                $pasting->ready_quantity += $request->ready_quantity;
            }
            if($pasting->save()){

                $warehouse = Warehouse::firstorNew(['client_id' => $pasting->PO->client->id, 'carton_name' => $pasting->POItem->carton_name, 'carton_size' => $pasting->POItem->carton_size]);
                $warehouse->purchase_order_id = $pasting->purchase_order_id;
                $warehouse->purchase_order_item_id = $pasting->purchase_order_item_id;
                if(auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
                    $warehouse->new_quantity = $request->ready_quantity;
                }else{
                    $warehouse->new_quantity += $request->ready_quantity;
                }
                
                $warehouse->save();

                return response()->json(['message'=>'Ready Quantity updated successfully', 'class'=>'success', 'error'=>false]);     
            }
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
        }

        if($request->ready_box != ''){
            $pasting->ready_box = $request->ready_box;
            if($pasting->save()){
                $warehouse = Warehouse::firstorNew(['client_id' => $pasting->PO->client->id, 'carton_name' => $pasting->POItem->carton_name, 'carton_size' => $pasting->POItem->carton_size]);
                $warehouse->pasting_ready_box = $pasting->ready_box;
                $warehouse->save();
                return response()->json(['message'=>'Ready Box updated successfully', 'class'=>'success', 'error'=>false]);     
            }
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
        }


        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }

    public function changeStatus(Request $request)
    { 
       // return $request->all();
        if($request->status == 2){
            $pasting = Pasting::where(['id' => $request->id])->first();
            $pasting->status_id = 1;
            $pasting->save();
            return response()->json(['message'=>'Pasting in pending', 'class'=>'success', 'error'=>false]);
        }

        if($request->status == 1){
            $pasting = Pasting::where(['id' => $request->id, 'user_id' => $request->user_id ])->first();
            if($pasting == null){
                return response()->json(['message'=>'Please Choose Your Carton Name', 'class'=>'error', 'error'=>true]);
            }
            $pasting->status_id = 5;
            if($pasting->save()){
                PurchaseOrderItem::where(['id'=>$pasting->purchase_order_item_id])->update(['status_id' => 5]);
                $purchase_order_total = PurchaseOrderItem::where(['purchase_order_id' => $pasting->purchase_order_id])->count();
                $purchase_order_completed = PurchaseOrderItem::where(['purchase_order_id' => $pasting->purchase_order_id, 'status_id'=>5])->count();
                if($purchase_order_total === $purchase_order_completed){
                    PurchaseOrder::where(['id' => $pasting->purchase_order_id])->update(['status_id'=>5]);
                }
                return response()->json(['message'=>'Pasting Completed Successfully', 'class'=>'success', 'error'=>false]);
            }
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
        }
        
    }


    public function oprator(Request $request)
    {
        $module = Pasting::find($request->id);
        if($request->user_id != ''){
            $module->user_id = $request->user_id;
            $module->status_id = 1;
        }else{
            $module->user_id = null;
            $module->status_id = 2;
        }
        if($module->save()){
             return response()->json(['message'=>'Oprator assign successfully ...', 'class'=>'success']);  
        } 
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    
    public function destroy($id)
    {
        if(Pasting::where('id',$id)->delete()){
         return response()->json(['message'=>ucfirst(str_singular(request()->segment(2))).' Successfully Deleted', 'class'=>'success']); 
        }
        return back()->with(array('message' => 'Something Wrong', 'class' => 'error')); 
    }
}
