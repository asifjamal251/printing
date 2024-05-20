<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Cutting\CuttingCollection;
use App\Models\Cutting;
use App\Models\Dominant;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\Lamination;
use App\Models\Printing;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderItem;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CuttingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->wantsJson()) {
            
            $datas = Cutting::orderBy('id','desc')
            ->with(['user', 'jobCard'=>function($query){
                $query->with(['paper', 'putPaperWarehouse', 'getPaperWarehouse', 'jobCardItems'=>function($query){
                    $query->with(['PO', 'POItem']);
                }]);
            }])->has('jobCard');

            if (auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
                $datas->whereIn('status_id', $request->status?[$request->status]:[2,5]);
            } else{
                $datas->whereIn('status_id', $request->status?[$request->status]:[2]);
            }

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
            return response()->json(new CuttingCollection($datas));
        }
        return view('admin.cutting.list');
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
        $cutting = Cutting::find($id);
        $cutting->cutting_sheets = $request->cutting_sheets;
        if($cutting->save()){
            JobCard::where('id', $cutting->job_card_id)->update(['cutting_sheets'=>$cutting->cutting_sheets]);
            return response()->json(['message'=>'Cutting Shhets updated successfully', 'class'=>'success', 'error'=>false]);     
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
        if(Cutting::where('id',$id)->delete()){
         return response()->json(['message'=>ucfirst(str_singular(request()->segment(2))).' Successfully Deleted', 'class'=>'success']); 
        }
        return back()->with(array('message' => 'Something Wrong', 'class' => 'error')); 
    }


    public function changeStatus(Request $request)
    { 

        $job_card = JobCard::find($request->job_card_id);
        $cutting = Cutting::where(['id'=>$request->id])->first(); 
        if($cutting->cutting_sheets == ''){
            return response()->json(['message'=>'Cutting Sheet required.', 'class'=>'error']);
        }

        if(($job_card->coating_machine == "gloss lamination" || $job_card->coating_machine == "matt lamination" || $job_card->coating_machine == "chemical coating") && ($job_card->other_coating_machine == "spot uv" || $job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both" || $job_card->embossing_leafing == "None")) {

            if($request->status == 2){
                $printing_check = Printing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($printing_check->count() > 0){
                    return response()->json(['message'=>'Printing Has Completed Jobcard.', 'class'=>'error']);
                }
                else{
                    Printing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Cutting::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>13]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Printing', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Cutting']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing']);
            $history->counter = $job_card->cutting_sheets;
            $history->job_card_in = now();
            $history->save();


            $printing = Printing::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>14]);  
                Cutting::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>14]);

                $purchase_order_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_id'); 
                PurchaseOrder::whereIn('id', $purchase_order_ids)->update(['status_id'=>24]);


                return response()->json(['message'=>'Job Card Assigned to printing.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }



        if(($job_card->coating_machine == "gloss lamination" || $job_card->coating_machine == "matt lamination" || $job_card->coating_machine == "chemical coating") && ($job_card->other_coating_machine == "metallic" || $job_card->other_coating_machine == "both") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both" || $job_card->embossing_leafing == "None")) {

            if($request->status == 2 && $cutting->metalic_status == 1){
                $printing_check = Printing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($printing_check->count() > 0){
                    return response()->json(['message'=>'Printing Has Completed Jobcard.', 'class'=>'error']);
                }
                else{
                    Printing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Cutting::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>13]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Printing', 'class'=>'error']);  
                }
            }

            if($request->status == 2 && $cutting->metalic_status == 0){
                $printing_check = Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($printing_check->count() > 0){
                    return response()->json(['message'=>'Lamination Has Completed Jobcard.', 'class'=>'error']);
                }
                else{
                    Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Cutting::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>13]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Lamination', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Cutting'])->latest()->first();
            $old_history->job_card_out = now();
            $old_history->save();

            $cutting_check = Cutting::where(['id'=>$request->id])->first();

            if($cutting_check->metalic_status == 1){

                $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing']);
                $history->job_card_in = now();
                $history->counter = $job_card->cutting_sheets;
                $history->save();

                $printing = Printing::firstorNew(['job_card_id'=>$request->job_card_id]);
                $printing->status_id = 2;
                if ($printing->save()) {
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>14]); 
                    Cutting::where(['id'=>$request->id])->update(['status_id'=>5]);  
                    $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                    PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>14]);

                    $purchase_order_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_id'); 
                    PurchaseOrder::whereIn('id', $purchase_order_ids)->update(['status_id'=>24]);

                    return response()->json(['message'=>'Job Card Assigned to Printing.', 'class'=>'success']);
                }

            }else{


                $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Cutting']);
                $old_history->job_card_out = now();
                $old_history->save();

                $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
                $history->job_card_in = now();
                $history->counter = $job_card->cutting_sheets;
                $history->save();


                $printing = Lamination::firstorNew(['job_card_id'=>$request->job_card_id]);
                $printing->status_id = 2;
                if ($printing->save()) {
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    Cutting::where(['id'=>$request->id])->update(['status_id'=>5]);  
                    $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                    PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>15]);

                    $purchase_order_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_id'); 
                    PurchaseOrder::whereIn('id', $purchase_order_ids)->update(['status_id'=>24]);

                    return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
                }
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }

        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);

    }

    public function oprator(Request $request)
    {
        $module = Cutting::find($request->id);
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

    public function timer(Request $request){
       
    }
}
