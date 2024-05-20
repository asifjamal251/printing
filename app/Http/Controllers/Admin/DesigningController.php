<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Designing\DesigningCollection;
use App\Models\Designing;
use App\Models\DesigningPlate;
use App\Models\JobCard;
use App\Models\JobCardItem;
use App\Models\Media;
use App\Models\Planning;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class DesigningController extends Controller
{
   
    public function index(Request $request){

        if ($request->ajax()) {
            $datas = Designing::orderByRaw("CASE
                WHEN status_id = 2 THEN 1
                WHEN status_id = 5 THEN 2
                ELSE 3
            END")->orderBy('created_at', 'desc')->with(['jobCard'=>function($query){
                $query->with(['deyDetail', 'jobCardItems'=>function($query){
                    $query->with(['PO', 'POItem']);
                }]);
            }]);

            
            // if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2) {
            //     $datas->whereNotIn('status_id', [5])->whereHas('jobCard', function ($query){
            //         $query->where('planning_by', auth('admin')->user()->id);
            //     });
            // }



            $totaldata = $datas->count();

            $search = $request->search['value'];
            if ($search) {
                $datas->whereHas('jobCard.jobCardItems.POItem', function ($query) use ($search) {
                    $query->where('carton_size', 'like', '%'.$search.'%')
                          ->orWhere('carton_name', 'like', '%'.$search.'%')
                          ->orWhere('quantity', 'like', '%'.$search.'%');
                });
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new DesigningCollection($datas));
            
           
        }
        return view('admin.designing.list');
    }

    public function create(){
        return view('admin.designing.create');
    }



    public function store(Request $request) {
       

    }


    public function edit($id){
        
    }


    public function update(Request $request, $id) {
        
    }




    public function destroy($id)
    {
        $jobCardItem = JobCardItem::where('purchase_order_item_id', $id)->first();
        $count = JobCardItem::where('job_card_id', $jobCardItem->job_card_id)->count();
        if(JobCardItem::where('purchase_order_item_id', $id)->delete()){
            Planning::whereIn('purchase_order_item_id', [$id])->update(['status_id' => 2, 'ups' => null ]);

            $count = JobCardItem::where('job_card_id', $jobCardItem->job_card_id)->count();
            if($count > 0){

            }
            else{
              JobCard::where('id', $jobCardItem->job_card_id)->delete();  
              Designing::where('job_card_id', $jobCardItem->job_card_id)->delete();  
            }

            $total_quantity = JobCardItem::where(['job_card_id'=>$jobCardItem->job_card_id])->sum('quantity');
            $total_ups = JobCardItem::where(['job_card_id'=>$jobCardItem->job_card_id])->sum('ups');
            $required_sheet = $total_quantity / $total_ups;
            JobCard::where(['id'=>$jobCardItem->job_card_id])->update(['required_sheet' => $required_sheet]);


            return response()->json(['message'=>'Item removed successfully', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    public function sheetSizeUpdate(Request $request)
    {
        if(JobCard::whereIn('id', [$request->job_card_id])->update(['sheet_size'=>$request->sheet_size])){
            Designing::whereIn('job_card_id', [$request->job_card_id])->update(['sheet_size'=>$request->sheet_size]);
            return response()->json(['message'=>'Sheet Size updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }


    public function totalSheetUpdate(Request $request)
    {
        if(JobCard::whereIn('id', [$request->job_card_id])->update(['required_sheet'=>$request->total_sheet])){
            Designing::whereIn('job_card_id', [$request->job_card_id])->update(['required_sheet'=>$request->total_sheet]);
            return response()->json(['message'=>'Total Sheet updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }


    public function upsUpdate(Request $request)
    {
        if(JobCardItem::whereIn('purchase_order_item_id', [$request->po_item])->update(['ups'=>$request->ups])){
            Planning::whereIn('purchase_order_item_id', [$request->po_item])->update(['ups'=>$request->ups]);
            return response()->json(['message'=>'Total Sheet updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }


    public function colorUpdate(Request $request)
    {
        //return $request->all();
        if(JobCard::where('id', $request->job_card_id)->update(['color'=>$request->color])){
            Designing::whereIn('job_card_id', [$request->job_card_id])->update(['color'=>$request->color]);
            return response()->json(['message'=>'Color updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }


    public function setNoUpdate(Request $request)
    {
        //return $request->all();
        if(JobCard::where('id', $request->job_card_id)->update(['set_no'=>$request->set_no])){
            Designing::whereIn('job_card_id', [$request->job_card_id])->update(['set_no'=>$request->set_no]);
            return response()->json(['message'=>'Set No. updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }


    public function changeStatus(Request $request){ 
        if(JobCard::where('id', $request->job_card_id)->update(['status_id'=>2])){
            Designing::where('job_card_id', $request->job_card_id)->update(['status_id'=>$request->status]);
            return response()->json(['message'=>'Designing has been completed successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }

    
}
