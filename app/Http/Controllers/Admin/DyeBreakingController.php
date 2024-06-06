<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\DyeBreaking\DyeBreakingCollection;
use App\Models\DyeBreaking;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\Pasting;
use App\Models\Project;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderItem;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DyeBreakingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
     
        if ($request->wantsJson()) {
            $datas = DyeBreaking::orderByRaw("CASE
                WHEN status_id = 5 THEN 1
                ELSE 0
            END")->orderBy('created_at', 'desc')
            ->with(['user', 'PO', 'POItem', 'jobCard'=>function($query){
                $query->with(['paper', 'jobCardItems', 'jobCardUser']);
            }])->has('jobCard');


            // if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2) {
            //     $datas->whereNotIn('status_id', [5])
            //         ->whereHas('jobCard', function ($query) {
            //             $query->whereHas('jobCardUser', function ($query2) {
            //                 $query2->where('DyeBreaking', auth('admin')->user()->id);
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

            $getDate = request()->input('datefilter');
            if($getDate != '' && $getDate != 'All'){ //|| $getDate != 'all' || $getDate != 'All'
                $filterDate = explode(' - ', $getDate);
                $startDate = Carbon::parse($filterDate[0])->format('Y-m-d');
                $endDate = Carbon::parse($filterDate[1])->format('Y-m-d');

                $datas->when($getDate != '', function ($query) use ($startDate, $endDate) {
                    $query->whereBetween('created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59']);
                });
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new DyeBreakingCollection($datas));
        }
        return view('admin.dye-breaking.list');
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
        //
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
            $dye_breaking = DyeBreaking::where(['id' => $id])->first();
        }else{
            $dye_breaking = DyeBreaking::where(['id' => $id, 'user_id' => $request->user_id ])->first();
            if($dye_breaking == null){
                return response()->json(['message'=>'Please Choose Your Carton Name', 'class'=>'error', 'error'=>true]);
            }
        }
        if($request->ready_quantity != ''){
            if(auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
                $dye_breaking->ready_quantity = $request->ready_quantity;
            }else{
                $dye_breaking->ready_quantity += $request->ready_quantity;
            }
            if($dye_breaking->save()){

                Pasting::where(['purchase_order_item_id' => $dye_breaking->purchase_order_item_id])->update(['dye_breaking_quantity'=>$dye_breaking->ready_quantity, 'status_id'=>2]);

                return response()->json(['message'=>'Ready Quantity updated successfully', 'class'=>'success', 'error'=>false]);     
            }
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
        }

        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }



    public function changeStatus(Request $request)
    { 
       // return $request->all();
        if($request->status == 2){
            $pasting = DyeBreaking::where(['id' => $request->id])->first();
            $pasting->status_id = 1;
            $pasting->save();
            return response()->json(['message'=>'Dye Breaking in pending', 'class'=>'success', 'error'=>false]);
        }

        if($request->status == 1){
            $pasting = DyeBreaking::where(['id' => $request->id, 'user_id' => $request->user_id ])->first();
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
                return response()->json(['message'=>'Dye Breaking Completed Successfully', 'class'=>'success', 'error'=>false]);
            }
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
        }
        
    }


    public function oprator(Request $request)
    {
        $module = DyeBreaking::find($request->id);
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


}
