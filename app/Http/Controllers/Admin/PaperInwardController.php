<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\PaperInward\PaperInwardCollection;
use App\Models\Media;
use App\Models\PaperInward;
use App\Models\PaperInwardPlate;
use App\Models\PaperQuality;
use App\Models\PaperType;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class PaperInwardController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = PaperInward::orderBy('created_at', 'desc');
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('first_name', 'like', '%'.$search.'%');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new PaperInwardCollection($datas));
            
           
        }
        return view('admin.paper-inward.list');
    }

    public function create(){
        return view('admin.paper-inward.create');
    }



    public function store(Request $request) {

        $this->validate($request,[
            'paper_quality'=>'required',  
            'paper_type'=>'required',  
            'width'=>'required',  
            'length'=>'required',  
            'gsm'=>'required',  
            'quantity'=>'required',  
        ]);


        $paper_type_exist = PaperType::where('id', $request->paper_type)->first();
        if (!$paper_type_exist){
           $paper_type = new PaperType;
           $paper_type->type = $request->paper_type;
           $paper_type->save();
        }
        else{
            $paper_type = PaperType::where('id', $request->paper_type)->first();
        }


        $paper_quality_exist = PaperQuality::where('id', $request->paper_quality)->first();
        if (!$paper_quality_exist){
           $paper_quality = new PaperQuality;
           $paper_quality->quality = $request->paper_quality;
           $paper_quality->save();
        }
        else{
            $paper_quality = PaperQuality::where('id', $request->paper_quality)->first();
        }


        $paper_inward = new PaperInward;
        $paper_inward->paper_quality_id = $paper_quality->id;
        $paper_inward->paper_type_id = $paper_type->id;
        $paper_inward->length = $request->length;
        $paper_inward->width = $request->width;
        $paper_inward->gsm = $request->gsm;
        $paper_inward->quantity = $request->quantity;
       

        if($paper_inward->save()){ 
            return redirect()->route('admin.paper-inward.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $paper_inward = PaperInward::find($id);
        return view('admin.paper-inward.edit', compact('dye_details'));
    }


    public function update(Request $request, $id) {
        $this->validate($request,[
            'dye_no'=>'required',  
            'length'=>'required',  
            'width'=>'required',  
            'height'=>'required',  
            'ups'=>'required',  
            'sheet_size'=>'required',  
            'automatic_menual'=>'required',  
        ]);

        $paper_inward = PaperInward::find($id);
        $paper_inward->dye_no = $request->dye_no;
        $paper_inward->length = $request->length;
        $paper_inward->width = $request->width;
        $paper_inward->height = $request->height;
        $paper_inward->ups = $request->ups;
        $paper_inward->automatic = $request->automatic_menual;
        $paper_inward->sheet_size = $request->sheet_size;
        $paper_inward->carton_size = $request->length.'X'.$request->width.'X'.$request->height;

        if($paper_inward->save()){ 
            return redirect()->route('admin.paper-inward.index')->with(['class'=>'success','message'=>'Dye Details  updated successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $paper_inward = PaperInward::find($id);
        if($paper_inward->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    
}
