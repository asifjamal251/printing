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

                {!! Form::open(['route'=>'admin.'.request()->segment(2).'.store', 'files'=>true]) !!}

                <div class="row">

  

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('length') ? ' has-error' : '' }}">
                            {!! Form::label('length', 'Length') !!}
                            {!! Form::text('length', null, ['class' => 'form-control', 'placeholder' => 'Length']) !!}
                            <small class="text-danger">{{ $errors->first('length') }}</small>
                        
                       </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('width') ? ' has-error' : '' }}">
                            {!! Form::label('width', 'Width') !!}
                            {!! Form::text('width', null, ['class' => 'form-control', 'placeholder' => 'Width']) !!}
                            <small class="text-danger">{{ $errors->first('width') }}</small>
                        </div>
                     </div>

                     <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('height') ? ' has-error' : '' }}">
                            {!! Form::label('height', 'Height') !!}
                            {!! Form::text('height', null, ['class' => 'form-control', 'placeholder' => 'Height']) !!}
                            <small class="text-danger">{{ $errors->first('height') }}</small>
                        </div>
                     </div>

                     <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('dye_lock') ? ' has-error' : '' }}">
                            {!! Form::label('dye_lock', 'Dye Lock') !!}
                            {!! Form::select('dye_lock', ['bt'=>'BT', 'catch cover'=>'catch cover', 'interlock'=>'interlock', 'lockbottom'=>'lockbottom', 'BSO'=>'BSO', 'tube'=>'tube'], null, ['id' => 'dye_lock', 'class' => 'form-control', 'placeholder' => 'Dye Lock']) !!}
                            <small class="text-danger">{{ $errors->first('dye_lock') }}</small>
                        </div>
                     </div>

                     <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('sheet_size') ? ' has-error' : '' }}">
                            {!! Form::label('sheet_size', 'Sheet Size') !!}
                            {!! Form::text('sheet_size', null, ['class' => 'form-control', 'placeholder' => 'Sheet Size']) !!}
                            <small class="text-danger">{{ $errors->first('sheet_size') }}</small>
                        </div>
                     </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('ups') ? ' has-error' : '' }}">
                            {!! Form::label('ups', 'UPS') !!}
                            {!! Form::text('ups', null, ['class' => 'form-control', 'placeholder' => 'UPS']) !!}
                            <small class="text-danger">{{ $errors->first('ups') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('automatic_manual') ? ' has-error' : '' }}">
                            {!! Form::label('automatic_manual', 'Automatic/Manual') !!}
                            {!! Form::select('automatic_manual', [1 => 'Automatic', 0 => 'Manual'], null, ['id' => 'automatic_manual', 'class' => 'form-control', 'placeholder' => 'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('automatic_manual') }}</small>
                        </div>
                    </div>

                  <div class="form-group col-md-3 col-sm-12" style="margin-top:28px;">
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