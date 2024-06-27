@extends('admin.layouts.master')
@push('links')
<style>
/*  table , td, th {
    border: 1px solid #595959;
    border-collapse: collapse;
}
td, th {
    padding: 3px;
    width: 30px;
    height: 25px;
}
th {
    background: #f0e6cc;
}
.even {
    background: #fbf8f0;
}
.odd {
    background: #fefcf9;
}*/
</style>
@endpush




@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>

            @can('read_material_inward')
            <div class="page-title-right">
                <a href="{{route('admin.pdf-download.material-inward',$material->id)}}"  class="btn-sm btn btn-secondary btn-label rounded-pill">
                    <i class="bx bx-download label-icon align-middle rounded-pill fs-16 me-2"></i>
                    Download Receipt
                </a>
            </div>
            @endcan

        </div>
    </div>
</div>
<!-- end page title -->


<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered border-secondary">
                    <tr>
                        
                        <td colspan="6" style="width:50%;">
                            <p><b>{{get_app_setting('title')}}</b></p>
                            <p style="margin-bottom: 0;"><b>Email: </b>{{ get_app_setting('email') }}</p>
                            <p style="margin-bottom: 0;"><b>Mobile No.: </b> {{ get_app_setting('contact_no') }}</p>
                            <p style="margin-bottom: 0;"><b>GST: </b> {{ get_app_setting('gst') }}</p>
                            <p style="margin-bottom:0"><b>Address: </b>{!! get_app_setting('address')??'' !!}</p>
                        </td>

                        <td colspan="6" style="width:50%;">
                            <p><b>{{$material->vendor->name}}</b></p>
                            <p style="margin-bottom:0">{{$material->vendor->phone_no}}</p>
                            <p style="margin-bottom:0">{{$material->vendor->email}}</p>
                            <p style="margin-bottom:0">{{$material->vendor->gst}}</p>
                            <p style="margin-bottom:0">{{$material->vendor->address}}</p>
                            
                        </td>
                    </tr>

                    <tr style="visibility:collapse;">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <th colspan="2" style="width:16.66%;">Bill No.</th>
                        <td colspan="2" style="width:16.66%;">{{$material->bill_no}}</td>
                        <th colspan="2" style="width:16.66%;">Bill Date</th>
                        <td colspan="2" style="width:16.66%;">{{$material->bill_date->format('d F, Y')}}</td>
                        <th colspan="2" style="width:16.66%;">Material Order No.</th>
                        <td colspan="2" style="width:16.66%;">{{$material->material_order_no}}</td>
                    </tr>
                      
                    <tr>
                        <th colspan="2">Receipt No.</th>
                        <td colspan="2">{{$material->receipt_no}}</td>
                        <td colspan="4" style="width:33.32%;"></td>
                        <th colspan="2">Receipt Date</th>
                        <td colspan="2">{{$material->created_at->format('d F, Y')}}</td>
                    </tr>
                    <tr style="visibility:collapse;">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <th style="width: 4%;">Si. No.</th>
                        <th style="width: 20%;" colspan="2">Product Details</th>
                        <th>Product Type</th>
                        <th>QTY/PKT/NOs</th>
                        <th>WT/PC</th>
                        <th>Total Quantity</th>
                        <th>Total Item</th>
                        <th>Unit</th>
                        <th>Rate</th>
                        <th>GST</th>
                        <th>Amount</th>
                    </tr>

                    @foreach($material->materialItems as $item)
                        <tr>
                            <td>{{$loop->index+1}}</td>
                            <td style="width: 20%;" colspan="2">{{$item->product->name}}</td>
                            <td>{{$item->product->productType->type}}</td>
                            <td>{{$item->quantity}}</td>
                            <td>{{$item->weight_per_piece}}</td>
                            <td>{{$item->total_weight}}</td>
                            <td>{{$item->total_item}}</td>
                            <td>{{$item->unit}}</td>
                            <td>{{$item->rate_on}}</td>
                            <td>{{$item->gst}}</td>
                            <td>{{$item->rate}}</td>
                        </tr>
                    @endforeach

                    <tr style="visibility:collapse;">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="10"></td>
                        <th>Subtotal</th>
                        <td>{{$material->subtotal}}</td>
                    </tr>
                    <tr>
                        <td colspan="10"></td>
                        <th>GST</th>
                        <td>{{$material->total_gst}}</td>
                    </tr>
                    <tr>
                        <td colspan="10" style="text-align:left;">{{numberToWords($material->total)}}</td>
                        <th>Total</th>
                        <td>{{$material->total}}</td>
                    </tr>
                    
                        
                    </table>
                    </div>
                </div>
            </div>
        </div>

</div>


    @endsection








    @push('scripts')

    @endpush