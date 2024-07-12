@extends('admin.layouts.master')
@push('links')
<<<<<<< HEAD
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
    }
</style>
=======
<link rel="stylesheet" href="{{asset('admin-assets/libs/dropify/css/dropify.min.css')}}"> 
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
<link rel="stylesheet" href="{{asset('admin-assets/libs/dropify/css/dropify.min.css')}}"> 
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
@endpush




@section('main')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
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
<<<<<<< HEAD
<<<<<<< HEAD
@php
    $countries = App\Models\Country::where('id', 101)->pluck('name', 'id');
    $states = App\Models\State::where('status_id', 11)->pluck('name', 'id');
@endphp
=======

>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======

>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">

               {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$client->id],'method'=>'put', 'files'=>true]) !!}

                 <div class="row">

<<<<<<< HEAD
<<<<<<< HEAD
                    <div class="form-group col-md-3 col-sm-12">
=======
                    <div class="form-group col-md-6 col-sm-12">
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
                    <div class="form-group col-md-6 col-sm-12">
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                        <div class="form-group{{ $errors->has('first_name') ? ' has-error' : '' }}">
                             {!! Form::label('first_name', 'First Name') !!}
                             {!! Form::text('first_name', $client->first_name, ['class' => 'form-control',  'placeholder'=>'First Name']) !!}
                             <small class="text-danger">{{ $errors->first('first_name') }}</small>
                        </div>
                    </div>



<<<<<<< HEAD
<<<<<<< HEAD
                    <div class="form-group col-md-3 col-sm-12">
=======
                    <div class="form-group col-md-6 col-sm-12">
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
                    <div class="form-group col-md-6 col-sm-12">
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                        <div class="form-group{{ $errors->has('last_name') ? ' has-error' : '' }}">
                           {!! Form::label('last_name', 'Last Name') !!}
                           {!! Form::text('last_name', $client->last_name, ['class' => 'form-control',  'placeholder'=>'Last Name']) !!}
                           <small class="text-danger">{{ $errors->first('last_name') }}</small>
                       </div>
                    </div>

<<<<<<< HEAD
<<<<<<< HEAD

                        <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('company_name') ? ' has-error' : '' }}">
                            {!! Form::label('company_name', 'Company Name') !!}
                            {!! Form::text('company_name', $client->company_name, ['class' => 'form-control', 'placeholder' => 'Company Name']) !!}
                            <small class="text-danger">{{ $errors->first('company_name') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            {!! Form::label('email', 'Email address') !!}
                            {!! Form::email('email', $client->email, ['class' => 'form-control', 'placeholder' => 'eg: foo@bar.com']) !!}
                            <small class="text-danger">{{ $errors->first('email') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('mobile_number') ? ' has-error' : '' }}">
                            {!! Form::label('mobile_number', 'Mobile Number') !!}
                            {!! Form::text('mobile_number', $client->mobile, ['id'=>'mobile_no', 'class' => 'form-control', 'placeholder' => 'Mobile Number']) !!}
                            <small class="text-danger">{{ $errors->first('mobile_number') }}</small>
                        </div>
                     </div>

                     <div class="form-group col-md-3 col-sm-12">
=======
                    <div class="form-group col-md-6 col-sm-12">
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
                    <div class="form-group col-md-6 col-sm-12">
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                        <div class="form-group{{ $errors->has('gst') ? ' has-error' : '' }}">
                            {!! Form::label('gst', 'GST') !!}
                            {!! Form::text('gst', $client->gst, ['class' => 'form-control', 'placeholder' => 'GST']) !!}
                            <small class="text-danger">{{ $errors->first('gst') }}</small>
                        </div>
                     </div>

<<<<<<< HEAD
<<<<<<< HEAD
                     <div class="form-group col-md-3 col-sm-12">
                         <div class="form-group{{ $errors->has('country') ? ' has-error' : '' }}">
                             {!! Form::label('country', 'Country') !!}
                             {!! Form::select('country', $countries, 101, ['class' => 'form-control', 'placeholder' => 'Country', 'readonly'=>'readonly']) !!}
                             <small class="text-danger">{{ $errors->first('country') }}</small>
                         </div>
                     </div>


                     <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            {!! Form::label('state', 'State') !!}
                            {!! Form::select('state', $states, $client->state_id, ['id' => 'state', 'class' => 'form-control states', 'placeholder' => 'Choose State']) !!}
                            <small class="text-danger">{{ $errors->first('state') }}</small>
                        </div>
                     </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('district') ? ' has-error' : '' }}">
                            {!! Form::label('district', 'District') !!}
                            {!! Form::select('district', App\Models\District::where('state_id', $client->state_id)->pluck('name', 'id'), $client->district_id, ['id' => 'district', 'class' => 'form-control getDistrict', 'placeholder' => 'Choose district']) !!}
                            <small class="text-danger">{{ $errors->first('district') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('city') ? ' has-error' : '' }}">
                            {!! Form::label('city', 'City') !!}
                            {!! Form::select('city', App\Models\City::where('district_id', $client->district_id)->pluck('name', 'id'), $client->city_id, ['id' => 'city', 'class' => 'form-control getCity', 'placeholder' => 'Choose City']) !!}
                            <small class="text-danger">{{ $errors->first('city') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('locality') ? ' has-error' : '' }}">
                            {!! Form::label('locality', 'Locality') !!}
                            {!! Form::text('locality', $client->locality, ['class' => 'form-control', 'placeholder' => 'Locality']) !!}
                            <small class="text-danger">{{ $errors->first('locality') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                            {!! Form::label('address', 'Address (Area and Street)') !!}
                            {!! Form::textarea('address', $client->address, ['id'=>'address', 'class' => 'form-control', 'placeholder' => 'Address (Area and Street)', 'rows'=>1]) !!}
                            <small class="text-danger">{{ $errors->first('address') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('pincode') ? ' has-error' : '' }}">
=======
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                     <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('company_name') ? ' has-error' : '' }}">
                            {!! Form::label('company_name', 'Company Name') !!}
                            {!! Form::text('company_name', $client->company_name, ['class' => 'form-control', 'placeholder' => 'Company Name']) !!}
                            <small class="text-danger">{{ $errors->first('company_name') }}</small>
                        </div>
                     </div>

                    <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                           {!! Form::label('email', 'Email') !!}
                           {!! Form::email('email', $client->email, ['class' => 'form-control',  'placeholder' => 'eg: foo@bar.com', 'autocomplete'=>'nope']) !!}
                           <small class="text-danger">{{ $errors->first('email') }}</small>
                       </div>
                    </div>

                    <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('mobile_no') ? ' has-error' : '' }}">
                           {!! Form::label('mobile_no', 'Mobile Number') !!}
                           {!! Form::text('mobile_no', $client->mobile, ['class' => 'form-control', 'placeholder' => 'Mobile Number']) !!}
                           <small class="text-danger">{{ $errors->first('mobile_no') }}</small>
                       </div>
                    </div>

                    <div class="form-group col-md-6 col-sm-12">
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            {!! Form::label('state', 'State') !!}
                            {!! Form::text('state', $client->state, ['class' => 'form-control', 'placeholder' => 'State']) !!}
                            <small class="text-danger">{{ $errors->first('state') }}</small>
                        </div>

                         <div class="form-group{{ $errors->has('city') ? ' has-error' : '' }}">
                            {!! Form::label('city', 'City') !!}
                            {!! Form::text('city', $client->city, ['class' => 'form-control', 'placeholder' => 'City']) !!}
                            <small class="text-danger">{{ $errors->first('city') }}</small>
                        </div>

                         <div class="form-group{{ $errors->has('pincode') ? ' has-error' : '' }}">
