@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}">  
<style type="text/css">
    span.select2-selection.select2-selection--single, span.selection {
        height: 37px!important;    
    }

    .select2-container .select2-selection--single .select2-selection__rendered {
        height: 37px!important;
    }
    .select2-container--default .select2-selection--single .select2-selection__rendered {
        line-height: 36px!important;
    }
    .select2-container--default .select2-selection--single .select2-selection__arrow {
        height: 37px!important;
    }
    .select2-container .select2-selection--single .select2-selection__rendered {
        padding-left: 14px!important;
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




@section('main')


 <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
                    <button class="btn btn-success btn-label btn-sm" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
                        <div class="d-flex">
                            <div class="flex-shrink-0">
                                <i class="bx bx-slider-alt label-icon align-middle fs-16 me-2"></i>
                            </div>
                            <div class="flex-grow-1">
                                Filters
                            </div>
                        </div>
                    </button>

                    @can('add_district')
                    <div class="page-title-right">
                        <a onclick="create()" href="javascript:void(0);"  class="create btn-sm btn btn-primary btn-label rounded-pill">
                            <i class="bx bx-plus label-icon align-middle rounded-pill fs-16 me-2"></i>
                            Add {{Str::title(str_replace('-', ' ', request()->segment(2)))}}
                        </a>
                    </div>
                    @endcan

                </div>
            </div>
        </div>
        <!-- end page title -->


<div class="row my-1">


    <div class="col-lg-4 col-sm-12 col-12">

        <div class="card">
            <div class="card-content">
                <div class="card-body" id="form">

                    {!! Form::open(['method' => 'POST', 'route' => 'admin.district.store', 'class' => 'form-horizontal','files'=>true, 'id'=>'storeDistrict']) !!}
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            {!! Form::label('state', 'State') !!}
                            {!! Form::select('state', App\Models\State::pluck('name', 'id'), null, ['id' => 'state', 'class' => 'select2 form-control', 'placeholder' => 'Choose State',]) !!}
                            <small class="text-danger">{{ $errors->first('state') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('district') ? ' has-error' : '' }}">
                            {!! Form::label('district', 'District') !!}
                            {!! Form::select('district', [], null, ['id' => 'district', 'class' => 'form-control', 'placeholder' => 'District']) !!}
                            <small class="text-danger">{{ $errors->first('district') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            {!! Form::label('name', 'Name') !!}
                            {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'City Name']) !!}
                            <small class="text-danger">{{ $errors->first('name') }}</small>
                        </div>

                        {!! Form::button('Save City', ['class' => 'btn btn-success store']) !!}
                    {!! Form::close() !!}


                    

                </div>
            </div>
        </div>
        
             
    </div>


    <div class="col-lg-8 col-sm-12 col-12">

        <div class="card">
            <div class="card-content">
                <div class="card-body">
<div class="table-responsive">
                    <table id="dataTableAjax" class="display table-sm border-secondary dataTableAjax table table-striped table-bordered dom-jQuery-events" >
                        <thead>
                            <tr>
                                <th>Si</th>
                                <th>State</th>
                                <th>District</th>
                                <th>Name</th>
                                @can(['edit_district','delete_district'])
                                  <th>Action</th>
                                @endcan

                            </tr>
                        </thead>
            
                    </table>
</div>
                </div>
            </div>
        </div>

             
    </div>
</div>



@endsection



@section('filter')
<form id="filterForm" action="" autocomplete="off">
<div class="offcanvas offcanvas-end border-0" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
    
    <div class="d-flex align-items-center bg-success bg-gradient p-3 offcanvas-header">
        <h5 class="m-0 me-2 text-white">{{Str::title(str_replace('-', ' ', request()->segment(2)))}} Filters</h5>

        <button type="button" class="btn-close btn-close-white ms-auto" id="customizerclose-btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>


    <div class="offcanvas-body bg-light">


        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Filter By State</h6>
            </div>

            <div class="card-body">
                <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                    {!! Form::select('state', App\Models\State::pluck('name', 'id'), null, ['id' => 'state_id', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose State']) !!}
                    <small class="text-danger">{{ $errors->first('state') }}</small>
                </div>
            </div>

        </div>










    </div>

    <div class="offcanvas-footer border-top p-3 text-center">
            <div class="d-flex gap-2">
                <div class="d-inline-block" style="width:50%;">
                    <button type="button" class="btn btn-soft-warning w-100 resetFilter border-warning">Reset</button>
                </div>
                <div class="d-inline-block" style="width:50%;">
                    <button type="button" class="btn btn-soft-success w-100 filters border-success">Apply Filter</button>
                </div>
            </div>
        </div>


</div>
</form>





@endsection

@push('scripts')
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>

<script type="text/javascript">

var table2 = $('#dataTableAjax').DataTable({
    "processing": true,
    "serverSide": true,
    "lengthMenu": [50, 100,200],
    'ajax': {
        'url': '{{ route('admin.'.request()->segment(2).'.index') }}',
        'data': function(d) {
            d._token = '{{ csrf_token() }}';
            d._method = 'PATCH';
             d.state = $('#state_id').val();
        }

    },
    "columns": [
        { "data": "sn" }, 
        { "data": "state" }, 
        { "data": "district" }, 
        { "data": "name" }, 
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_district','delete_district','read_district'])

                    @can('read_district')
                    // btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan

                    @can('edit_district')
                        btn+='<li><button class="dropdown-item edit-item-btn" onClick="editData(\''+window.location.href+'/'+row['id']+'\')"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</button></li>';
                    @endcan

                     @can('delete_district')
                        btn += '<li><button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'/delete\')" class="dropdown-item remove-item-btn"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</button></li>';
                     @endcan

                    @endcan
                     btn += '</ul></div>';
                    return btn;
                }
                return ' ';
            },
            
    }]

});



$('body').on('click', '.filters', function(){
    $('.dataTableAjax').DataTable().draw('page');
    $('#offcanvasTop').offcanvas('hide');
});


$('body').on('click', '.resetFilter', function(){
    $('#filterForm').trigger("reset");
    $('.dataTableAjax').DataTable().draw('page');
    $('#offcanvasTop').offcanvas('hide');
});


$('.select2').select2();
$('#district').select2({
    placeholder: 'Choose District',
    allowClear: true,
});


$('body').on('change', '#state', function() {
    var state = $(this).val();
    $('#district').val(null).trigger('change');
    $('#district').select2({
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



function create() {
    $.ajax({
        type: "GET",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.'.request()->segment(2).'.create') }}',
        success:function(response){
           $('#form').html(response);
           $('.select2').select2();
           $('#district').select2({
                placeholder: 'Choose District',
                allowClear: true,
            });
        },
        error:function(error){
            //toastr.error(error.responseJSON.message);  
        }
    });

}

$('body').on('click', '.store', function(event){
    event.preventDefault(); 
    var element = $(this);
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#storeDistrict'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.'.request()->segment(2).'.store') }}',
        data: formData,
        contentType: false,
        processData: false,
        cache: false,
        success:function(response){
            //toastr.success(response.message); 
            table2.draw('page');
            button.normal();
            document.querySelector('#storeDistrict').reset();
            $('#state').val(null).trigger('change');
        },
        error:function(error){
           // toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
});

function editData(url) {
    var editURL = url;
    
    $.ajax({
        type: "GET",
        enctype: 'multipart/form-data',
        url:url+'/edit',
        success:function(response){
           $('#form').html(response);
           $('.select2').select2();
           $('#district').select2({
                placeholder: 'Choose District',
                allowClear: true,
            });
        },
        error:function(error){
            //toastr.error(error.responseJSON.message);  
        }
    });

}


$('body').on('click', '.update', function(event){
    var id = $(this).attr('data-id');
    event.preventDefault(); 
    var element = $(this);
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#storeDistrict'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.'.request()->segment(2).'.update','') }}/'+id,
        data: formData,
        contentType: false,
        processData: false,
        cache: false,
        success:function(response){
            table2.draw('page');
            button.normal();
            document.querySelector('#storeDistrict').reset();
            $('#name').val('');
            $('#state').val(null).trigger('change');
        },
        error:function(error){
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
});


function createData(){
    $('#form').html(createForm);
}
</script>


@endpush