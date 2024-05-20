@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
<link rel="stylesheet" href="{{asset('admin-assets/libs/flatpickr/flatpickr.min.css')}}"> 
<style>
   /* .col-width {
        width: 100%;
    }*/
    .custom-row {
        width: 100%;
        display: flex;
        gap: 5px;
    }

    .carton-name-main {
        min-width: 25%;
    }

    .carton-size-main {
        min-width: 20%;
    }

    .quantity-main{
        width: 15%;
    }
    .art-work-main{
        width:20%;
    }
    
    .rate-main{
        width: 10%;
    }

    .gsm-main {
        width: 10%;
    }

    .coating-machine-main{
        width:18%;
    }
    .coating-machine-main{
        width:18%;
    }
    .embossing-leafing-main{
        width:18%;
    }
    .paper-type-main{
        width:20%;
    }
    .remarks-main{
        width:25%;
    }

    


    .second-row .form-group {
        margin-bottom: 0!important;
    }
    .report-repeater .select2-container .select2-selection--single {
        height: 27.6px!important;
    }
    .report-repeater .select2-container .select2-selection--single .select2-selection__rendered {
        line-height: 18px!important;
        min-height: calc(1.5em + 0.5rem + 2px);
        padding: 0.25rem 0.5rem;
        font-size: .7109375rem;
        border-radius: 0.2rem;
    }
    .report-repeater .select2-container .select2-selection--single .select2-selection__arrow {
        height: 28px;
        width: 20px;
        right: 3px;
    }
    #kt_docs_repeater_advanced .form-group label {
        font-size: 11px;
    }
    span.select2-container .select2-dropdown {
        min-width: 350px!important;
    }
    #kt_docs_repeater_advanced .form-control-sm{
        font-size:11px!important;
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
    <div class="col-lg-12">


        {!! Form::open(['route'=>'admin.'.request()->segment(2).'.store', 'files'=>true]) !!}

        <div class="card">
            <div class="card-body">
                <div class="row">

                    <div class="col-md-3 col-sm-12">
                        <div class="m-0 form-group{{ $errors->has('client') ? ' has-error' : '' }}">
                            {!! Form::label('client', 'Client') !!}
                            {!! Form::select('client', App\Models\Client::orderBy('company_name', 'asc')->pluck('company_name', 'id'), null, ['id' => 'client', 'class' => 'form-control select2', 'placeholder' => 'Choose client']) !!}
                            <small class="text-danger">{{ $errors->first('client') }}</small>
                        </div>
                    </div>


                    <div class="col-md-3 col-sm-12">
                        <div class="m-0 form-group{{ $errors->has('po_no') ? ' has-error' : '' }}">
                            {!! Form::label('po_no', 'PO No.') !!}
                            {!! Form::text('po_no', null, ['class' => 'form-control form-control-sm', 'placeholder' => 'Enter PO Number']) !!}
                            <small class="text-danger">{{ $errors->first('po_no') }}</small>
                        </div>
                    </div>


                    <div class="col-md-3 col-sm-12">
                        <div class="m-0 form-group{{ $errors->has('po_date') ? ' has-error' : '' }}">
                            {!! Form::label('po_date', 'PO Date') !!}
                            {!! Form::text('po_date', null, ['class' => 'form-control form-control-sm dateSelector', 'placeholder' => 'Enter PO Date']) !!}
                            <small class="text-danger">{{ $errors->first('po_date') }}</small>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-12">
                        <div class="m-0 form-group{{ $errors->has('po_remarks') ? ' has-error' : '' }}">
                            {!! Form::label('po_remarks', 'PO Remarks') !!}
                            {!! Form::text('po_remarks', null, ['class' => 'form-control form-control-sm', 'placeholder' => 'PO Remarks']) !!}
                            <small class="text-danger">{{ $errors->first('po_remarks') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <hr class="text-danger">
        

        <div  class="report-repeater">

            <!--begin::Repeater-->
            <div id="kt_docs_repeater_advanced">

                <div class="form-group">
                    <div data-repeater-list="kt_docs_repeater_advanced">
                       @foreach(old('kt_docs_repeater_advanced', [[]]) as $item)
                       <div data-repeater-item class="row-{{$loop->index}}">
                        <div class="card" style="position:relative;">
                            <div class="card-body">
                                <div class="custom-row stock-error">

                                    <div class="col-width carton-name-main">

                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.carton_name') ? ' has-error' : '' }}">
                                            <label class="form-label">Carton Name</label>
                                            <select name="carton_name" class="form-select form-select-sm getCartonName" data-kt-repeater="select2" data-placeholder="Select an option">

                                                @if(old('kt_docs_repeater_advanced.'.$loop->index.'.carton_name'))
                                                <option selected="selected" value="{{old('kt_docs_repeater_advanced.'.$loop->index.'.carton_name', $item['carton_name'] ?? '')}}">{{old('kt_docs_repeater_advanced.'.$loop->index.'.pre_carton_name', $item['pre_carton_name'] ?? $item['carton_name'])}}</option>
                                                @else
                                                <option></option>
                                                @endif
                                            </select>
                                            {!! Form::hidden('pre_carton_name', old('kt_docs_repeater_advanced.'.$loop->index.'.pre_carton_name', $item['pre_carton_name'] ?? '')) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.pre_carton_name') }}</small>
                                        </div>

                                    </div>


                                   


                                    <div class="col-width carton-size-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.carton_size') ? ' has-error' : '' }}">
                                            {!! Form::label('carton_size', 'Carton Size') !!}
                                            {!! Form::text('carton_size', old('kt_docs_repeater_advanced.'.$loop->index.'.carton_size', $item['carton_size'] ?? ''), ['class' => 'form-control form-control-sm cartonSize', 'placeholder'=>'Carton Size']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.carton_size') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width quantity-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.quantity') ? ' has-error' : '' }}">
                                            {!! Form::label('quantity', 'Quantity') !!}
                                            {!! Form::text('quantity', old('kt_docs_repeater_advanced.'.$loop->index.'.quantity', $item['quantity'] ?? ''), ['class' => 'form-control form-control-sm', 'placeholder'=>'Quantity']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.quantity') }}</small>
                                        </div>
                                    </div>


                                     <div class="col-width art-work-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.art_work') ? ' has-error' : '' }}">
                                            {!! Form::label('art_work', 'Art Work Code') !!}
                                            {!! Form::text('art_work', old('kt_docs_repeater_advanced.'.$loop->index.'.art_work', $item['art_work'] ?? ''), ['class' => 'form-control form-control-sm', 'placeholder'=>'Art Work Code']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.art_work') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width rate-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.rate') ? ' has-error' : '' }}">
                                            {!! Form::label('rate', 'Rate') !!}
                                            <div class="input-group input-group-sm">
                                                <span class="input-group-text">₹</span>
                                                {!! Form::text('rate', old('kt_docs_repeater_advanced.'.$loop->index.'.rate', $item['rate'] ?? ''), ['class' => 'form-control form-control-sm rate', 'placeholder' => 'Rate']) !!}
                                            </div>
                                           <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.rate') }}</small>
                                        </div>
                                    </div>

                                    <div class="col-width gsm-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.gsm') ? ' has-error' : '' }}">
                                            {!! Form::label('gsm', 'GSM') !!}
                                            {!! Form::text('gsm', old('kt_docs_repeater_advanced.'.$loop->index.'.gsm', $item['gsm'] ?? ''), ['class' => 'form-control form-control-sm', 'placeholder'=>'GSM']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.gsm') }}</small>
                                        </div>
                                    </div>

                                </div>

                                <div class="custom-row stock-error second-row">

                                    <div class="col-width coating-machine-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.coating_type') ? ' has-error' : '' }}">
                                            {!! Form::label('coating_type', 'Coating Type') !!}
                                            {!! Form::select('coating_type', App\Models\CoatingType::pluck('type', 'id'), old('kt_docs_repeater_advanced.'.$loop->index.'.coating_type', $item['coating_type'] ?? ''), ['id' => 'coating_type', 'class' => 'form-control form-select-sm', 'placeholder'=>'Choose Coating Type']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.coating_type') }}</small>
                                        </div>
                                    </div>

                                    <div class="col-width coating-machine-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.other_coating_type') ? ' has-error' : '' }}">
                                            {!! Form::label('other_coating_type', 'Other Coating Type') !!}
                                            {!! Form::select('other_coating_type', App\Models\OtherCoatingType::pluck('type', 'id'), old('kt_docs_repeater_advanced.'.$loop->index.'.other_coating_type', $item['other_coating_type'] ?? 1), ['id' => 'other_coating_type', 'class' => 'form-control form-select-sm other_coating_type', 'placeholder'=>'Choose Other Coating Type']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.other_coating_type') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width embossing-leafing-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.embossing_leafing') ? ' has-error' : '' }}">
                                            {!! Form::label('embossing_leafing', 'Embossing/Leafing') !!}
                                            {!! Form::select('embossing_leafing', [0=>'None', 1=>'Embossing', 2=>'Leafing', 3=>'Both'], old('kt_docs_repeater_advanced.'.$loop->index.'.embossing_leafing', $item['embossing_leafing'] ?? 0), ['id' => 'embossing_leafing', 'class' => 'form-control form-select-sm embossing_leafing', 'placeholder'=>'Choose Embossing/Leafing']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.embossing_leafing') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width paper-type-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.paper_type') ? ' has-error' : '' }}">
                                            {!! Form::label('paper_type', 'Paper Type') !!}
                                            {!! Form::select('paper_type', App\Models\ProductType::pluck('type', 'id'), old('kt_docs_repeater_advanced.'.$loop->index.'.paper_type', $item['paper_type'] ?? ''), ['id' => 'paper_type', 'class' => 'form-control form-select-sm', 'placeholder'=>'Choose Paper Type']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.paper_type') }}</small>
                                        </div>
                                    </div>

                                    <div class="col-width paper-type-main">
                                        <div class="form-group{{ $errors->has('dye_details') ? ' has-error' : '' }}">
                                            {!! Form::label('dye_details', 'Dye Details') !!}
                                            {!! Form::select('dye_details', [], null, ['id' => 'dye_details', 'class' => 'form-control form-control-sm dyeDetails', 'placeholder' => 'Dye Details']) !!}
                                            <small class="text-muted">Dye No. | Dye Lock | UPS</small>
                                            <small class="text-danger">{{ $errors->first('dye_details') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width remarks-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.remarks') ? ' has-error' : '' }}">
                                            {!! Form::label('remarks', 'Remarks') !!}
                                            {!! Form::text('remarks', old('kt_docs_repeater_advanced.'.$loop->index.'.remarks', $item['remarks'] ?? ''), ['class' => 'form-control form-control-sm', 'placeholder'=>'Remarks']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.remarks') }}</small>
                                        </div>
                                    </div>


                                    


                                    <div class="form-group remove-item">
                                        <div class="form-group text-end">
                                            <button data-repeater-delete type="button" class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        <!--end::Form group-->




        

        <div class="row">
            <div class="col-md-6 text-start">
                <div class="form-group">
                    {!! Form::submit('Save Purchase Order', ['class' => 'btn btn-secondary btn-animation waves-effect waves-light']) !!}
                </div>
            </div>
            <div class="col-md-6 text-end">
                <div class="" style="width:100%;text-align:right;display: inline-block;">
                    <button data-repeater-create type="button" class="btn-label btn btn-success text-end btn-sm" style="margin-bottom: 20px;"><i class="label-icon align-middle fs-16 me-2 bx bx-plus-circle"></i> Add New Row</button>
                </div>
            </div>
        </div>


    </div>
</div>


{!! Form::close() !!} 

</div>
</div>



@endsection




@push('scripts')
<script type="text/javascript" src="{{asset('admin-assets/libs/flatpickr/flatpickr.js')}}"></script>
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{asset('admin-assets/js/pages/form-repeater.js')}}"></script>
<script type="text/javascript">

  

    $(".dateSelector").flatpickr({
        dateFormat: "d F Y",
        defaultDate: "today"
    });

    $('.select2').select2();



$('.getCartonName').select2({
    delay : 200,
    minimumInputLength: 2,
    tags:true,
    ajax: {
        url: '{{ route('admin.common.carton.name.list') }}?client_id='+ $('#client').val(),
        dataType: 'json',
        cache: true,
        data: function(params) {
            return {
                term: params.term || '',
                page: params.page || 1
            }
        },
    }
});


$('body').on('change', '#client', function(){
    var client_id = $(this).val();
    $('.getCartonName').select2({
        minimumInputLength: 2,
        tags:true,
        delay : 200,
        ajax: {
            url: '{{ route('admin.common.carton.name.list') }}?client_id='+ client_id,
            dataType: 'json',
            cache: true,
            data: function(params) {
            return {
                term: params.term || '',
                page: params.page || 1
            }
            },
        }
    });
});





var rowCounter = 0;
$('#kt_docs_repeater_advanced').repeater({
    defaultValues: {
        'text-input': 'foo'
    },

    show: function () {
        $(this).addClass('row-' + rowCounter);
        rowCounter++; 

        $(this).slideDown();
        $(this).find('.embossing_leafing').val(0);
        $(this).find('.other_coating_type').val(1);
        $(this).find('small.text-danger').html('');
        $(this).find('.form-group').removeClass('has-error');

        $('.getCartonName').select2({
            delay : 200,
            tags:true,
            minimumInputLength: 2,
            ajax: {
                url: '{{ route('admin.common.carton.name.list') }}',
                dataType: 'json',
                cache: true,
                data: function(params) {
                    return {
                        term: params.term || '',
                        page: params.page || 1
                    }
                },
            }
        });

        var $containers = $(this).find('.select2-container--default');
        if ($containers.length >= 2) {
            $containers.slice(1).remove();
        }
        

    },

    hide: function (deleteElement) {
        $(this).slideUp(deleteElement);
    }
});






$('body').on('change', '.getCartonName', function(){
    var id = $(this).val();
    var current_name = $(this).attr('name');
    var parts = current_name.split(/\[|\]/);
    var position = parts[1];
    $('input[name="kt_docs_repeater_advanced[' + position + '][pre_carton_name]"]').val(id);

    $.ajax({
        type: "GET",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.common.carton.name.single', '') }}/'+id,
        data: {'id':id},
        success:function(response){
            if(response.datas != ''){
                var data = response.datas;
                $('input[name="kt_docs_repeater_advanced[' + position + '][pre_carton_name]"]').val(data.carton_name);
                $('input[name="kt_docs_repeater_advanced[' + position + '][carton_size]"]').val(data.carton_size);
                $('input[name="kt_docs_repeater_advanced[' + position + '][rate]"]').val(data.rate);
                $('select[name="kt_docs_repeater_advanced[' + position + '][coating_type]"]').val(data.coating_type_id);
                $('select[name="kt_docs_repeater_advanced[' + position + '][other_coating_type]"]').val(data.other_coating_type_id);
                $('select[name="kt_docs_repeater_advanced[' + position + '][embossing_leafing]"]').val(data.embossing_leafing);
                $('select[name="kt_docs_repeater_advanced[' + position + '][paper_type]"]').val(data.paper_type_id);
                $('input[name="kt_docs_repeater_advanced[' + position + '][gsm]"]').val(data.gsm);
                $('input[name="kt_docs_repeater_advanced[' + position + '][art_work]"]').val(data.art_work);
                getDyeDetails(position);
            }
        }
    });
});

$(document).ready(function(){
    // Get carton size on document ready
    $('.cartonSize').each(function(){
        var position = $(this).attr('name').match(/\[(.*?)\]/)[1];
        getDyeDetails(position);
    });
});

$('body').on('change', '.cartonSize', function(){
    var name = $(this).attr('name');
    var parts = name.split(/\[|\]/);
    var position = parts[1];
    getDyeDetails(position);
});

function getDyeDetails(position){
    var carton_size = $('input[name="kt_docs_repeater_advanced[' + position + '][carton_size]"]').val();
    $('.dyeDetails').select2({
        delay : 200,
        ajax: {
            url: '{{ route('admin.common.dye-detail.list') }}?carton_size='+carton_size,
            dataType: 'json',
            cache: true,
            data: function(params) {
                return {
                    term: params.term || '',
                    page: params.page || 1
                }
            },
        }
    });
}
</script>
@endpush