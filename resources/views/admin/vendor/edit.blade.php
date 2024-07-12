@extends('admin.layouts.master')
@push('links')
<<<<<<< HEAD
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}">  
<style type="text/css">
    span.select2-selection.select2-selection--single, span.selection {
        height: 37px;    
    }

    .select2-container .select2-selection--single .select2-selection__rendered {
        height: 37px;
    }
    .select2-container--default .select2-selection--single .select2-selection__rendered {
        line-height: 36px;
    }
    .select2-container--default .select2-selection--single .select2-selection__arrow {
        height: 37px;
    }
    .select2-container .select2-selection--single .select2-selection__rendered {
        padding-left: 14px;
        font-size: .8125rem;
    }
    textarea {
        display: block;
        width: 100%;
        height: auto;
        resize: none; /* Disable the draggable resizer handle */
        overflow: hidden; /* Hide the scrollbar */
        min-height: 100px; /* Minimum height */
=======
<link rel="stylesheet" href="{{asset('admin-assets/libs/dropify/css/dropify.min.css')}}"> 
<style type="text/css">
    textarea {
        resize: none!important; 
        overflow: hidden; 
        border: none; 
        outline: none; 
        width: 100%;
        height: auto;
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
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
<<<<<<< HEAD
@php
$countries = App\Models\Country::where('id', 101)->pluck('name', 'id');
$states = App\Models\State::where('status_id', 11)->pluck('name', 'id');
@endphp
=======

>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
<div class="row">
    <div class="col-lg-12">

                 {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$vendor->id],'method'=>'put', 'files'=>true]) !!}
                <div class="row">
            <div class="col-md-12 col-sm-12">

                <div class="row">

                    <div class="col-md-6 col-sm-12">
                     <div class="card">
                        <div class="card-body">

<<<<<<< HEAD
                            <div class="row">

                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                        {!! Form::label('name', 'Name') !!}
                                        {!! Form::text('name', $vendor->name, ['class' => 'form-control', 'placeholder' => 'Enter Name']) !!}
                                        <small class="text-danger">{{ $errors->first('name') }}</small>
                                    </div>
                                </div>


                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                        {!! Form::label('email', 'Email address') !!}
                                        {!! Form::email('email', $vendor->email, ['class' => 'form-control', 'placeholder' => 'eg: foo@bar.com']) !!}
                                        <small class="text-danger">{{ $errors->first('email') }}</small>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('phone_no') ? ' has-error' : '' }}">
                                        {!! Form::label('phone_no', 'Phone No.') !!}
                                        {!! Form::text('phone_no', $vendor->phone_no, ['id'=>'mobile_no', 'class' => 'form-control', 'placeholder' => 'Phone No.']) !!}
                                        <small class="text-danger">{{ $errors->first('phone_no') }}</small>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('gst') ? ' has-error' : '' }}">
                                        {!! Form::label('gst', 'GST') !!}
                                        {!! Form::text('gst', $vendor->gst, ['class' => 'form-control', 'placeholder' => 'GST']) !!}
                                        <small class="text-danger">{{ $errors->first('gst') }}</small>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('country') ? ' has-error' : '' }}">
                                         {!! Form::label('country', 'Country') !!}
                                         {!! Form::select('country', $countries, 101, ['class' => 'form-control', 'placeholder' => 'Country', 'readonly'=>'readonly']) !!}
                                         <small class="text-danger">{{ $errors->first('country') }}</small>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                                        {!! Form::label('state', 'State') !!}
                                        {!! Form::select('state', $states, $vendor->state_id, ['id' => 'state', 'class' => 'form-control states', 'placeholder' => 'Choose State']) !!}
                                        <small class="text-danger">{{ $errors->first('state') }}</small>
                                    </div>
                                </div>


                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('district') ? ' has-error' : '' }}">
                                        {!! Form::label('district', 'District') !!}
                                        {!! Form::select('district', App\Models\District::where('state_id', $vendor->state_id)->pluck('name', 'id'), $vendor->district_id, ['id' => 'district', 'class' => 'form-control getDistrict', 'placeholder' => 'Choose district']) !!}
                                        <small class="text-danger">{{ $errors->first('district') }}</small>
                                    </div>
                                </div>


                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('city') ? ' has-error' : '' }}">
                                        {!! Form::label('city', 'City') !!}
                                        {!! Form::select('city', App\Models\City::where('district_id', $vendor->district_id)->pluck('name', 'id'), $vendor->city_id, ['id' => 'city', 'class' => 'form-control getCity', 'placeholder' => 'Choose City']) !!}
                                        <small class="text-danger">{{ $errors->first('city') }}</small>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('locality') ? ' has-error' : '' }}">
                                        {!! Form::label('locality', 'Locality') !!}
                                        {!! Form::text('locality', $vendor->locality, ['class' => 'form-control', 'placeholder' => 'Locality']) !!}
                                        <small class="text-danger">{{ $errors->first('locality') }}</small>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group{{ $errors->has('pincode') ? ' has-error' : '' }}">
                                        {!! Form::label('pincode', 'Pincode') !!}
                                        {!! Form::text('pincode', $vendor->pincode, ['class' => 'form-control', 'placeholder' => 'Pincode']) !!}
                                        <small class="text-danger">{{ $errors->first('pincode') }}</small>
                                    </div>
                                </div>

                            <div class="col-md-12 col-sm-12">
                                <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                                    {!! Form::label('address', 'Address (Area and Street)') !!}
                                    {!! Form::textarea('address', $vendor->address, ['id'=>'address', 'class' => 'form-control', 'placeholder' => 'Address (Area and Street)', 'rows'=>1]) !!}
                                    <small class="text-danger">{{ $errors->first('address') }}</small>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
