@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
<link rel="stylesheet" href="{{asset('admin-assets/libs/flatpickr/flatpickr.min.css')}}"> 
<style>
    .custom-row {
        width: 100%;
        display: flex;
        gap: 5px;
    }
    .form-group.col-product {
        width: 20%;
    }
    .form-group {
        margin-bottom: 0!important;
    }
    .form-group.col-gst {
        max-width: 80px;
    }
     .form-group.col-gst {
        max-width: 100px;
    }
    .form-group.rate-amount {
        max-width: 140px;
    }
    .col-unit {
        max-width: 70px;
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

    @media(max-width:1366px){
        .custom-row label {
            font-weight: 500;
            margin-bottom: 0.5rem;
            font-size: 12px;
        }
    }

    .form-group label {
        font-size: 11px;
    }
    span.select2-container .select2-dropdown {
        width: 350px!important;
    }
    .form-control-sm{
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


        {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$material->id],'method'=>'put', 'files'=>true]) !!}


        

        <div  class="report-repeater">

            <!--begin::Repeater-->
            <div id="kt_docs_repeater_advanced">

                <div class="form-group">
                    <div data-repeater-list="kt_docs_repeater_advanced">


  @if($errors->count() == 0)
                    @foreach($material->issueItems as $item)
                        @php
                            $product = App\Models\Product::where('id', $item->product_id)->first();
                        @endphp
                       <div data-repeater-item class="row-{{$item->id}}">
                        <input type="hidden" name="item" class="item-id" value="{{$item->id}}">
                        <div class="card" style="position:relative;">
                            <div class="card-body">
                                <div class="custom-row stock-error">

                                    <div class="form-group col-product">
                                        <div class="form-group{{ $errors->has('issue_for') ? ' has-error' : '' }}">
                                            {!! Form::label('issue_for', 'Issue For') !!}
                                            {!! Form::select('issue_for', App\Models\Requisition::orderBy('name', 'asc')->pluck('name', 'id'),  $item->requisition_id, ['id' => 'issue_for', 'class' => 'form-control form-control-sm', 'placeholder' => 'Issue For']) !!}
                                            <small class="text-danger">{{ $errors->first('issue_for') }}</small>
                                        </div>
                                    </div>


                                    <div class="form-group col-product">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.job_type') ? ' has-error' : '' }}">
                                            <label class="form-label">Choose Product</label>
                                            <select name="product" class="form-select form-select-sm getProduct" data-kt-repeater="select2" data-placeholder="Select an option">

                                                <option selected="selected" value="{{$item->product_id}}">{{App\Models\Product::where('id', $item->product_id)->value('name')}}</option>
                                               
                                            </select>

                                            {!! Form::hidden('old_product_id', $item->product_id) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.product') }}</small>
                                        </div>
                                    </div>



                                    <div class="form-group col-quantity">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.quantity') ? ' has-error' : '' }}">
                                            {!! Form::label('quantity', 'Quantity') !!} <span name="stock" class="stock badge bg-success"></span>
                                            {!! Form::text('quantity', $item->quantity, ['class' => 'form-control form-control-sm quantity', 'placeholder' => 'Quantity']) !!}
                                            {!! Form::hidden('old_quantity', $item->quantity) !!}
                                           <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.quantity') }}</small>
                                        </div>
                                    </div>


                                    <div class="form-group col-unit">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.unit') ? ' has-error' : '' }}">
                                            {!! Form::label('unit', 'Unit') !!}
                                            {!! Form::text('unit', $item->unit, ['class' => 'form-control form-control-sm', 'placeholder' => 'Unit', 'readonly']) !!}
                                          <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.unit') }}</small>
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
                @if($loop->last)
                    <input type="hidden" class="newItem" value="{{$loop->index+1}}">
                @endif
                @endforeach

@endif




                    @if($errors->count() > 0)
                       @foreach(old('kt_docs_repeater_advanced', [[]]) as $item)
                       <div data-repeater-item class="row-{{$loop->index}}">
                        <div class="card" style="position:relative;">
                            <div class="card-body">
                                <div class="custom-row stock-error">

                                    <div class="form-group col-product">
                                        <div class="form-group{{ $errors->has('issue_for') ? ' has-error' : '' }}">
                                            {!! Form::label('issue_for', 'Issue For') !!}
                                            {!! Form::select('issue_for', App\Models\Requisition::orderBy('name', 'asc')->pluck('name', 'id'),  old('kt_docs_repeater_advanced.'.$loop->index.'.issue_for', $item['issue_for'] ?? ''), ['id' => 'issue_for', 'class' => 'form-control form-control-sm', 'placeholder' => 'Issue For']) !!}
                                            <small class="text-danger">{{ $errors->first('issue_for') }}</small>
                                        </div>
                                    </div>

                                    <div class="form-group col-product">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.job_type') ? ' has-error' : '' }}">
                                            <label class="form-label">Choose Product</label>
                                            <select name="product" class="form-select form-select-sm getProduct" data-kt-repeater="select2" data-placeholder="Select an option">

                                                @if(old('kt_docs_repeater_advanced.'.$loop->index.'.product'))
                                                <option selected="selected" value="{{$item['product']}}">{{App\Models\Product::where('id', $item['product'])->value('name')}}</option>
                                                @else
                                                <option></option>
                                                @endif
                                            </select>
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.product') }}</small>
                                        </div>
                                    </div>

                                    

                                    <div class="form-group col-quantity">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.quantity') ? ' has-error' : '' }}">
                                            {!! Form::label('quantity', 'Quantity') !!} <span name="stock" class="stock badge bg-success"></span>
                                            {!! Form::text('quantity', old('kt_docs_repeater_advanced.'.$loop->index.'.quantity', $item['quantity'] ?? ''), ['class' => 'form-control form-control-sm quantity', 'placeholder' => 'Quantity']) !!}
                                            {!! Form::hidden('old_quantity', 0) !!}
                                           <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.quantity') }}</small>
                                        </div>
                                    </div>



                                    <div class="form-group col-unit">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.unit') ? ' has-error' : '' }}">
                                            {!! Form::label('unit', 'Unit') !!}
                                            {!! Form::text('unit', old('kt_docs_repeater_advanced.'.$loop->index.'.unit', $item['unit'] ?? ''), ['class' => 'form-control form-control-sm', 'placeholder' => 'Unit']) !!}
                                          <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.unit') }}</small>
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
                 @endif
            </div>
        </div>
        <!--end::Form group-->




        

        <div class="row">
            <div class="col-md-6 text-start"></div>
            <div class="col-md-6 text-end">
                <div class="" style="width:100%;text-align:right;display: inline-block;">
                    <button data-repeater-create type="button" class="btn-label btn btn-success text-end btn-sm" style="margin-bottom: 20px;"><i class="label-icon align-middle fs-16 me-2 bx bx-plus-circle"></i> Add New Row</button>
                </div>
            </div>
        </div>
    <hr>
        <div class="row mb-3">
            <div class="col-md-8 text-start">
            <div style="max-width: 300px; float:left;margin-bottom:20px;">
                    

                    <div class="form-group">
                        {!! Form::submit('Update Material Inward', ['class' => 'btn btn-secondary btn-animation waves-effect waves-light']) !!}
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-end">
                

                
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
 function totalAmount(){
        var gst_amount = 0;
        var subtotal = 0;
        var rate = 0;
        $(".custom-row ").each(function(){
            gst_amount += parseFloat($(this).find('.gst_amount').val());
            subtotal += parseFloat($(this).find('.rate').val());
        });
        $('#subtotal').val(subtotal.toFixed(2));
        $('#total_gst').val(gst_amount.toFixed(2));
        $('#total').val((subtotal+gst_amount).toFixed(2));
    }

    function getCalculatedData(position){
        var quantity = $('input[name="kt_docs_repeater_advanced[' + position + '][quantity]"]').val();
        var packet_item = $('input[name="kt_docs_repeater_advanced[' + position + '][item_per_packet]"]').val();
        var weight_per_piece = $('input[name="kt_docs_repeater_advanced[' + position + '][weight_per_piece]"]').val();
        var rate_on = $('input[name="kt_docs_repeater_advanced[' + position + '][rate_on]"]').val();
        var gst = $('input[name="kt_docs_repeater_advanced[' + position + '][gst]"]').val();

        if(quantity.length > 0 && packet_item.length > 0){
            var total_qty = parseFloat(quantity) * parseFloat(packet_item); 
            $('input[name="kt_docs_repeater_advanced[' + position + '][total_item]"]').val(total_qty);

            if(packet_item.length > 0 && weight_per_piece.length > 0){
                var total_weight = (total_qty*weight_per_piece).toFixed(2);
                $('input[name="kt_docs_repeater_advanced[' + position + '][total_weight]"]').val(total_weight);
                $('.rate_on[name="kt_docs_repeater_advanced[' + position + '][rate_on]"]').removeAttr('readonly');
                if(rate_on.length){
                    var rate = (total_weight*rate_on).toFixed(2);
                    $('input[name="kt_docs_repeater_advanced[' + position + '][rate]"]').val(rate);
                    $('input[name="kt_docs_repeater_advanced[' + position + '][amount]"]').val(rate);
                    $('.gst[name="kt_docs_repeater_advanced[' + position + '][gst]"]').removeAttr('readonly');
                    if(gst.length){
                        var gst_amount = (rate*gst/100).toFixed(2);
                        var amount = parseFloat(gst_amount)+parseFloat(rate);
                        $('input[name="kt_docs_repeater_advanced[' + position + '][gst_amount]"]').val(parseFloat(gst_amount).toFixed(2));
                        //$('input[name="kt_docs_repeater_advanced[' + position + '][amount]"]').val(rate);

                        totalAmount();
                    }
                }
            }
        }
    }

    $(".dateSelector").each(function() {
        var defaultDate = $(this).val() ? null : "today";
        $(this).flatpickr({
            dateFormat: "d F, Y",
            defaultDate: defaultDate
        });
    });

    $('.select2').select2();


 $('.getProduct').select2({
        delay : 200,
        minimumInputLength: 2,
        ajax: {
            url: '{{ route('admin.common.product.list') }}',
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

 var rowCounter = 0;
$('#kt_docs_repeater_advanced').repeater({
    defaultValues: {
        'text-input': 'foo'
    },

    show: function () {
        $(this).addClass('row-' + rowCounter);
        rowCounter++; 

        $(this).slideDown();
        $(this).find('small.text-danger').html('');
        $(this).find('.form-group').removeClass('has-error');
       

        $('.getProduct').select2({
            delay : 200,
            minimumInputLength: 2,
            ajax: {
                url: '{{ route('admin.common.product.list') }}',
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
        var deletedId = $(this).find('.item-id').val();
        var input = '<input type="hidden" value="'+deletedId+'" name="deleted[]">';
        $('form').append(input);
        setTimeout(function(){
            totalAmount();
        }, 500);
        $(this).slideUp(deleteElement);
        
    }
});

$('body').on('change', '.getProduct', function(){
    var product_id = $(this).val();

    var current_name = $(this).attr('name');
    var parts = current_name.split(/\[|\]/);
    var position = parts[1];

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.common.product.single') }}',
        data: {'id':product_id, '_method': 'POST', '_token': '{{ csrf_token() }}'},
        success:function(response){
            
            if(response.error === false){
                var data = response.datas;
                $('span[name="kt_docs_repeater_advanced[' + position + '][stock]"]').html(data.quantity);
                $('input[name="kt_docs_repeater_advanced[' + position + '][unit]"]').val(data.unit['code']);
                $('.quantity[name="kt_docs_repeater_advanced[' + position + '][quantity]"]').removeAttr('readonly');
            }

        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();

        }
    });
    
});

$('body').on('change', '.quantity', function(){
    var current_name = $(this).attr('name');
    var parts = current_name.split(/\[|\]/);
    var position = parts[1];

    getCalculatedData(position);
});

$('body').on('change', '.rate_on', function(){
    var current_name = $(this).attr('name');
    var parts = current_name.split(/\[|\]/);
    var position = parts[1];

    getCalculatedData(position);
});

$('body').on('change', '.gst', function(){
    var current_name = $(this).attr('name');
    var parts = current_name.split(/\[|\]/);
    var position = parts[1];

    getCalculatedData(position);
});


$('body').on('change', '.item-per-packet', function(){
    var current_name = $(this).attr('name');
    var parts = current_name.split(/\[|\]/);
    var position = parts[1];

    getCalculatedData(position);
});

</script>
@endpush