@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/dropify/css/dropify.min.css')}}"> 
<link rel="stylesheet" href="{{asset('admin-assets/libs/summernote/summernote-bs4.min.css')}}"> 

@endpush




@section('main')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            

        </div>
    </div>
</div>
<!-- end page title -->


<div class="row my-1">


    <div class="col-lg-4 col-sm-12  col-12">

        <div class="card">
            <div class="card-content">
                <div class="card-body" id="form">

                    {!! Form::open(['method' => 'POST', 'route' => 'admin.'.request()->segment(2).'.store', 'class' => 'form-horizontal','id'=>'UnitForm']) !!}
                    
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            {!! Form::label('unit_name', 'Unit Name') !!}
                            {!! Form::text('unit_name', null, ['class' => 'form-control slugify', 'required' => 'required','placeholder'=>'Enter Unit Name']) !!}
                            <small class="text-danger">{{ $errors->first('unit_name') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('unit_code') ? ' has-error' : '' }}">
                            {!! Form::label('unit_code', 'Unit Code') !!}
                            {!! Form::text('unit_code', null, ['class' => 'form-control', 'placeholder' => 'Unit Unit Code']) !!}
                            <small class="text-danger">{{ $errors->first('unit_code') }}</small>
                        </div>
                    
                        <div class="btn-group">
                            {!! Form::button("Create Unit", ['class' => 'btn btn-success btn-border','onClick'=>'createUnit(this)']) !!}
                        </div>
                    
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
                    <table id="dataTableAjax" class="display dataTableAjax table table-striped table-bordered dom-jQuery-events" >
                        <thead>
                            <tr>
                                <th style="width:30px;">Si</th>
                                <th>Unit Name</th>
                                <th>Unit Code</th>
                                <th>Created at</th>
                                @can(['edit_unit','delete_unit'])
                                  <th style="width:30px;">Action</th>
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


@push('scripts')


<script type="text/javascript">

var table2 = $('#dataTableAjax').DataTable({
    "processing": true,
    "serverSide": true,
    'ajax': {
        'url': '{{ route('admin.'.request()->segment(2).'.index') }}',
        'data': function(d) {
            d._token = '{{ csrf_token() }}';
            d._method = 'PATCH';
        }

    },
    "columns": [
        { "data": "sn" }, 
        { "data": "name" }, 
        { "data": "code" }, 
        { "data": "created_at" }, 
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_unit','delete_unit','read_unit'])

                    @can('read_unit')
                    // btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan

                    @can('edit_unit')
                        btn+='<li><button class="dropdown-item edit-item-btn" onClick="editData(\''+window.location.href+'/'+row['id']+'\')"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</button></li>';
                    @endcan

                    // @can('delete_unit')
                    //     btn += '<li><button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'/delete\')" class="dropdown-item remove-item-btn"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</button></li>';
                    // @endcan

                    @endcan
                     btn += '</ul></div>';
                    return btn;
                }
                return ' ';
            },
            
    }]

});





var createForm = '<form method="POST" action="{{ route('admin.'.request()->segment(2).'.index') }}" accept-charset="UTF-8" class="form-horizontal" id="UnitForm">{{csrf_field()}}<div class="form-group"><label for="name">Unit Name</label><input class="form-control" required="required" placeholder="Enter Unit Name" name="unit_name" type="text" id="name"><small class="text-danger"></small></div> <div class="form-group"> <label for="unit_code">Unit Code</label><input class="form-control" placeholder="Unit Code" name="unit_code" type="text" id="unit_code"><small class="text-danger"></small></div><div class="btn-group"><button class="btn btn-success btn-border" onclick="createUnit(this)" type="button">Create Unit</button></div></form>';



function createUnit(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#UnitForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.'.request()->segment(2).'.store') }}',
        data: formData,
        contentType: false,
        processData: false,
        cache: false,
        success:function(response){
            //toast.success(response.message); 
            Toastify({
                text: response.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: response.class,

            }).showToast();

            table2.draw('page');
            button.normal();
            document.querySelector('#UnitForm').reset();
        },
        error:function(error){
            Toastify({
                text: error.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: error.class,

            }).showToast(); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
}

function editData(url) {
    var editURL = url;
    
    $.ajax({
        type: "GET",
        enctype: 'multipart/form-data',
        url:url+'/edit',
        success:function(response){
           $('#form').html('<form id="UnitForm" method="POST" action="{{ route('admin.'.request()->segment(2).'.index') }}" accept-charset="UTF-8">{{method_field('PUT')}} {{csrf_field()}}<div class="form-group"><label for="name">Unit Name</label><input class="form-control" required="required" value="'+response.data.name+'" placeholder="Enter Unit Name" name="unit_name" type="text" id="name"><small class="text-danger"></small></div> <div class="form-group"><label for="unit_code">Unit Code</label><input class="form-control" placeholder="Unit Code" value="'+response.data.code+'" name="unit_code" type="text" id="unit_code"><small class="text-danger"></small></div><div class="btn-group"><button class="btn btn-success btn-border" onclick="UpdateUnit(this,'+response.data.id+')" type="button">Update Unit</button></div></form>');
        },
        error:function(error){
            //toastr.error(error.responseJSON.message);  
        }
    });

}


function UpdateUnit(element,id){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#UnitForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.'.request()->segment(2).'.update','') }}/'+id,
        data: formData,
        contentType: false,
        processData: false,
        cache: false,
        success:function(response){
            Toastify({
                text: response.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: response.class,

            }).showToast();
            table2.draw('page');
            button.normal();
            $('#form').html(createForm);
        },
        error:function(error){
            Toastify({
                text: error.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: error.class,

            }).showToast();
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
}


function createData(){
    $('#form').html(createForm);
}
</script>


@endpush