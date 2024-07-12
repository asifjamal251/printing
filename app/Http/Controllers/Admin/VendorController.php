<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Vendor\VendorCollection;
use App\Models\Vendor;
use App\Rules\GSTNumber;
use App\Rules\MobileNumber;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class VendorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $datas = Vendor::orderBy('name', 'asc');
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('email', 'like', '%'.$search.'%');
                $datas->orWhere('phone_no', 'like', '%'.$search.'%');
                $datas->orWhere('name', 'like', '%'.$search.'%');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new VendorCollection($datas));
            
           
        }
        return view('admin.vendor.list');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
         return view('admin.vendor.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'address' => 'required|max:500',
            'name' => 'required|max:255',
            'locality' => 'required|max:255',
            'email' => 'required|email|max:255',
            'state' => 'required',
            'district' => 'required',
            'city' => 'required',
            'pincode' => 'required|integer|digits:6',
            'gst' => ['required', new GSTNumber()],
            'phone_no' => ['required', new MobileNumber()],
        ]);
        
        $vendor = new Vendor;
        $vendor->gst = $request->gst;
        $vendor->name = $request->name;
        $vendor->email = $request->email;
        $vendor->phone_no = $request->phone_no;
        $vendor->address = $request->address;
        $vendor->mail_cc = $request->email_cc;
        $vendor->locality = $request->locality;
        $vendor->state_id = $request->state;
        $vendor->city_id = $request->city;
        $vendor->district_id = $request->district;
        $vendor->pincode = $request->pincode;

        if($request->has('logo')){
            foreach($request->logo as $file){
                $vendor->media_id = $file;
            } 
        } 

        if($vendor->save()){
             return redirect()->route('admin.vendor.index')->with(['message'=>ucfirst(Str::singular(request()->segment(2))).' Successfully Created','class'=>'success']);
        }
         return redirect()->back()->with(['message'=>'Something Went Wrong','class'=>'error']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Vendor $vendor)
    {
         return view('admin.vendor.edit',compact('vendor'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Vendor $vendor)
    {
        $this->validate($request, [
            'address' => 'required|max:500',
            'name' => 'required|max:255',
            'locality' => 'required|max:255',
            'email' => 'required|email|max:255',
            'state' => 'required',
            'district' => 'required',
            'city' => 'required',
            'pincode' => 'required|integer|digits:6',
            'gst' => ['required', new GSTNumber()],
            'phone_no' => ['required', new MobileNumber()],
        ]);
        
        $vendor->gst = $request->gst;
        $vendor->name = $request->name;
        $vendor->email = $request->email;
        $vendor->phone_no = $request->phone_no;
        $vendor->address = $request->address;
        $vendor->mail_cc = $request->email_cc;
        $vendor->locality = $request->locality;
        $vendor->state_id = $request->state;
        $vendor->city_id = $request->city;
        $vendor->district_id = $request->district;
        $vendor->pincode = $request->pincode;

        if($request->has('logo')){
            foreach($request->logo as $file){
                $vendor->media_id = $file;
            } 
        }else{
             $vendor->media_id = Null;
        }

        if($vendor->save()){
             return redirect()->route('admin.vendor.index')->with(['message'=>ucfirst(Str::singular(request()->segment(2))).' Successfully Updated','class'=>'success']);
        }
        return redirect()->back()->with(['message'=>'Something Went Wrong','class'=>'error']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Vendor $vendor)
    {
        if($vendor->delete()){
            
            return response()->json(['message'=>ucfirst(Str::singular(request()->segment(2))).' deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }
}
