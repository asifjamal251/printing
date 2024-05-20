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
            

        </div>
    </div>
</div>
<!-- end page title -->


<div class="row my-1">


    <div class="col-lg-4 col-4">

        <div class="card">
            <div class="card-content">
                <div class="card-body" id="form">

                    {!! Form::open(['method' => 'POST', 'route' => 'admin.'.request()->segment(2).'.store', 'class' => 'form-horizontal','id'=>'MaterialForm']) !!}

                        <div class="form-group{{ $errors->has('category_name') ? ' has-error' : '' }}">
                            {!! Form::label('category_name', 'Category Name') !!}
                            {!! Form::text('category_name', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Enter Category Name']) !!}
                            <small class="text-danger">{{ $errors->first('category_name') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('parent_category') ? ' has-error' : '' }}">
                            {!! Form::label('parent_category', 'Parent Category') !!}
                            {!! Form::select('parent_category', App\Models\Category::where('parent', null)->pluck('name','id'), null, ['id' => 'parent_category', 'class' => 'form-control', 'placeholder' => 'Select Parent Category']) !!}
                            <small class="text-danger">{{ $errors->first('parent_category') }}</small>
                        </div>
                    
                        <div class="btn-group">
                            {!! Form::submit("Save Category", ['class' => 'btn btn-success btn-border']) !!}
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
                                <th style="width:30px;">Si</th>
                                <th>Category Name</th>
                                <th>Subcategory Name</th>
                                <th>Created at</th>
                                @can(['edit_category','delete_category'])
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
        { "data": "category" }, 
        { "data": "subcategory" }, 
        { "data": "created_at" }, 
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_category','delete_category','read_category'])

                    @can('read_category')
                    // btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan

                    @can('edit_category')
                        btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                    @endcan

                    @can('delete_category')
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






</script>


@endpush