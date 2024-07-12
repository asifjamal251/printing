<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\MaterialOrder\MaterialOrderCollection;
use App\Mail\MaterialOrderConfirmation;
use App\Models\Admin;
use App\Models\MaterialOrder;
use App\Models\MaterialOrderItem;
use App\Models\MaterialOrderPlate;
use App\Models\Media;
use App\Models\PaperQuality;
use App\Models\PaperType;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\vendor;
use App\Notifications\MaterialOrderNotification;
use Auth;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class MaterialOrderController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = MaterialOrder::orderByRaw("CASE
                    WHEN status_id = 2 THEN 1
                    WHEN status_id = 1 THEN 2
                    WHEN status_id = 6 THEN 3
                    WHEN status_id = 8 THEN 4
                    WHEN status_id = 26 THEN 5
                    WHEN status_id = 5 THEN 6
                    WHEN status_id = 3 THEN 7
                    ELSE 8
                    END")->with(['vendor']);
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('order_no', 'like', '%'.$search.'%');
            }

            if($request->vendor){
                $datas->where('vendor_id', $request->vendor);
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new MaterialOrderCollection($datas));
            
           
        }
        return view('admin.material-order.list');
    }

    public function create(){
        return view('admin.material-order.create');
    }



    public function store(Request $request) {

        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'vendor' => 'required',
            'mo_date' => 'required',
<<<<<<< HEAD
<<<<<<< HEAD
            'bill_to' => 'required',
            'ship_to' => 'required',
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.unit' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.item_per_packet' => 'required', 
            'kt_docs_repeater_advanced.*.total_item' => 'required', 
            'kt_docs_repeater_advanced.*.rate_on' => 'required', 
            'kt_docs_repeater_advanced.*.gst' => 'required',
        ],
        [
            'kt_docs_repeater_advanced.*.unit.required' => 'Unit is required.',
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.item_per_packet.required' => 'item per packet is required.',
            'kt_docs_repeater_advanced.*.total_item.required' => 'total item is required.',
            'kt_docs_repeater_advanced.*.rate_on.required' => 'rate_on is required.',
            'kt_docs_repeater_advanced.*.gst.required' => 'gst is required.',
        ]);

        $material_order = new MaterialOrder;
