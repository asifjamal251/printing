@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')


                  <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>

                    <div class="page-title-right">
                        <a href="{{ route('admin.'.request()->segment(2).'.create') }}"  class="btn-sm btn btn-primary btn-label rounded-pill">
                            <i class="bx bx-plus label-icon align-middle rounded-pill fs-16 me-2"></i>
                            Add {{Str::title(str_replace('-', ' ', request()->segment(2)))}}
                        </a>
                    </div>

                </div>
            </div>
        </div>
        <!-- end page title -->

<div class="card">
    <div class="card-content">
        <div class="card-body">
            <div class="row my-1">
                <div class="col-lg-12 col-12">

                    {!! Form::open(['route'=>'admin.role.store']) !!}

                        <div class="form-group">

                            <label for="">Name</label>

                            {!! Form::text('name', '' , ['class'=>'form-control']) !!}

                             <b class="text-danger">{{$errors->first('name')}}</b>

                        </div>

                        <div class="form-group">

                            <button class="btn btn-success pull-right">Create</button>

                            <a style=" margin-right: 14px;padding: 7px;width: 71px;background: #dcd7d7;" class="btn btn-default pull-right" id="back">Back</a>

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