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


<div class="row my-1">


    <div class="col-lg-4 col-4">

        <div class="card">
            <div class="card-content">
                <div class="card-body" id="form">

                    {!! Form::open(['method' => 'POST', 'route' => 'admin.'.request()->segment(2).'.store', 'class' => 'form-horizontal','id'=>'requisitionForm']) !!}
                    
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            {!! Form::label('name', 'Requisition Name') !!}
                            {!! Form::text('name', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Enter Requisition Name']) !!}
                            <small class="text-danger">{{ $errors->first('name') }}</small>
                        </div>
                    
                        <div class="btn-group">
                            {!! Form::button("Create Requisition", ['class' => 'btn btn-soft-secondary ','onClick'=>'createTag(this)']) !!}
                        </div>
                    
                    {!! Form::close() !!}

                    

                </div>
            </div>
        </div>
        
             
    </div>


    <div class="col-lg-8 col-8">

        <div class="card">
            <div class="card-content">
                <div class="card-body">

                    <table id="dataTableAjax" class="display dataTableAjax table table-striped table-bordered dom-jQuery-events" >
                        <thead>
                            <tr>
                                <th>Si</th>
                                <th>Name</th>
                                <th>Created at</th>
                                @can(['edit_requisition','delete_requisition'])
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
        { "data": "created_at" }, 
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_requisition','delete_requisition','read_requisition'])

                    @can('read_requisition')
                    // btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan

                    @can('edit_requisition')
                        btn+='<li><button class="dropdown-item edit-item-btn" onClick="editData(\''+window.location.href+'/'+row['id']+'\')"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</button></li>';
                    @endcan

                    // @can('delete_requisition')
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





var createForm = '<form method="POST" action="http://localhost:8000/admin/tag" accept-charset="UTF-8" class="form-horizontal" id="requisitionForm">{{csrf_field()}}<div class="form-group"><label for="name">Requisition Name</label><input class="form-control" required="required" placeholder="Enter Requisition Name" name="name" type="text" id="name"><small class="text-danger"></small></div><div class="btn-group"><button class="btn btn-soft-secondary " onclick="createTag(this)" type="button">Create Requisition</button></div></form>';



function createTag(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#requisitionForm'));

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
            document.querySelector('#requisitionForm').reset();
        },
        error:function(error){
           // toastr.error(error.responseJSON.message); 
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
           $('#form').html('<form id="requisitionForm" method="POST" action="http://localhost:8000/admin/tag/" accept-charset="UTF-8">{{method_field('PUT')}} {{csrf_field()}}<div class="form-group"><label for="name">Requisition Name</label><input class="form-control" required="required" value="'+response.data.name+'" placeholder="Enter Requisition Name" name="name" type="text" id="name"><small class="text-danger"></small></div><div class="btn-group"><button class="btn btn-soft-secondary " onclick="UpdateTag(this,'+response.data.id+')" type="button">Update Requisition</button></div></form>');
        },
        error:function(error){
            //toastr.error(error.responseJSON.message);  
        }
    });

}


function UpdateTag(element,id){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#requisitionForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.'.request()->segment(2).'.update','') }}/'+id,
        data: formData,
        contentType: false,
        processData: false,
        cache: false,
        success:function(response){
            //toastr.success(response.message); 
            table2.draw('page');
            button.normal();
            $('#form').html(createForm);
        },
        error:function(error){
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