<<<<<<< HEAD
<<<<<<< HEAD
        $material_order->bill_to = $request->bill_to;
        $material_order->ship_to = $request->ship_to;
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        $material_order->admin_id = $user->id;
        $material_order->vendor_id = $request->vendor;
        $material_order->mo_date = Carbon::parse($request->mo_date)->format('Y-m-d');

        $subtotal = 0; 
        $total_gst = 0; 
        $total = 0;

        if($material_order->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);
                $item = new MaterialOrderItem;
                $item->material_order_id = $material_order->id;
                $item->category_id = $product->category_id;
                $item->product_id = $product->id;
                $item->item_name = $product->name;
                $item->hsn = $product->hsn;
                $item->quantity = $input['quantity'];
                $item->item_per_packet = $input['item_per_packet'];
                $item->weight_per_piece = $input['weight_per_piece'];
                $item->total_item = $input['total_item'];
                $item->total_weight = $input['total_weight'];
                $item->unit_id = $input['unit'];
                $item->rate_on = $input['rate_on'];
                $item->rate = $input['rate'];
                $item->gst = $input['gst'];
                $item->gst_amount = $input['gst_amount'];
                $item->amount = $input['amount'];
                $item->save();

                $subtotal += $input['rate'];
                $total_gst += $input['rate']*$input['gst']/100;
                $total += $input['rate'] + $input['rate']*$input['gst']/100;

                
            }
            $material_order->subtotal = $subtotal;
            $material_order->total_gst = $total_gst;
            $material_order->total = $total;
            $material_order->save();
            $users = Admin::where('role_id', 2)->get();
            foreach($users as $user){
                $user->notify(new MaterialOrderNotification($material_order));
            }
            
            return redirect()->route('admin.material-order.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $material =  MaterialOrder::where('id', $id)->with(['vendor', 'materialItems'])->first();
        return view('admin.material-order.edit', compact('material'));
    }


    public function show($id){
<<<<<<< HEAD
<<<<<<< HEAD
        $material =  MaterialOrder::where('id', $id)->with(['madeBy', 'billTo', 'shipTo', 'vendor', 'materialItems'=>function($query){
=======
        $material =  MaterialOrder::where('id', $id)->with(['madeBy', 'vendor', 'materialItems'=>function($query){
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
        $material =  MaterialOrder::where('id', $id)->with(['madeBy', 'vendor', 'materialItems'=>function($query){
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            $query->with(['product', 'unit']);
        }])->first();

        $notification = auth('admin')->user()->notifications()
            ->where('type', 'App\Notifications\MaterialOrderNotification')
            ->where('data->order_id', $id)
            ->first();
        
        if ($notification) {
            $notification->markAsRead();
        }

        return view('admin.material-order.view', compact('material'));
    }


    public function check($id){
        $material =  MaterialOrder::where('id', $id)->with(['madeBy', 'vendor', 'materialItems'=>function($query){
            $query->with(['product', 'unit']);
        }])->first();
        return view('admin.material-order.check', compact('material'));
    }


    public function update(Request $request, $id) {

        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'vendor' => 'required',
            'mo_date' => 'required',
<<<<<<< HEAD
<<<<<<< HEAD
            'bill_to' => 'required',
            'ship_to' => 'required',
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.unit' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.item_per_packet' => 'required', 
            'kt_docs_repeater_advanced.*.total_item' => 'required', 
            'kt_docs_repeater_advanced.*.rate_on' => 'required', 
            'kt_docs_repeater_advanced.*.gst' => 'required',
        ],
        [
            'kt_docs_repeater_advanced.*.unit.required' => 'Unit is required.',
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.item_per_packet.required' => 'item per packet is required.',
            'kt_docs_repeater_advanced.*.total_item.required' => 'total item is required.',
            'kt_docs_repeater_advanced.*.rate_on.required' => 'rate_on is required.',
            'kt_docs_repeater_advanced.*.gst.required' => 'gst is required.',
        ]);

        $material_order = MaterialOrder::find($id);
<<<<<<< HEAD
<<<<<<< HEAD
        $material_order->bill_to = $request->bill_to;
        $material_order->ship_to = $request->ship_to;
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        $material_order->admin_id = $user->id;
        $material_order->vendor_id = $request->vendor;
        $material_order->mo_date = Carbon::parse($request->mo_date)->format('Y-m-d');

        MaterialOrderItem::where('material_order_id', $id)->delete();
        $subtotal = 0; 
        $total_gst = 0; 
        $total = 0;

        if($material_order->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);
                $item = new MaterialOrderItem;
                $item->material_order_id = $material_order->id;
                $item->category_id = $product->category_id;
                $item->product_id = $product->id;
                $item->item_name = $product->name;
                $item->hsn = $product->hsn;
                $item->quantity = $input['quantity'];
                $item->item_per_packet = $input['item_per_packet'];
                $item->weight_per_piece = $input['weight_per_piece'];
                $item->total_item = $input['total_item'];
                $item->total_weight = $input['total_weight'];
                $item->unit_id = $input['unit'];
                $item->rate_on = $input['rate_on'];
                $item->rate = $input['rate'];
                $item->gst = $input['gst'];
                $item->gst_amount = $input['gst_amount'];
                $item->amount = $input['amount'];
                $item->save();

                $subtotal += $input['rate'];
                $total_gst += $input['rate']*$input['gst']/100;
                $total += $input['rate'] + $input['rate']*$input['gst']/100;

                
            }
            $material_order->subtotal = $subtotal;
            $material_order->total_gst = $total_gst;
            $material_order->total = $total;
            $material_order->save();
        
            return redirect()->route('admin.material-order.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $paper_inward = MaterialOrder::find($id);
        if($paper_inward->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }


    public function statusChange(Request $request, $id){
        //return $request->all();
        // Fetch the material order with related data

        // $itemsData = $materialData->materialItems;
        //     $items = $itemsData->toArray();
        //     $material = $materialData->toArray();

      


        //  $pdfContent = PDF::loadView('pdf.order-confirmation', compact('material', 'items'))
        //     ->setPaper('A4', 'portrait')
        //     ->setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])
        //     ->output();

        // // Define the file name
        // $fileName = '123.pdf';
        // $mediaRename = '123.pdf';

        // // Store the generated PDF on the specified disk
        // $filePath = Storage::disk('s3')->put("pdf/{$mediaRename}", $pdfContent);

        // // Create the full URL for the stored file
        // $fileUrl = 'https://colourimpration.s3.eu-north-1.amazonaws.com/' . $fileName;

        // $whatsapp = sendOnWhatsapp(9315647380, 'https://colourimpration.s3.eu-north-1.amazonaws.com/pdf/123.pdf');

        //  dd($fileUrl);
        // //dd($whatsapp);

        // dd($fileUrl);


        
        $materialData = MaterialOrder::where('id', $id)
            ->with([
                'madeBy', 
<<<<<<< HEAD
<<<<<<< HEAD
                'billTo' => function($query){
                    $query->with(['city', 'state', 'district']);
                },
                'shipTo' => function($query){
                    $query->with(['city', 'state', 'district']);
                },
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                'vendor'=>function($query){
                    $query->with(['media']);
                }, 
                'materialItems' => function($query) {
                    $query->with(['product' => function($query){
                        $query->with('productType');
                    }, 'unit']);
                }
            ])->first();
        
        // Update the status
        if(isset($request->status)){
            $materialData->status_id = $request->status;
            if($request->status == 5){
                $materialData->completed_at = Carbon::now()->format('Y-m-d');
            }
        }
        if(isset($request->bill_no)){
             $materialData->bill_no = $request->bill_no;
        }
        $materialData->save();

        if($request->input('item')){
            $inputs = $request->input('item');
             foreach ($inputs as $input) {
                $item = MaterialOrderItem::find($input['material']);
                $item->receive_status = 1;
                $item->save();
             }
        }


        
        if($request->send_email){
            $user = Admin::find(1);
            $itemsData = $materialData->materialItems;
            $items = $itemsData->toArray();
            $material = $materialData->toArray();

<<<<<<< HEAD
<<<<<<< HEAD
            $billToData = $materialData->billTo;
            $billTo = $billToData->toArray();

            $shipToData = $materialData->shipTo;
            $shipTo = $shipToData->toArray();

            // Generate the PDF
            $pdf = PDF::loadView('pdf.order-confirmation', compact('material', 'items', 'billTo', 'shipTo'))
=======
            // Generate the PDF
            $pdf = PDF::loadView('pdf.order-confirmation', compact('material', 'items'))
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
            // Generate the PDF
            $pdf = PDF::loadView('pdf.order-confirmation', compact('material', 'items'))
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                ->setPaper('A4', 'portrait') // Ensure A4 paper size in portrait mode
                ->setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true]) // Enable HTML5 and remote options
                ->output();

            $vendor = Vendor::find($materialData->vendor_id);

            // Ensure email addresses are properly formatted
            $toAddresses = filter_var($vendor->email, FILTER_VALIDATE_EMAIL) ? [$vendor->email] : [];
            $ccAddresses = array_filter(array_map('trim', explode(',', $vendor->mail_cc)), function($email) {
                return filter_var($email, FILTER_VALIDATE_EMAIL);
            });

            // Check if there are valid email addresses to send to
            if (!empty($toAddresses)) {
                $subjectLine = 'Material Order Order No. '.$materialData->order_no;
                Mail::send(new MaterialOrderConfirmation($pdf, $toAddresses, $ccAddresses, $material, $items, $subjectLine));
                return redirect()->route('admin.material-order.index')->with(['class'=>'success','message'=>'Status Changed and email sent.']);
            } else {
               return redirect()->back()->with(['class'=>'success','message'=>'Save has changed']);
            }
        }

       return redirect()->route('admin.material-order.index')->with(['class'=>'success','message'=>'Status Changed.']);
    }
}

    

