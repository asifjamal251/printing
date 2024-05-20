@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/dropify/css/dropify.min.css')}}"> 
@endpush




@section('main')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            @can('add_client')
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
        <div class="card">
            <div class="card-body">

                {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$dye_details->id],'method'=>'put', 'files'=>true]) !!}

                <div class="row">

                    <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('dye_no') ? ' has-error' : '' }}">
                            {!! Form::label('dye_no', 'Dye No.') !!}
                            {!! Form::text('dye_no', $dye_details->dye_no, ['class' => 'form-control', 'placeholder' => 'Dye No.']) !!}
                            <small class="text-danger">{{ $errors->first('dye_no') }}</small>
                        </div>
                    </div>



                    <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('length') ? ' has-error' : '' }}">
                            {!! Form::label('length', 'Lengthl') !!}
                            {!! Form::text('length', $dye_details->length, ['class' => 'form-control', 'placeholder' => 'Length']) !!}
                            <small class="text-danger">{{ $errors->first('length') }}</small>
                        
                       </div>
                    </div>

                    <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('width') ? ' has-error' : '' }}">
                            {!! Form::label('width', 'Width') !!}
                            {!! Form::text('width', $dye_details->width, ['class' => 'form-control', 'placeholder' => 'Width']) !!}
                            <small class="text-danger">{{ $errors->first('width') }}</small>
                        </div>
                     </div>

                     <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('height') ? ' has-error' : '' }}">
                            {!! Form::label('height', 'Height') !!}
                            {!! Form::text('height', $dye_details->height, ['class' => 'form-control', 'placeholder' => 'Height']) !!}
                            <small class="text-danger">{{ $errors->first('height') }}</small>
                        </div>
                     </div>


                     <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('sheet_size') ? ' has-error' : '' }}">
                            {!! Form::label('sheet_size', 'Sheet Size') !!}
                            {!! Form::text('sheet_size', $dye_details->sheet_size, ['class' => 'form-control', 'placeholder' => 'Sheet Size']) !!}
                            <small class="text-danger">{{ $errors->first('sheet_size') }}</small>
                        </div>
                     </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('ups') ? ' has-error' : '' }}">
                            {!! Form::label('ups', 'UPS') !!}
                            {!! Form::text('ups', $dye_details->ups, ['class' => 'form-control', 'placeholder' => 'UPS']) !!}
                            <small class="text-danger">{{ $errors->first('ups') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('automatic_menual') ? ' has-error' : '' }}">
                            {!! Form::label('automatic_menual', 'Automatic/Menual') !!}
                            {!! Form::select('automatic_menual', [1 => 'Automatic', 0 => 'Menual'], $dye_details->automatic, ['id' => 'automatic_menual', 'class' => 'form-control', 'placeholder' => 'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('automatic_menual') }}</small>
                        </div>
                    </div>

                  <div class="form-group col-md-6 col-sm-12">
                      {!! Form::submit('Save Client Data', ['class' => 'btn btn-info pull-right']) !!}
                  </div>

                </div>
       

        {!! Form::close() !!} 
    </div>
</div>
</div>
</div>



@endsection




@push('scripts')
@endpush