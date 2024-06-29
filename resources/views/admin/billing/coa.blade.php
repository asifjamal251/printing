@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
<link rel="stylesheet" href="{{asset('admin-assets/libs/flatpickr/flatpickr.min.css')}}"> 
<style>

    table{
        width: 100%;
    }
    table , td, th {
        border-collapse: collapse;
    }
    td, th {
        padding: 8px 4px !important;
        width: 30px;
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
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
        </div>
    </div>
</div>
<!-- end page title -->


{!! Form::open(['route'=>['admin.billing.coa.update',$billing->COA->id],'method'=>'put','files'=>true]) !!}

<div class="row">
    <div class="col-lg-12">
        <div class="card" style="max-width: 1024px;">

            <div class="card-body">
                <div class="table-responsives">

                    <table class="table table-bordered border-secondary table-nowrap">
                        <colgroup>
                            <col style="width: 25%;">
                            <col style="width: 25%;">
                            <col style="width: 25%;">
                            <col style="width: 25%;">
                        </colgroup>
                        <tr>
                            <th colspan="4" style="text-align: center;">CERTIFICATE OF ANALYSIS</th>
                        </tr>
                        <tr>
                            <th style="width:50%;" colspan="2">FROM</th>
                            <th style="width:50%;" colspan="2">CLIENT NAME</th>
                        </tr>
                        <tr>
                            <td style="width:50%;" colspan="2">{{get_app_setting('title')}}</td>
                            <td style="width:50%;" colspan="2">{{$billing->PO->client->company_name}}</td>
                        </tr>
                        <tr>
                            <td style="width: 50%;" colspan="2">{!! get_app_setting('address') !!}</td>
                            <td style="width: 50%;" colspan="2">{!! $billing->PO->client->address !!}</td>
                        </tr>
                        <tr>
                            <td style="width:50%;" colspan="2">{{get_app_setting('city')}}</td>
                            <td style="width:50%;" colspan="2"> {{$billing->PO->client->city}}</td>
                        </tr>

                        <tr style="visibility:collapse;">
                            <td style="width:25%;"></td>
                            <td style="width:25%;"></td>
                            <td style="width:25%;"></td>
                            <td style="width:25%;"></td>
                        </tr>

                        <tr>
                            <th style="width: 25%;">COA NO</th>
                            <td style="width: 25%;">1</td>
                            <th style="width: 25%;">PRODUCT NAME</th>
                            <td style="width: 25%;">Hello World</td>
                        </tr>

                        <tr>
                            <th style="width: 25%;">INVOICE NO.</th>
                            <td style="width: 25%;">1</td>
                            <th style="width: 25%;">QUANTITY</th>
                            <td style="width: 25%;">200</td>
                        </tr>

                        <tr>
                            <th style="width: 25%;">MFG DATE</th>
                            <td style="width: 25%;">1</td>
                            <th style="width: 25%;">EXP DATE</th>
                            <td style="width: 25%;">200</td>
                        </tr>

                        <tr>
                            <th style="width: 25%;">PRODUCT CODE</th>
                            <td style="width: 25%;">1</td>
                            <th style="width: 25%;">BATCH NO.</th>
                            <td style="width: 25%;">200</td>
                        </tr>
                        <tr>
                            <th colspan="4" style="text-align: center;">ATTRIBUTE PARAMETERS (VISUAL INSPECTION)</th>
                        </tr>

                        <tr style="visibility:collapse;">
                            <td style="width:25%;"></td>
                            <td style="width:25%;"></td>
                            <td style="width:25%;"></td>
                            <td style="width:25%;"></td>
                        </tr>

                        <tr>
                            <th style="width: 10%;">SR. NO.</th>
                            <th style="width: 30%;">PARAMETER</th>
                            <th style="width: 30%;">SPECIFICATION</th>
                            <th style="width: 30%;">RESULT</th>
                        </tr>

                        @php
                            $count = 1;
                        @endphp
                        @foreach($billing->COA->coaItems as $item)
                            <tr>
                                <td style="width: 10%;">
                                    {!! $loop->index+1 !!}
                                </td>
                                <td style="width: 30%;">
                                    <div class="m-0 form-group{{$errors->has('item.'.$item->id.'.parameter') ? ' has-error' : '' }}">
                                        {!! Form::text('item['.$item->id.'][parameter]', $item->parameter, ['class' => 'form-control form-control-sm', 'placeholder' => 'PARAMETER']) !!}
                                        <small class="text-danger">{{ $errors->first('item.'.$item->id.'.parameter') }}</small>
                                    </div>
                                </td>
                                <td style="width: 30%;">
                                    <div class="m-0 form-group{{$errors->has('item.'.$item->id.'.specification') ? ' has-error' : '' }}">
                                        {!! Form::text('item['.$item->id.'][specification]', $item->specification, ['class' => 'form-control form-control-sm', 'placeholder' => 'SPECIFICATION']) !!}
                                        <small class="text-danger">{{ $errors->first('item.'.$item->id.'.specification') }}</small>
                                    </div>
                                </td>
                                <td style="width: 30%;">
                                    <div class="m-0 form-group{{$errors->has('item.'.$item->id.'.result') ? ' has-error' : '' }}">
                                        {!! Form::text('item['.$item->id.'][result]', $item->result, ['class' => 'form-control form-control-sm', 'placeholder' => 'RESULT']) !!}
                                        <small class="text-danger">{{ $errors->first('item.'.$item->id.'.result') }}</small>
                                    </div>
                                </td>
                            </tr>
                            @php
                                $count++;
                            @endphp
                        @endforeach
                        <tr>
                            <th>Remarks</th>
                            <td colspan="3">
                                <div class="m-0 form-group{{ $errors->has('remarks') ? ' has-error' : '' }}">
                                    {!! Form::text('remarks', $billing->COA->remarks, ['class' => 'form-control form-control-sm', 'placeholder' => 'Remarks']) !!}
                                    <small class="text-danger">{{ $errors->first('remarks') }}</small>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th>PREPARED BY</th>
                            <td colspan="3"><div class="m-0 form-group{{ $errors->has('prepared_by') ? ' has-error' : '' }}">
                                {!! Form::text('prepared_by', $billing->COA->prepared_by, ['class' => 'form-control form-control-sm', 'placeholder' => 'Prepared By']) !!}
                                <small class="text-danger">{{ $errors->first('prepared_by') }}</small>
                            </div></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="3" style="height:70px;vertical-align: text-top;">AUTH. SIG.</td>
                        </tr>
                            
                    </table>
                </div>

                
            </div>
        </div>
    </div><!--end col-->
</div><!--end row-->
{!! Form::submit('Save and Download', ['class' => 'btn btn-primary']) !!}
<p><br></p>
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