<<<<<<< HEAD
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                            {!! Form::label('pincode', 'Pincode') !!}
                            {!! Form::text('pincode', $client->pincode, ['class' => 'form-control', 'placeholder' => 'Pincode']) !!}
                            <small class="text-danger">{{ $errors->first('pincode') }}</small>
                        </div>
                    </div>

<<<<<<< HEAD
<<<<<<< HEAD

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('landmark') ? ' has-error' : '' }}">
                            {!! Form::label('landmark', 'Landmark') !!}
                            {!! Form::text('landmark', $client->landmark, ['class' => 'form-control', 'placeholder' => 'Landmark']) !!}
                            <small class="text-danger">{{ $errors->first('landmark') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="card-header">
                            {!! Form::label('logo', 'Logo') !!}
                        </div>
                        <div class="card-body">
                            <small class="text-danger">{{ $errors->first('logo') }}</small>
                            <div class="media-area" file-name="logo">
                                <div class="media-file-value">
                                    @if($client->media)
                                        <input type="hidden" name="logo[]" value="{{$client->media_id}}" class="fileid{{$client->media_id}}">
                                    @endif
                                </div>
                                <div class="media-file">
                                    @if($client->media)
                                        <div class="file-container d-inline-block fileid{{$client->media_id}}">
                                            <span data-id="{{$client->media_id}}" class="remove-file">✕</span>
                                            <img class="w-100 d-block img-thumbnail" src="{{asset($client->media->file)}}" alt="{{$client->media->name}}">
                                        </div>
                                    @endif
                                </div>
                                <a class="text-secondary select-mediatype" href="javascript:void(0);" mediatype='single' onclick="loadMediaFiles($(this))">Select Image</a>
                            </div>

                        </div>
=======
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                    <div class="form-group col-md-6 col-sm-12">
                       <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                           {!! Form::label('address', 'Address') !!}
                           {!! Form::textarea('address', $client->address, ['class' => 'form-control', 'placeholder' => 'Address']) !!}
                           <small class="text-danger">{{ $errors->first('address') }}</small>
                       </div>
<<<<<<< HEAD
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
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
<<<<<<< HEAD
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

</script>
=======
<script src="{{asset('admin-assets/libs/dropify/js/dropify.min.js')}}"></script>
<script type="text/javascript" src="{{asset('admin-assets/libs/dropify/dropify.js')}}"></script>

>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
<script src="{{asset('admin-assets/libs/dropify/js/dropify.min.js')}}"></script>
<script type="text/javascript" src="{{asset('admin-assets/libs/dropify/dropify.js')}}"></script>

>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
@endpush