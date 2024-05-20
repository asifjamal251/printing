@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
<link rel="stylesheet" href="{{asset('admin-assets/libs/flatpickr/flatpickr.min.css')}}"> 
<style>
    
    table{
        width: 100%;
        max-width: 600px;
    }
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
    .text-center{
        text-align: center;
    }
</style>
@endpush




@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
        </div>
    </div>
</div>
<!-- end page title -->


{!! Form::open(['route'=>['admin.billing.coa.update',$billing->COA->id],'method'=>'put','files'=>true]) !!}

<div class="row">
    <div class="col-lg-12">
        <div class="card">

            <div class="card-body">
                <div class="table-responsives">
                    
<table class="table table-bordered border-secondary table-nowrap">
    <tbody>
        <tr class="text-center">
            <td colspan="4">
                <h4>COLOUR IMPRESSIONS</h4>
                <span>KALKA LINK ROAD, SHAMDO, CHANDIGARH ROAD , RAJPURA</span>
            </td>
        </tr>
        <tr class="text-center">
            <td colspan="4">Company Description</td>
        </tr>
        <tr class="text-center">
            <td colspan="4">Certificate of Analysis</td>
        </tr>
        <tr>
            <td colspan="4"><b>Name of the customer:</b> {{$billing->PO->client->company_name}}</td>
        </tr>
        <tr>
            <td colspan="4"><b>Product Name:</b> {{$billing->POItem->carton_name}}</td>
        </tr>
        <tr>
            <td colspan="2">Product Code: {{$billing->POItem->art_code}}</td>
            <td colspan="2">
                <div class="d-flex justify-content-between align-items-center w-100 gap-2">
                    <div class="d-inline-block">Manufacturing Date:</div>
                    <div class="w-100">
                        <div class="m-0 form-group{{ $errors->has('manufacturing_date') ? ' has-error' : '' }}">
                            {!! Form::text('manufacturing_date', $billing->created_at, ['class' => 'form-control form-control-sm dateSelector', 'placeholder' => 'Manufacturing Date']) !!}
                            <small class="text-danger">{{ $errors->first('manufacturing_date') }}</small>
                        </div>
                    </div>
                </div>
            </td>
        </tr>

        <tr>
            <td colspan="2">Batch No:</td>
            <td colspan="2">
                <div class="d-flex justify-content-between align-items-center w-100 gap-2">
                    <div class="d-inline-block">Expiry Date:</div>
                    <div class="w-100">
                        <div class="m-0 form-group{{ $errors->has('expiry_date') ? ' has-error' : '' }}">
                            {!! Form::text('expiry_date',$billing->COA->expiry_date?$billing->COA->expiry_date->format('d F, Y'):'', ['class' => 'form-control form-control-sm dateSelector', 'placeholder' => 'Expiry date']) !!}
                            <small class="text-danger">{{ $errors->first('expiry_date') }}</small>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <th>Sr. No</th>
            <th>Parameters</th>
            <th>Specification</th>
            <th>Results</th>
        </tr>
        @php
            $count = 1;
        @endphp
        @foreach($billing->COA->coaItems as $item)
            <tr>
                <td>{{$loop->index+1}}</td>
                <td>{{$item->parameter}}</td>
                <td>{{$item->specification}}</td>
                <td>{{$item->result}}</td>
            </tr>
            @php
                $count++;
            @endphp
        @endforeach
        <tr>
            <td>{{$count}}</td>
            <td>TEXT</td>
            <td>AS PER APPROVAL</td>
            <td>AS PER APPROVAL</td>
        </tr>
       
    </tbody>
</table>
                </div>

                {!! Form::submit('Download', ['class' => 'btn btn-primary']) !!}
            </div>
        </div>
    </div><!--end col-->
</div><!--end row-->

{!! Form::close() !!}
@endsection


@push('scripts')
<script type="text/javascript" src="{{asset('admin-assets/libs/flatpickr/flatpickr.js')}}"></script>
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>
<script type="text/javascript">
  $(".dateSelector").each(function() {
    var defaultDate = $(this).val() ? null : "today";
    $(this).flatpickr({
        dateFormat: "d F, Y",
        defaultDate: defaultDate
    });
});
</script>

@endpush