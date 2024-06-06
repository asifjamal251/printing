<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\ChemicalCoating\ChemicalCoatingCollection;
use App\Models\ChemicalCoating;
use App\Models\DyeCutting;
use App\Models\Embossing;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\PurchaseOrderItem;
use App\Models\SpotUv;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ChemicalCoatingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->wantsJson()) {
            $datas = ChemicalCoating::orderByRaw("CASE
                WHEN status_id = 2 THEN 1
                WHEN status_id = 5 THEN 2
                ELSE 3
            END")->orderBy('created_at', 'desc')
            ->with(['user', 'jobCard'=>function($query){
                $query->with(['paper', 'jobCardHistory']);
            }])->has('jobCard');

            if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2) {
                $datas->whereNotIn('status_id', [5]);
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
            return response()->json(new ChemicalCoatingCollection($datas));
        }
        return view('admin.chemical-coating.list');
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
        $coating = ChemicalCoating::find($id);
        $coating->coated_sheets = $request->coated_sheets;
        if($coating->save()){
            JobCard::where('id', $coating->job_card_id)->update(['coated_sheets'=>$coating->coated_sheets]);
            return response()->json(['message'=>'Coated Shets updated successfully', 'class'=>'success', 'error'=>false]);     
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
        if(Dominant::where('id',$id)->delete()){
         return response()->json(['message'=>ucfirst(str_singular(request()->segment(2))).' Successfully Deleted', 'class'=>'success']); 
        }
        return back()->with(array('message' => 'Something Wrong', 'class' => 'error')); 
    }


    public function changeStatus(Request $request)
    { 
        //return $request->all();
        $job_card = JobCard::find($request->job_card_id);

        $ChemicalCoating = ChemicalCoating::where(['id'=>$request->id])->first(); 
        if($ChemicalCoating->coated_sheets == ''){
            return response()->json(['message'=>'Coated Sheets required.', 'class'=>'error']);
        }

         if(($job_card->coating_machine == "chemical coating") && ($job_card->other_coating_machine == "metallic" || $job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = Embossing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Embossing.', 'class'=>'error']);
                }else{
                    Embossing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Embossing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>16]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Embossing', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Embossing']);
            $history->job_card_in = now();
            $history->counter = $job_card->coated_sheets;
            $history->save();

            $printing = Embossing::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>18]);  
                ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>18]);
                return response()->json(['message'=>'Job Card Assigned', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }



        if(($job_card->coating_machine == "chemical coating") && ($job_card->other_coating_machine == "metallic" || $job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "None")) {


            if($request->status == 2){
                $check_jobcard = DyeCutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Dye Cutting.', 'class'=>'error']);
                }else{
                    DyeCutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Dye Cutting'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>16]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Dye Cutting', 'class'=>'error']);
                }
            }


            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Dye Cutting']);
            $history->job_card_in = now();
            $history->counter = $job_card->coated_sheets;
            $history->save();

            $printing = DyeCutting::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>19]);  
                ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>19]);
                return response()->json(['message'=>'Job Card Assigned', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "chemical coating") && ($job_card->other_coating_machine == "spot uv" || $job_card->other_coating_machine == "both")) {

            if($request->status == 2){
                $check_jobcard = SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Spot Uv.', 'class'=>'error']);
                }else{
                    SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>16]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Spot Uv', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv']);
            $history->job_card_in = now();
            $history->counter = $job_card->coated_sheets;
            $history->save();


            $printing = SpotUv::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>20]);  
                ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>20]);
                return response()->json(['message'=>'Job Card Assigned', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }



        if(($job_card->coating_machine == "gloss lamination" || $job_card->coating_machine == "matt lamination")) {

            if($request->status == 2){
                $check_jobcard = SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Spot Uv.', 'class'=>'error']);
                }else{
                    SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>16]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Spot Uv', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv']);
            $history->job_card_in = now();
            $history->counter = $job_card->coated_sheets;
            $history->save();
            
            $printing = SpotUv::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>20]);  
                ChemicalCoating::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>20]);
                return response()->json(['message'=>'Job Card Assigned', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }


        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }


    public function oprator(Request $request)
    {
        $module = ChemicalCoating::find($request->id);
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
