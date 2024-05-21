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
    <div class="col-sm-8">
        <div class="card">

            <div class="card-body">
                <table class="table">
                    <tr>
                        <td colspan="4">
                            <b>{{get_app_setting('title')}}</b>
                        </td>
                        <td colspan="4">
                            <b>{{$material->vendor->name}}</b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <p style="margin-bottom:0">{{get_app_setting('contact_no')}}</p>
                            <p style="margin-bottom:0">{{get_app_setting('email')}}</p>
                            <p style="margin-bottom:0">{{get_app_setting('address')}}</p>
                        </td>
                        <td colspan="4">
                            <p style="margin-bottom:0">{{$material->vendor->phone_no}}</p>
                            <p style="margin-bottom:0">{{$material->vendor->email}}</p>
                            <p style="margin-bottom:0">{{$material->vendor->address}}</p>
                        </td>
                    </tr>
                        {{-- <tr>
                            <td colspan="6" style="background: #eee;"></td>
                        </tr> --}}
                        <tr>
                            <th>Order No.</th>
                            <td>{{$material->order_no}}</td>
                            <td colspan="4"></td>
                            <th>Order Date</th>
                            <td>{{$material->created_at->format('d F, Y')}}</td>
                        </tr>
                        {{-- <tr>
                            <td colspan="6" style="background: #eee;"></td>
                        </tr> --}}
                        <tr>
                            <th style="background:#ddd;">Si. No.</th>
                            <th style="background:#ddd;" colspan="2">Product Details</th>
                            <th style="background:#ddd;">Rate</th>
                            <th style="background:#ddd;">GST</th>
                            <th style="background:#ddd;">Quantity</th>
                            <th style="background:#ddd;">Unit</th>
                            <th style="background:#ddd;">Amount</th>
                        </tr>
                        @php
                        @endphp
                        @foreach($material->materialItems as $item)
                        @php
                        @endphp
                        <tr>
                            <td>{{$loop->index+1}}</td>
                            <td colspan="2">{{$item->product->name}}</td>
                            <td>{{$item->rate_on}}</td>
                            <td>{{$item->gst}}</td>
                            <td>{{$item->quantity}}</td>
                            <td>{{$item->unit->name}}</td>
                            <td>{{$item->rate}}</td>
                        </tr>
                        @endforeach
                        <tr>
                            <th colspan="7" style="text-align:right;">Subtotal</th>
                            <td>{{$material->subtotal}}</td>
                        </tr>
                        <tr>
                            <th colspan="7" style="text-align:right;">GST</th>
                            <td>{{$material->total_gst}}</td>
                        </tr>
                        <tr>
                            <th colspan="7" style="text-align:right;">Total</th>
                            <td>{{$material->total}}</td>
                        </tr>
                        <tr>
                            <td colspan="5" rowspan="2" style="vertical-align: top;height: 80px;">Comment or Special Instructions</td>
                            <td colspan="3" rowspan="2"></td>
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
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-md-1 col-sm-12"></div>

        <div class="col-md-3 col-sm-12">
            <div class="card">
                <div class="card-body">
                    {!! Form::open(['route'=>['admin.'.request()->segment(2).'.statusChange',$material->id],'method'=>'put', 'files'=>true]) !!}
                    <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                        {!! Form::label('status', 'Status') !!}
                        {!! Form::select('status', App\Models\Status::whereIn('id', [2, 3, 6, 8])->pluck('name', 'id'), $material->status_id, ['id' => 'status_id', 'class' => 'form-control', 'placeholder' => 'Chosse Status']) !!}
                        <small class="text-danger">{{ $errors->first('status') }}</small>
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