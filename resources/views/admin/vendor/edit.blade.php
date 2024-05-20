@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/dropify/css/dropify.min.css')}}"> 
<style type="text/css">
    textarea {
        resize: none!important; 
        overflow: hidden; 
        border: none; 
        outline: none; 
        width: 100%;
        height: auto;
    }
</style>
@endpush




@section('main')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            @can('add_vendor')
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

                 {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$vendor->id],'method'=>'put', 'files'=>true]) !!}
                <div class="row">
                    <div class="col-md-12 col-sm-12">

                        <div class="row">

                            <div class="form-group col-md-3 col-sm-12">
                                <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                    {!! Form::label('name', 'Name') !!}
                                    {!! Form::text('name', $vendor->name, ['class' => 'form-control', 'placeholder' => 'Enter Name']) !!}
                                    <small class="text-danger">{{ $errors->first('name') }}</small>
                                </div>
                            </div>


                            <div class="form-group col-md-3 col-sm-12">
                                <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                    {!! Form::label('email', 'Email address') !!}
                                    {!! Form::email('email', $vendor->email, ['class' => 'form-control', 'placeholder' => 'eg: foo@bar.com']) !!}
                                    <small class="text-danger">{{ $errors->first('email') }}</small>
                                </div>
                            </div>


                             <div class="form-group col-md-3 col-sm-12">
                                <div class="form-group{{ $errors->has('phone_no') ? ' has-error' : '' }}">
                                    {!! Form::label('phone_no', 'Phone No.') !!}
                                    {!! Form::text('phone_no', $vendor->phone_no, ['class' => 'form-control', 'placeholder' => 'Phone No.']) !!}
                                    <small class="text-danger">{{ $errors->first('phone_no') }}</small>
                                </div>
                             </div>

                             <div class="col-md-3 col-sm-12">
                                <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                                    {!! Form::label('address', 'Address') !!}
                                    {!! Form::textarea('address', $vendor->address, ['class' => 'form-control', 'placeholder' => 'Enter Full Address','rows'=>1, 'oninput'=>'adjustHeight()']) !!}
                                    <small class="text-danger">{{ $errors->first('address') }}</small>
                                </div>
                            </div>
                             

                              <div class="text-center form-group col-md-12 col-sm-12" style="margin-top:25px;">
                                  {!! Form::submit('Update '.Str::title(str_replace('-', ' ', request()->segment(2))), ['class' => 'btn btn-info']) !!}
                              </div>


                        </div>
                    </div>

                    

                </div>
       

        {!! Form::close() !!} 
    </div>
</div>
</div>
</div>



@endsection




@push('scripts')
<script>
    function adjustHeight() {
        var textarea = document.querySelector('textarea');
        textarea.style.height = 'auto';
        textarea.style.height = textarea.scrollHeight + 'px'; 
        displayArea.innerText = textarea.value;
    }
</script>
@endpush