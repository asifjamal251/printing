@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/dropify/css/dropify.min.css')}}"> 
<link rel="stylesheet" href="{{asset('admin-assets/libs/summernote/summernote-bs4.min.css')}}"> 

@endpush




@section('main')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            @can('add_admin')
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
    <div class="card-content">
        <div class="card-body">
          {!! Form::open(['method' => 'POST', 'route' => 'admin.slider.store', 'class' => 'form-horizontal','files'=>true]) !!}

            <div class="row my-1">
                <div class="col-lg-7 col-7">

                    
                        <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                            {!! Form::label('title', 'Title') !!}
                            {!! Form::text('title', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'title']) !!}
                            <small class="text-danger">{{ $errors->first('title') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('sub_title') ? ' has-error' : '' }}">
                            {!! Form::label('sub_title', 'Sub Title') !!}
                            {!! Form::text('sub_title', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Sub title']) !!}
                            <small class="text-danger">{{ $errors->first('sub_title') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('button_text') ? ' has-error' : '' }}">
                            {!! Form::label('button_text', 'Text On Button') !!}
                            {!! Form::text('button_text', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Text On Button']) !!}
                            <small class="text-danger">{{ $errors->first('button_text') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('button_link') ? ' has-error' : '' }}">
                            {!! Form::label('button_link', 'Link On Button') !!}
                            {!! Form::text('button_link', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Link On Button']) !!}
                            <small class="text-danger">{{ $errors->first('button_link') }}</small>
                        </div>
                    
                        <div class="btn-group">
                            {!! Form::submit("Add Slider", ['class' => 'btn btn-info']) !!}
                        </div>
                    

                </div>

                <div class="col-lg-5 col-5">

                    
                   
                    <div class="form-group">
                        <div class="checkbox{{ $errors->has('status') ? ' has-error' : '' }}">
                            {!! Form::label('status', 'Status') !!}<br>
                             {!! Form::checkbox('status', '1', 1, ['id' => 'switch1','class'=>'switch']) !!} 
                        </div>
                        <small class="text-danger">{{ $errors->first('status') }}</small>
                    </div>

                  <div class="form-group {{ $errors->has('image') ? ' has-error' : '' }}">

                            {!! Form::label('image', 'Slider Image') !!}

                            {!! Form::file('image', ['class'=>'dropify']) !!}

                            <small class="text-danger">{{ $errors->first('image') }}</small>

                    </div>
                </div>
            </div>
            {!! Form::close() !!}

        </div>
             
    </div>
</div>
    </div>
</div>
@endsection
@push('scripts')


@endpush