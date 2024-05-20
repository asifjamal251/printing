<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\ProductType\ProductTypeCollection;
use App\Models\ProductType;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ProductTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->wantsJson()) {
            $datas = ProductType::orderBy('created_at','desc');
            
            $search = $request->search['value'];
            if ($search) {
                $datas->where('name', 'like', '%'.$search.'%');
              
            }
            $request->request->add(['page'=>(($request->start+$request->length)/$request->length )]);
            $datas = $datas->paginate($request->length);
            return response()->json(new ProductTypeCollection($datas));
           
        }

        return view('admin.product-type.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request )
    {
        return view('admin.product-type.create');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Employee $employee )
    {   
       
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
        public function store(Request $request) {

            $this->validate($request,[
                'product_type'=>'required',    
                'start_series'=>'required|integer|digits:2|unique:product_types',    
            ]);

            $product_type = new ProductType;
            $product_type->type = $request->product_type;
            $product_type->start_series = $request->start_series;
            if($product_type->save()){ 
                return response()->json(['class'=>'success','message'=>'ProductType Created Successfuly.']);
            }

            return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
        }
        
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request,$id)
    {
        $product_type = ProductType::find($id);
        return view('admin.product-type.edit', compact('product_type'));
        //return response()->json(['class'=>'success','message'=>'Record Founded','data'=>$product_type]); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'product_type'=>'required',    
            'start_series' => [
                'required',
                'integer',
                'digits:2',
                Rule::unique('product_types')->ignore($id),
            ],  
        ]);

        $product_type = ProductType::find($id);
        $product_type->type = $request->product_type;
        $product_type->start_series = $request->start_series;
        if($product_type->save()){ 
            return response()->json(['class'=>'success','message'=>'ProductType Created Successfuly.']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, ProductType $product_type)
    {
        if($product_type->delete()){
            return response()->json(['message'=>'ProductType deleted Successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }
}