=======
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
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af

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
<<<<<<< HEAD
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {

        var state = $('.states').val();
        var district = $('.getDistrict').val();

        $('.getDistrict').select2({
            placeholder: 'Choose District',
            allowClear: true,
            ajax: {
                url: '{{ route('admin.common.district.list','') }}/'+state,
                dataType: 'json',
                cache: true,
                delay: 200,
                data: function(params) {
                    return {
                        term: params.term || '',
                        page: params.page || 1
                    }
                },
            }
        });


        $('.getCity').select2({
            placeholder: 'Choose City',
            allowClear: true,
            ajax: {
                url: '{{ route('admin.common.city.list','') }}/'+district,
                dataType: 'json',
                cache: true,
                delay: 200,
                data: function(params) {
                    return {
                        term: params.term || '',
                        page: params.page || 1
                    }
                },
            }
        });
        


        $('.states').select2();

        
        $('body').on('change', '.states', function() {
            var state = $(this).val();
            $('.getDistrict').val(null).trigger('change');
            $('.getDistrict').select2({
                placeholder: 'Choose District',
                allowClear: true,
                ajax: {
                    url: '{{ route('admin.common.district.list','') }}/'+state,
                    dataType: 'json',
                    cache: true,
                    delay: 200,
                    data: function(params) {
                        return {
                            term: params.term || '',
                            page: params.page || 1
                        }
                    },
                }
            });
        });


        $('body').on('change', '.getDistrict', function() {
            var district = $(this).val();
            $('.getCity').val(null).trigger('change');
            $('.getCity').select2({
                placeholder: 'Choose City',
                allowClear: true,
                ajax: {
                    url: '{{ route('admin.common.city.list','') }}/'+district,
                    dataType: 'json',
                    cache: true,
                    delay: 200,
                    data: function(params) {
                        return {
                            term: params.term || '',
                            page: params.page || 1
                        }
                    },
                }
            });
        });
    });

    function autoResize(textarea) {
        textarea.style.height = 'auto'; // Reset the height
        textarea.style.height = textarea.scrollHeight + 'px'; // Set the height to match the scroll height
    }

    document.getElementById('address').addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
            event.preventDefault(); // Prevent the default behavior (submitting the form, etc.)
            this.value += '\n'; // Insert a newline character at the cursor position
            autoResize(this); // Adjust the height after adding the newline
        }
    });

    // Initial call to set the height correctly if there's initial content
    window.addEventListener('load', function() {
        autoResize(document.getElementById('address'));
    });


    var phoneInput = document.getElementById('mobile_no');
    var prefilledNumber = "+91";

    function resetInput() {
        phoneInput.value = '';
    }


    phoneInput.addEventListener('focus', function() {
        if (phoneInput.value.trim() === "" || phoneInput.value.trim() === prefilledNumber) {
            phoneInput.value = prefilledNumber;
            phoneInput.setSelectionRange(prefilledNumber.length, prefilledNumber.length);
        }
    });

    phoneInput.addEventListener('blur', function() {
        if (phoneInput.value.trim() === prefilledNumber) {
            resetInput();
        }
    });

    phoneInput.addEventListener('input', function() {
        var enteredValue = phoneInput.value.trim();
        if (enteredValue.startsWith(prefilledNumber) || enteredValue === "") {
            if (enteredValue === "") {
                resetInput();
            }
        } else {
            phoneInput.value = '+91';
            phoneInput.setSelectionRange(prefilledNumber.length, prefilledNumber.length);
        }
    });

=======
<script>
    function adjustHeight() {
        var textarea = document.querySelector('textarea');
        textarea.style.height = 'auto';
        textarea.style.height = textarea.scrollHeight + 'px'; 
        displayArea.innerText = textarea.value;
    }
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
</script>
@endpush