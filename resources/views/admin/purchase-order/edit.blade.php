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
    .cant-delete{
        position: relative;
    }
    .cant-delete:after {
        content: '';
        position: absolute;
        top: 0;
        bottom: 0;
        width: 100%;
        height: 100%;
        display: block;
        background: #000000a3;
        z-index: 999;
        opacity: 0.1;
    }
</style>
@endpush




@section('main')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
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


        {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$po->id],'method'=>'put', 'files'=>true]) !!}

        <div class="card">
            <div class="card-body">
                <div class="row">

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('client') ? ' has-error' : '' }}">
                            {!! Form::label('client', 'Client') !!}
                            {!! Form::select('client', App\Models\Client::orderBy('company_name', 'asc')->pluck('company_name', 'id'), $po->client_id, ['id' => 'client', 'class' => 'form-control select2', 'placeholder' => 'Choose client']) !!}
                            <small class="text-danger">{{ $errors->first('client') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('po_no') ? ' has-error' : '' }}">
                            {!! Form::label('po_no', 'PO No.') !!}
                            {!! Form::text('po_no', $po->po_no, ['class' => 'form-control form-control-sm', 'placeholder' => 'Enter PO Number']) !!}
                            <small class="text-danger">{{ $errors->first('po_no') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('po_date') ? ' has-error' : '' }}">
                            {!! Form::label('po_date', 'PO Date') !!}
                            {!! Form::text('po_date', $po->po_date->format('d F, Y'), ['class' => 'form-control dateSelector form-control-sm', 'placeholder' => 'Enter PO Date']) !!}
                            <small class="text-danger">{{ $errors->first('po_date') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('po_remarks') ? ' has-error' : '' }}">
                            {!! Form::label('po_remarks', 'PO Remarks') !!}
                            {!! Form::text('po_remarks', $po->po_remarks, ['class' => 'form-control form-control-sm', 'placeholder' => 'PO Remarks']) !!}
                            <small class="text-danger">{{ $errors->first('po_remarks') }}</small>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <hr>
        

        <div  class="report-repeater">

            <!--begin::Repeater-->
            <div id="kt_docs_repeater_advanced">

                <div class="form-group">
                    <div data-repeater-list="kt_docs_repeater_advanced">


  @if($errors->count() == 0)
                    @foreach($po->purchaseOrderItems as $item)
                       {!! Form::hidden('item_id', $item->id) !!}
                      
                       <div data-repeater-item class="row-{{$loop->index}} @if($item['status_id'] != 2) cant-delete @endif">
                        <div class="card" style="position:relative;">
                            <input type="hidden" name="item" class="item-id" value="{{$item->id}}">
                            <div class="card-body">

                                 {!! Form::hidden('status_id', old('kt_docs_repeater_advanced.'.$loop->index.'.status_id', $item['status_id'] ?? '')) !!}
                                 
                                <div class="custom-row stock-error">

                                    <div class="col-width carton-name-main">

                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.carton_name') ? ' has-error' : '' }}">
                                            <label class="form-label">Carton Name</label>
                                            <select name="carton_name" class="form-select form-select-sm getCartonName" data-kt-repeater="select2" data-placeholder="Select an option">

                                                @if($item->carton_name)
                                                <option selected="selected" value="{{$item->carton_name}}">{{$item->carton_name}}</option>
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
                                            {!! Form::text('carton_size', $item->carton_size, ['class' => 'form-control form-control-sm cartonSize', 'required' => 'required', 'placeholder'=>'Carton Size']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.carton_size') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width quantity-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.quantity') ? ' has-error' : '' }}">
                                            {!! Form::label('quantity', 'Quantity') !!}
                                            {!! Form::number('quantity', $item->quantity, ['class' => 'form-control form-control-sm', 'required' => 'required', 'placeholder'=>'Quantity']) !!}
                                            {!! Form::hidden('old_quantity', $item->quantity) !!}
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


                                    <div class="col-width back-print">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.back_print') ? ' has-error' : '' }}">
                                            {!! Form::label('back_print', 'Back Print') !!}
                                            {!! Form::select('back_print', [1 => 'Yes', 0 => 'No'], $item->back_print, ['id' => 'back_print', 'class' => 'form-control form-select-sm', 'required' => 'required', 'placeholder'=>'Choose Coating Type']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.back_print') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width rate-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.rate') ? ' has-error' : '' }}">
                                            {!! Form::label('rate', 'Rate') !!}
                                            <div class="input-group input-group-sm">
                                                <span class="input-group-text">₹</span>
                                                {!! Form::text('rate', $item->rate, ['class' => 'form-control form-control-sm rate', 'placeholder' => 'Rate']) !!}
                                            </div>
                                           <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.rate') }}</small>
                                        </div>
                                    </div>

                                    <div class="col-width gsm-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.gsm') ? ' has-error' : '' }}">
                                            {!! Form::label('gsm', 'GSM') !!}
                                            {!! Form::text('gsm', $item->gsm, ['class' => 'form-control form-control-sm', 'placeholder'=>'GSM']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.gsm') }}</small>
                                        </div>
                                    </div>


                                </div>


                                    

                                <div class="custom-row stock-error second-row">
                                    

                                    <div class="col-width coating-machine-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.coating_type') ? ' has-error' : '' }}">
                                            {!! Form::label('coating_type', 'Coating Type') !!}
                                            {!! Form::select('coating_type', App\Models\CoatingType::pluck('type', 'id'), $item->coating_type_id, ['id' => 'coating_type', 'class' => 'form-control form-select-sm', 'required' => 'required', 'placeholder'=>'Choose Coating Type']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.coating_type') }}</small>
                                        </div>
                                    </div>

                                    <div class="col-width coating-machine-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.other_coating_type') ? ' has-error' : '' }}">
                                            {!! Form::label('other_coating_type', 'Other Coating Type') !!}
                                            {!! Form::select('other_coating_type', App\Models\OtherCoatingType::pluck('type', 'id'), $item->other_coating_type_id, ['id' => 'other_coating_type', 'class' => 'form-control form-select-sm other_coating_type', 'required' => 'required', 'placeholder'=>'Choose Other Coating Type']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.other_coating_type') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width embossing-leafing-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.embossing_leafing') ? ' has-error' : '' }}">
                                            {!! Form::label('embossing_leafing', 'Embossing/Leafing') !!}
                                            {!! Form::select('embossing_leafing', [0=>'None', 1=>'Embossing', 2=>'Leafing', 3=>'Both'], $item->embossing_leafing, ['id' => 'embossing_leafing', 'class' => 'form-control form-select-sm embossing_leafing', 'required' => 'required', 'placeholder'=>'Choose Embossing/Leafing']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.embossing_leafing') }}</small>
                                        </div>
                                    </div>


                                    <div class="col-width paper-type-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.paper_type') ? ' has-error' : '' }}">
                                            {!! Form::label('paper_type', 'Paper Type') !!}
                                            {!! Form::select('paper_type', App\Models\ProductType::pluck('type', 'id'), $item->paper_type_id, ['id' => 'paper_type', 'class' => 'form-control form-select-sm', 'required' => 'required', 'placeholder'=>'Choose Paper Type']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.paper_type') }}</small>
                                        </div>
                                    </div>

                                    <div class="col-width paper-type-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.dye_details') ? ' has-error' : '' }}">
                                            {!! Form::label('dye_details', 'Dye Details') !!}
                                            {!! Form::select('dye_details', App\Models\DyeDetails::selectRaw('id, CONCAT(dye_no, " | ", dye_lock, " | ", ups, " | ", sheet_size, " | ", carton_size) AS text')->where('id', $item->dye_details_id)->pluck('text', 'id'), $item->dye_details_id, ['id' => 'dye_details'.$loop->index, 'class' => 'form-control form-control-sm dyeDetails', 'placeholder' => 'Dye Details']) !!}
                                            <small class="text-muted">Dye No. | Dye Lock | UPS</small>
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.dye_details') }}</small>
                                        </div>
                                    </div>

                                    <div class="col-width remarks-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.remarks') ? ' has-error' : '' }}">
                                            {!! Form::label('remarks', 'Remarks') !!}
                                            {!! Form::text('remarks', old('kt_docs_repeater_advanced.'.$loop->index.'.remarks', $item['remarks'] ?? ''), ['class' => 'form-control form-control-sm', 'placeholder'=>'Remarks']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.remarks') }}</small>
                                        </div>
                                    </div>

                                    
                                    @if($item['status_id'] == 2)

                                    <div class="form-group remove-item">
                                        <div class="form-group text-end">
                                            <button data-repeater-delete type="button" class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                        </div>
                                    </div>
                                    @else
                                        <div class="form-group remove-item">
                                            <div class="form-group text-end">
                                                <button  type="button" disabled class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                            </div>
                                        </div>
                                    @endif
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
                       @php
                        $status = old('kt_docs_repeater_advanced.'.$loop->index.'.status_id', $item['status_id']);
                       @endphp
                      <div data-repeater-item class="row-{{$loop->index}} @if($status != 2) cant-delete @endif">
                        <div class="card" style="position:relative;">
                            <div class="card-body">
                                <div class="custom-row stock-error">
<input type="hidden" name="item" class="item-id" value="{{old('kt_docs_repeater_advanced.'.$loop->index.'.item', $item['item'] ?? '')}}">
                                    <div class="col-width carton-name-main">

                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.carton_name') ? ' has-error' : '' }}">
                                            <label class="form-label">Carton Name</label>
                                            <select name="carton_name" class="form-select form-select-sm getCartonName" data-kt-repeater="select2" data-placeholder="Select an option">

                                                @if(old('kt_docs_repeater_advanced.'.$loop->index.'.carton_name'))
                                                <option selected="selected" value="{{old('kt_docs_repeater_advanced.'.$loop->index.'.carton_name', $item['carton_name'] ?? '')}}">{{old('kt_docs_repeater_advanced.'.$loop->index.'.carton_name', $item['carton_name'] ?? '')}}</option>
                                                @else
                                                @endif
                                            </select>
                                            {!! Form::hidden('pre_carton_name', old('kt_docs_repeater_advanced.'.$loop->index.'.pre_carton_name', $item['pre_carton_name'] ?? '')) !!}

                                            {!! Form::hidden('carton_id', old('kt_docs_repeater_advanced.'.$loop->index.'.carton_id', $item['carton_id'] ?? '')) !!}
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


                                    <div class="col-width back-print">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.back_print') ? ' has-error' : '' }}">
                                            {!! Form::label('back_print', 'Back Print') !!}
                                            {!! Form::select('back_print', [1 => 'Yes', 0 => 'No'], old('kt_docs_repeater_advanced.'.$loop->index.'.back_print', $item['back_print'] ?? 0), ['id' => 'back_print', 'class' => 'form-control form-select-sm back_print', 'placeholder'=>'Back Print']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.back_print') }}</small>
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
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.dye_details') ? ' has-error' : '' }}">
                                            {!! Form::label('dye_details', 'Dye Details') !!}
                                            {!! Form::select('dye_details', App\Models\DyeDetails::selectRaw('id, CONCAT(dye_no, " | ", dye_lock, " | ", ups, " | ", sheet_size, " | ", carton_size) AS text')->pluck('text', 'id'), old('kt_docs_repeater_advanced.'.$loop->index.'.dye_details', $item['dye_details'] ?? ''), ['id' => 'dye_details', 'class' => 'form-control form-control-sm dyeDetails', 'placeholder' => 'Dye Details']) !!}
                                            <small class="text-muted">Dye No. | Dye Lock | UPS</small>
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.dye_details') }}</small>
                                        </div>
                                    </div>




                                    <div class="col-width remarks-main">
                                        <div class="form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.remarks') ? ' has-error' : '' }}">
                                            {!! Form::label('remarks', 'Remarks') !!}
                                            {!! Form::text('remarks', old('kt_docs_repeater_advanced.'.$loop->index.'.remarks', $item['remarks'] ?? ''), ['class' => 'form-control form-control-sm', 'placeholder'=>'Remarks']) !!}
                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.remarks') }}</small>
                                        </div>
                                    </div>


                                    

                                    @if($status == 2)

                                    <div class="form-group remove-item">
                                        <div class="form-group text-end">
                                            <button data-repeater-delete type="button" class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                        </div>
                                    </div>
                                    @else
                                        <div class="form-group remove-item">
                                            <div class="form-group text-end">
                                                <button  type="button" disabled class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                            </div>
                                        </div>
                                    @endif
                                    
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

  

    $(".dateSelector").each(function() {
        var defaultDate = $(this).val() ? null : "today";
        $(this).flatpickr({
            dateFormat: "d F, Y",
            defaultDate: defaultDate
        });
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
        var client_id = $('#client').val();
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
        var $containers = $(this).find('.select2-container--default');
        if ($containers.length >= 2) {
            $containers.slice(1).remove();
        }
        

    },

    hide: function (deleteElement) {
        var deletedId = $(this).find('.item-id').val();
        var input = '<input type="hidden" value="'+deletedId+'" name="deleted[]">';
        $('form').append(input);
        $(this).slideUp(deleteElement);

    }
});
// show: function () {
//         $(this).addClass('row-' + rowCounter);
//         rowCounter++; 

//         $(this).slideDown();
//         $(this).find('.embossing_leafing').val(0);
//         $(this).find('.other_coating_type').val(1);
//         $(this).find('small.text-danger').html('');
//         $(this).find('.form-group').removeClass('has-error');
//     },

//     hide: function (deleteElement) {
        // var deletedId = $(this).find('.item-id').val();
        // var input = '<input type="hidden" value="'+deletedId+'" name="deleted[]">';
        // $('form').append(input);
        // $(this).slideUp(deleteElement);
        
//     }

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
                $('input[name="kt_docs_repeater_advanced[' + position + '][carton_id]"]').val(data.id);
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
    $('select[name="kt_docs_repeater_advanced[' + position + '][dye_details]"]').select2({
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