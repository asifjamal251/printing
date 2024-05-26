@extends('admin.layouts.master')
@push('links')
<style>
  table , td, th {
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
}
</style>
@endpush




@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>

            @can('add_material_inward')
            <div class="page-title-right">
                <a href="{{ route('admin.'.request()->segment(2).'.create') }}"  class="btn-sm btn btn-primary btn-label rounded-pill">
                    <i class="bx bx-plus label-icon align-middle rounded-pill fs-16 me-2"></i>
                    Add {{Str::title(str_replace('-', ' ', request()->segment(2)))}}
                </a>
            </div>
            @endcan

        </div>
    </div>
</div>
<!-- end page title -->




<div class="row">
    <div class="col-sm-9">
        <div class="card">

            <div class="card-body">
                <table class="table">
                    <tr>
                        <td colspan="6">
                            <b>From</b>
                        </td>
                        <td colspan="5">
                            <b>To</b>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="6">
                            <img src="{{asset(get_app_setting('logo'))}}" alt="" style="max-width:160px;max-height: 80px;">
                        </td>
                        <td colspan="5">
                            @if($material->vendor->media)
                            <img class="d-block img-thumbnail" style="max-width:160px;max-height: 80px;" src="{{asset($material->vendor->media->file)}}" alt="{{$material->vendor->media->name}}">
                            @else
                                <b>{{$material->vendor->name}}</b>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <p><b>{{get_app_setting('title')}}</b></p>
                            <p style="margin-bottom:0">{{get_app_setting('contact_no')}}</p>
                            <p style="margin-bottom:0">{{get_app_setting('email')}}</p>
                            <p style="margin-bottom:0">{{get_app_setting('address')}}</p>
                        </td>
                        <td colspan="5">
                            <p><b>{{$material->vendor->name}}</b></p>
                            <p style="margin-bottom:0">{{$material->vendor->phone_no}}</p>
                            <p style="margin-bottom:0">{{$material->vendor->email}}</p>
                            <p style="margin-bottom:0">{{$material->vendor->address}}</p>
                        </td>
                    </tr>
                      
                        <tr>
                            <th colspan="2">Order No.</th>
                            <td colspan="2">{{$material->order_no}}</td>
                            <td colspan="3"></td>
                            <th colspan="2">Order Date</th>
                            <td colspan="2">{{$material->created_at->format('d F, Y')}}</td>
                        </tr>
                        <tr>
                            <th style="background:#ddd;">Si. No.</th>
                            <th style="background:#ddd;width:120px;" colspan="2">Product Details</th>
                            <th style="background:#ddd;">Product Type</th>
                            <th style="background:#ddd;">QTY/PKT/NOs</th>
                            <th style="background:#ddd;">WT/PC</th>
                            <th style="background:#ddd;">Total Quantity</th>
                            <th style="background:#ddd;">Unit</th>
                            <th style="background:#ddd;">Rate</th>
                            <th style="background:#ddd;">GST</th>
                            <th style="background:#ddd;">Amount</th>
                        </tr>
                        
                        @foreach($material->materialItems as $item)
                        <tr>
                            <td>{{$loop->index+1}}</td>
                            <td colspan="2">{{$item->product->name}}</td>
                            <td>{{$item->product->productType->type}}</td>
                            <td>{{$item->quantity}}</td>
                            <td>{{$item->weight_per_piece}}</td>
                            <td>{{$item->total_weight}}</td>
                            <td>{{$item->unit->name}}</td>
                            <td>{{$item->rate_on}}</td>
                            <td>{{$item->gst}}</td>
                            <td>{{$item->rate}}</td>
                        </tr>
                        @endforeach
                        <tr>
                            <th colspan="10" style="text-align:right;">Subtotal</th>
                            <td>{{$material->subtotal}}</td>
                        </tr>
                        <tr>
                            <th colspan="10" style="text-align:right;">GST</th>
                            <td>{{$material->total_gst}}</td>
                        </tr>
                        <tr>
                            <th colspan="10" style="text-align:right;">Total</th>
                            <td>{{$material->total}}</td>
                        </tr>
                        <tr>
                            <td colspan="6" rowspan="2" style="vertical-align: top;height: 80px;">Comment or Special Instructions</td>
                            <td colspan="5" rowspan="2"></td>
                        </tr>
                        <tr>
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
                        </tr>
                    </table>
                </div>
            </div>
        </div>


        <div class="col-md-3 col-sm-12">
            <div class="card">
                <div class="card-body">
                    {!! Form::open(['route'=>['admin.'.request()->segment(2).'.statusChange',$material->id],'method'=>'put', 'files'=>true]) !!}
                    <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                        {!! Form::label('status', 'Status') !!}
                        {!! Form::select('status', App\Models\Status::whereIn('id', [2, 3, 5, 6, 26, 8])->pluck('name', 'id'), $material->status_id, ['id' => 'status_id', 'class' => 'form-control', 'placeholder' => 'Chosse Status']) !!}
                        <small class="text-danger">{{ $errors->first('status') }}</small>
                    </div>

                    <div class="form-group">
                        <div class="checkbox{{ $errors->has('send_email') ? ' has-error' : '' }}">
                            <label for="send_email">
                                {!! Form::checkbox('send_email', 1, null, ['id' => 'send_email']) !!} Send Email
                            </label>
                        </div>
                        <small class="text-danger">{{ $errors->first('send_email') }}</small>
                    </div>

                    {!! Form::submit('Change Status', ['class' => 'btn btn-success pull-right']) !!}
                    {!! Form::close() !!} 
                </div>
            </div>
        </div>
    </div>



    @endsection








    @push('scripts')

    @endpush