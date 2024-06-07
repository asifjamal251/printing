<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Carton\CartonCollection;
use App\Models\Carton;
use App\Models\Media;
use App\Rules\UniqueCombination;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class CartonController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = Carton::orderBy('created_at', 'asc')->with(['client', 'paperType']);
            $totaldata = $datas->count();

            $search = $request->search['value'];
            if ($search) {
                $datas->where('carton_size', 'like', '%'.$search.'%');
                $datas->orWhere('carton_name', 'like', '%'.$search.'%');
            }

            if($request->client){
                $datas->where('client_id', $request->client);
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new CartonCollection($datas));
            
           
        }
        return view('admin.carton.list');
    }

    
    public function show($id){
        $carton = Carton::where('id',$id)->with(['cartonPrice', 'client', 'paperType'])->first();
        return view('admin.carton.view', compact('carton'));
    }

    
}
