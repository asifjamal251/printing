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
        <div class="page-title-box d-flex align-items-center justify-content-between">
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

                 {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$vendor->id],'method'=>'put', 'files'=>true]) !!}
                <div class="row">
            <div class="col-md-12 col-sm-12">

                <div class="row">

                    <div class="col-md-6 col-sm-12">
                     <div class="card">
                        <div class="card-body">

                            <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                {!! Form::label('name', 'Name') !!}
                                {!! Form::text('name', $vendor->name, ['class' => 'form-control', 'placeholder' => 'Enter Name']) !!}
                                <small class="text-danger">{{ $errors->first('name') }}</small>
                            </div>
                            
                            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                {!! Form::label('email', 'Email address') !!}
                                {!! Form::email('email', $vendor->email, ['class' => 'form-control', 'placeholder' => 'eg: foo@bar.com']) !!}
                                <small class="text-danger">{{ $errors->first('email') }}</small>
                            </div>
                            
                            <div class="form-group{{ $errors->has('phone_no') ? ' has-error' : '' }}">
                                {!! Form::label('phone_no', 'Phone No.') !!}
                                {!! Form::text('phone_no', $vendor->phone_no, ['class' => 'form-control', 'placeholder' => 'Phone No.']) !!}
                                <small class="text-danger">{{ $errors->first('phone_no') }}</small>
                            </div>

                            <div class="form-group{{ $errors->has('gst') ? ' has-error' : '' }}">
                                {!! Form::label('gst', 'GST') !!}
                                {!! Form::text('gst', $vendor->gst, ['class' => 'form-control', 'placeholder' => 'GST']) !!}
                                <small class="text-danger">{{ $errors->first('gst') }}</small>
                            </div>

                            <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                                {!! Form::label('address', 'Address') !!}
                                {!! Form::textarea('address', $vendor->address, ['class' => 'form-control', 'placeholder' => 'Address', 'rows'=>3]) !!}
                                <small class="text-danger">{{ $errors->first('address') }}</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            {!! Form::label('logo', 'Logo') !!}
                        </div>
                        <div class="card-body">
                            <small class="text-danger">{{ $errors->first('logo') }}</small>
                            <div class="media-area" file-name="logo">
                                <div class="media-file-value">
                                    @if($vendor->media)
                                        <input type="hidden" name="logo[]" value="{{$vendor->media_id}}" class="fileid{{$vendor->media_id}}">
                                    @endif
                                </div>
                                <div class="media-file">
                                    @if($vendor->media)
                                        <div class="file-container d-inline-block fileid{{$vendor->media_id}}">
                                            <span data-id="{{$vendor->media_id}}" class="remove-file">✕</span>
                                            <img class="w-100 d-block img-thumbnail" src="{{asset($vendor->media->file)}}" alt="{{$vendor->media->name}}">
                                        </div>
                                    @endif
                                </div>
                                <a class="text-secondary select-mediatype" href="javascript:void(0);" mediatype='single' onclick="loadMediaFiles($(this))">Select Image</a>
                            </div>

                        </div>
                    </div>

                       <div class="card">
                            <div class="card-body">
                                <div class="form-group{{ $errors->has('email_cc') ? ' has-error' : '' }}">
                                    {!! Form::label('email_cc', 'Email CC') !!} 
                                    {!! Form::textarea('email_cc', $vendor->mail_cc, ['class' => 'form-control', 'placeholder' => 'test@example.com, abcd@example.com']) !!}
                                    <small class="help-block w-100 d-inline-block">Comma Seperate(test@example.com, abcd@example.com)</small>
                                    <small class="text-danger">{{ $errors->first('email_cc') }}</small>
                                </div>
                            </div>
                        </div>


                <div class="form-group col-md-12 col-sm-12" style="margin-top:25px;">
                  {!! Form::submit('Update '.Str::title(str_replace('-', ' ', request()->segment(2))), ['class' => 'btn btn-info']) !!}
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
<script>
    function adjustHeight() {
        var textarea = document.querySelector('textarea');
        textarea.style.height = 'auto';
        textarea.style.height = textarea.scrollHeight + 'px'; 
        displayArea.innerText = textarea.value;
    }
</script>
@endpush