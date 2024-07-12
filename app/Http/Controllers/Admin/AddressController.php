<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Address\AddressCollection;
use App\Models\Address;
use App\Models\Media;
use App\Rules\GSTNumber;
use App\Rules\MobileNumber;
use Illuminate\Http\Request;

class AddressController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = Address::orderBy('created_at', 'asc');
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('carton_size', 'like', '%'.$search.'%');
                $datas->orWhere('dye_no', 'like', '%'.$search.'%');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new AddressCollection($datas));
            
           
        }
        return view('admin.address.list');
    }

    public function create(){
        return view('admin.address.create');
    }



    public function store(Request $request) {
       

        $this->validate($request, [
            'address' => 'required|max:500',
            'company_name' => 'required|max:255',
            'locality' => 'required|max:255',
            'email' => 'required|email|max:255',
            'state' => 'required',
            'city' => 'required',
            'pincode' => 'required|integer|digits:6',
            'gst' => ['required', new GSTNumber()],
            'mobile_number' => ['required', new MobileNumber()],
        ]);


        $address = new Address;
        $address->company_name = $request->company_name;
        $address->address = $request->address;
        $address->locality = $request->locality;
        $address->email = $request->email;
        $address->state_id = $request->state;
        $address->city_id = $request->city;
        $address->pincode = $request->pincode;
        $address->gst = $request->gst;
        $address->mobile_number = $request->mobile_number;
        $address->landmark = $request->landmark;

        if($request->has('logo')){
            foreach($request->logo as $file){
                $address->media_id = $file;
            } 
        }
       

        if($address->save()){ 
            return redirect()->route('admin.address.index')->with(['class'=>'success','message'=>'Address saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $address = Address::find($id);
        return view('admin.address.edit', compact('address'));
    }


    public function update(Request $request, $id) {
        $this->validate($request, [
            'address' => 'required|max:500',
            'company_name' => 'required|max:255',
            'locality' => 'required|max:255',
            'email' => 'required|email|max:255',
            'state' => 'required',
            'city' => 'required',
            'pincode' => 'required|integer|digits:6',
            'gst' => ['required', new GSTNumber()],
            'mobile_number' => ['required', new MobileNumber()],
        ]);


        $address = Address::find($id);
        $address->company_name = $request->company_name;
        $address->address = $request->address;
        $address->locality = $request->locality;
        $address->email = $request->email;
        $address->state_id = $request->state;
        $address->city_id = $request->city;
        $address->pincode = $request->pincode;
        $address->gst = $request->gst;
        $address->mobile_number = $request->mobile_number;
        $address->landmark = $request->landmark;

        if($request->has('logo')){
            foreach($request->logo as $file){
                $address->media_id = $file;
            } 
        }else{
             $address->media_id = Null;
        }
       

        if($address->save()){ 
            return redirect()->route('admin.address.index')->with(['class'=>'success','message'=>'Address saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $address = Address::find($id);
        if($address->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    
}
