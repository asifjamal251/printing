@extends('admin.layouts.master')
@push('links')
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

@php
    $countries = App\Models\Country::where('id', 101)->pluck('name', 'id');
    $states = App\Models\State::where('status_id', 11)->pluck('name', 'id');
@endphp
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">

                {!! Form::open(['route'=>'admin.'.request()->segment(2).'.store', 'files'=>true]) !!}

                <div class="row">

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('company_name') ? ' has-error' : '' }}">
                            {!! Form::label('company_name', 'Company Name') !!}
                            {!! Form::text('company_name', null, ['class' => 'form-control', 'placeholder' => 'Company Name']) !!}
                            <small class="text-danger">{{ $errors->first('company_name') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            {!! Form::label('email', 'Email address') !!}
                            {!! Form::email('email', null, ['class' => 'form-control', 'placeholder' => 'eg: foo@bar.com']) !!}
                            <small class="text-danger">{{ $errors->first('email') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('mobile_number') ? ' has-error' : '' }}">
                            {!! Form::label('mobile_number', 'Mobile Number') !!}
                            {!! Form::text('mobile_number', null, ['id'=>'mobile_no', 'class' => 'form-control', 'placeholder' => 'Mobile Number']) !!}
                            <small class="text-danger">{{ $errors->first('mobile_number') }}</small>
                        </div>
                     </div>

                     <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('gst') ? ' has-error' : '' }}">
                            {!! Form::label('gst', 'GST') !!}
                            {!! Form::text('gst', null, ['class' => 'form-control', 'placeholder' => 'GST']) !!}
                            <small class="text-danger">{{ $errors->first('gst') }}</small>
                        </div>
                     </div>

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
                            {!! Form::select('state', $states, null, ['id' => 'state', 'class' => 'form-control states', 'placeholder' => 'Choose State']) !!}
                            <small class="text-danger">{{ $errors->first('state') }}</small>
                        </div>
                     </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('city') ? ' has-error' : '' }}">
                            {!! Form::label('city', 'City') !!}
                            {!! Form::select('city', App\Models\City::where('state_id', old('state'))->pluck('name', 'id'), null, ['id' => 'city', 'class' => 'form-control getCity', 'placeholder' => 'Choose City']) !!}
                            <small class="text-danger">{{ $errors->first('city') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('locality') ? ' has-error' : '' }}">
                            {!! Form::label('locality', 'Locality') !!}
                            {!! Form::text('locality', null, ['class' => 'form-control', 'placeholder' => 'Locality']) !!}
                            <small class="text-danger">{{ $errors->first('locality') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                            {!! Form::label('address', 'Address (Area and Street)') !!}
                            {!! Form::textarea('address', null, ['id'=>'address', 'class' => 'form-control', 'placeholder' => 'Address (Area and Street)', 'rows'=>1]) !!}
                            <small class="text-danger">{{ $errors->first('address') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('pincode') ? ' has-error' : '' }}">
                            {!! Form::label('pincode', 'Pincode') !!}
                            {!! Form::text('pincode', null, ['class' => 'form-control', 'placeholder' => 'Pincode']) !!}
                            <small class="text-danger">{{ $errors->first('pincode') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-3 col-sm-12">
                        <div class="form-group{{ $errors->has('landmark') ? ' has-error' : '' }}">
                            {!! Form::label('landmark', 'Landmark') !!}
                            {!! Form::text('landmark', null, ['class' => 'form-control', 'placeholder' => 'Landmark']) !!}
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
                                <div class="media-file-value"></div>
                                <div class="media-file"></div>
                                <a class="text-secondary select-mediatype" href="javascript:void(0);" mediatype='single' onclick="loadMediaFiles($(this))">Select Image</a>
                            </div>

                        </div>
                    </div>

                  <div class="form-group col-sm-12" style="margin-top:28px;">
                      {!! Form::submit('Save Address', ['class' => 'btn btn-info pull-right']) !!}
                  </div>

                </div>
       

        {!! Form::close() !!} 
    </div>
</div>
</div>
</div>



@endsection




@push('scripts')
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {

        var state = $('.states').val();
        $('.getCity').select2({
            placeholder: 'Choose City',
            allowClear: true,
            ajax: {
                url: '{{ route('admin.common.city.list','') }}/'+state,
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
            $('.getCity').val(null).trigger('change');
            $('.getCity').select2({
                placeholder: 'Choose City',
                allowClear: true,
                ajax: {
                    url: '{{ route('admin.common.city.list','') }}/'+state,
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
@endpush