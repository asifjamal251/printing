<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\DyeCutting\DyeCuttingCollection;
use App\Models\DyeCutting;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\Pasting;
use App\Models\Project;
use App\Models\PurchaseOrderItem;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DyeCuttingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->wantsJson()) {
            $datas = DyeCutting::orderBy('id', 'desc')
                ->with(['user', 'jobCard' => function ($query) {
                    $query->with(['paper', 'putPaperWarehouse', 'getPaperWarehouse', 'jobCardItems'=>function($query){
                        $query->with(['PO', 'POItem']);
                    },'jobCardUser' => function ($query2) {
                        $query2->with('printingUser');
                    }]);
                }])
                ->has('jobCard');


            // if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2) {
            //     $datas->whereNotIn('status_id', [5])
            //         ->whereHas('jobCard', function ($query) {
            //             $query->whereHas('jobCardUser', function ($query2) {
            //                 $query2->where('dye_cutting', auth('admin')->user()->id);
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
            return response()->json(new DyeCuttingCollection($datas));
        }
        return view('admin.dye-cutting.list');
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
        $dye_cutting = DyeCutting::find($id);
        $dye_cutting->dye_counter = $request->sheets;
        if($dye_cutting->save()){
            JobCard::where('id', $dye_cutting->job_card_id)->update(['dye_counter'=>$dye_cutting->dye_counter]);
            return response()->json(['message'=>'Printed Shhets updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    	
        if(DieCutting::where('id',$id)->delete()){
         return response()->json(['message'=>ucfirst(str_singular(request()->segment(2))).' Successfully Deleted', 'class'=>'success']); 
        }
        return back()->with(array('message' => 'Something Wrong', 'class' => 'error')); 
    }


    public function changeStatus(Request $request)
    { 
        $job_card = JobCard::find($request->job_card_id);
        $DyeCutting = DyeCutting::where(['id'=>$request->id])->first(); 
        if($DyeCutting->dye_counter == ''){
            return response()->json(['message'=>'Dye Counter required.', 'class'=>'error']);
        }

        if($request->status == 2){
            $check_jobcard = Pasting::where(['job_card_id'=>$request->job_card_id])->whereIn('status_id', [1, 5])->get(); 
            if($check_jobcard->count() > 0){
                return response()->json(['message'=>'JobCard Has Start On Pasting.', 'class'=>'error']);
            }else{
                Pasting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                DyeCutting::where(['id'=>$request->id])->update(['status_id'=>2]); 
                JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Pasting'])->delete();
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>19]); 
                return response()->json(['message'=>'Jobcard Cancelled From Pasting', 'class'=>'error']);
            }
        }

        $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Dye Cutting']);
        $old_history->job_card_out = now();
        $old_history->save();

        $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Pasting']);
        $history->job_card_in = now();
        $history->counter = $job_card->dye_counter;
        $history->save();


        foreach($job_card->jobCardItems as $item){
            $pasting = Pasting::firstorNew(['purchase_order_item_id'=>$item->purchase_order_item_id]);
            $pasting->job_card_id = $item->job_card_id;
            $pasting->purchase_order_id = $item->purchase_order_id;
            $pasting->status_id = 2;
            $pasting->save();
        }
        
        JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>21]);  
        DyeCutting::where(['id'=>$request->id])->update(['status_id'=>5]);  
        $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
        PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>21]);
        return response()->json(['message'=>'Job Card Assigned to printing.', 'class'=>'success']);
    }

    public function oprator(Request $request)
    {
        $module = DyeCutting::find($request->id);
        if($request->user_id != ''){
            $module->user_id = $request->user_id;
        }else{
            $module->user_id = null;
        }
        if($module->save()){
             return response()->json(['message'=>'Oprator assign successfully ...', 'class'=>'success']);  
        } 
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }
}
