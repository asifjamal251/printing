@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jstree/3.3.3/themes/default/style.min.css" />
<style type="text/css">
    #categories {
      margin: 20px;
      max-width: 300px;
    }

    /* Style for context menu */
    #contextMenu {
      display: none;
      position: absolute;
      background-color: #fff;
      border: 1px solid #ccc;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding: 8px;
      z-index: 9999;
    }

    #contextMenu div {
      cursor: pointer;
      padding: 5px;
      margin: 5px 0;
      transition: background 0.3s;
    }

    #contextMenu div:hover {
      background-color: #f0f0f0;
    }
</style>
@endpush




@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
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





            @can('add_product')

            <div class="btn-group" role="group">
                <button id="btnGroupDrop1" type="button" class="btn-sm btn btn-primary btn-label rounded-pill shadow-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="bx bx-plus label-icon align-middle rounded-pill fs-16 me-2"></i> Add New Product
                </button>
                <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1" style="">
                    <li><a class="dropdown-item createProduct" data-product="paper" href="javascript:void(0);">Add Paper</a></li>
                    <li><a class="dropdown-item createProduct" data-product="other" href="javascript:void(0);">Add Other Item</a></li>
                </ul>
            </div>
            @endcan

        </div>
    </div>
</div>
<!-- end page title -->


@php
    $category_count = App\Models\Category::orderBy('name', 'asc')->count();
@endphp

<div class="row">
    <div class="col-lg-3">
        <div class="card">

            <div class="card-body">
               
                <div class="tree" id="categories"></div>
                <input type="hidden" id="category_id" value="">
                @if($category_count > 0)
                @else
                <a class="btn-sm btn btn-primary new-cat-btn mainCategoryCreate" href="javascript:void(0);">Add New Category</a>
                @endif
            </div>
        </div>
    </div>

    <div class="col-lg-9">
        <div class="card">

            <div class="card-body">
                <table id="datatable" class="datatable table table-bordered nowrap align-middle" style="width:100%">
                    <thead class="gridjs-thead">
                        <tr>
                            <th style="width:12px">Si</th>
                            <th>Code</th>
                            <th>Product</th>
                            <th>Product Type</th>
                            <th>HSN</th>
                            <th>Quantity</th>
                            <th>Unit</th>
                            <th>WT/PC</th>
                            <th>Total Weight</th>
                            @can(['edit_product','delete_product', 'read_product'])
                            <th>Action</th>
                            @endcan
                        </tr>
                    </thead>

                </table>
            </div>
        </div>
    </div><!--end col-->
</div><!--end row-->






<!-- Default Modals -->
<div id="prductCreateModelPaper" class="modal fade" tabindex="-1" aria-labelledby="prductCreatePaper" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="prductCreatePaper">Paper</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
            </div>
            <div class="modal-body" id="paper-form">
                
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light ms-auto" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="savePaper(this)">Save Product</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->









<!-- Default Modals -->
<div id="prductCreateModelOther" class="modal fade" tabindex="-1" aria-labelledby="prductCreateOther" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="prductCreateOther">Other Item</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
            </div>
            <div class="modal-body" id="other-form">
                
                

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light ms-auto" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="saveProduct(this)">Save Product</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->





<!-- Default Modals -->
<div id="mainCategoryModel" class="modal fade" tabindex="-1" aria-labelledby="mainCategoryCreate" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mainCategoryCreate">Create Category</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
            </div>
            <div class="modal-body">
                
                {!! Form::open(['method' => 'POST', 'route' => 'admin.category.store', 'class' => 'form-horizontal','id'=>'mainCategoryForm']) !!}

                     <div class="parent_category_on form-group{{ $errors->has('parent_category') ? ' has-error' : '' }}">
                        {!! Form::label('parent_category', 'Parent Category') !!}
                        {!! Form::select('parent_category', App\Models\Category::orderBy('name', 'asc')->where('parent', null)->pluck('name','id'), null, ['id' => 'parent_category', 'class' => 'form-control refresh-cat', 'placeholder' => 'Select Parent Category', 'readonly']) !!}
                        <small class="text-danger">{{ $errors->first('parent_category') }}</small>
                    </div>

                    <div class="form-group{{ $errors->has('category_name') ? ' has-error' : '' }}">
                        {!! Form::label('category_name', 'Category Name') !!}
                        {!! Form::text('category_name', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Enter Category Name']) !!}
                        <small class="text-danger">{{ $errors->first('category_name') }}</small>
                    </div>
                
                {!! Form::close() !!}

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light ms-auto" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="saveMainCategory(this)">Save Category</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->





<!-- Default Modals -->
<div id="updateCategoryModel" class="modal fade" tabindex="-1" aria-labelledby="updateCategory" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateCategory">Update Category</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
            </div>
            <div class="modal-body">
                
                 {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',''],'method'=>'put', 'files'=>true, 'id'=>'updateCategoryForm']) !!}

                     <div class="edit_parent_category_on form-group{{ $errors->has('edit_parent_category') ? ' has-error' : '' }}">
                        {!! Form::label('edit_parent_category', 'Parent Category') !!}
                        {!! Form::select('edit_parent_category', App\Models\Category::orderBy('name', 'asc')->where('parent', null)->pluck('name','id'), null, ['id' => 'edit_parent_category', 'class' => 'form-control refresh-cat', 'placeholder' => 'Select Parent Category', 'readonly']) !!}
                        <small class="text-danger">{{ $errors->first('edit_parent_category') }}</small>
                    </div>

                    <div class="form-group{{ $errors->has('edit_category_name') ? ' has-error' : '' }}">
                        {!! Form::label('edit_category_name', 'Category Name') !!}
                        {!! Form::text('edit_category_name', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Enter Category Name']) !!}
                        <small class="text-danger">{{ $errors->first('edit_category_name') }}</small>
                    </div>
                    {!! Form::hidden('id', 'value', ['id'=>'editCat']) !!}
                {!! Form::close() !!}

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light ms-auto" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="updateCategory(this)">Update Category</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<!-- Default Modals -->
<div id="parentCategoryModel" class="modal fade" tabindex="-1" aria-labelledby="parentCategory" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="parentCategory">Update Category</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
            </div>
            <div class="modal-body">
                
                 {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',''],'method'=>'put', 'files'=>true, 'id'=>'makeCategoryForm']) !!}

                     <div class="make_parent_category_on form-group{{ $errors->has('parent_category') ? ' has-error' : '' }}">
                        {!! Form::label('parent_category', 'Parent Category') !!}
                        {!! Form::select('parent_category', App\Models\Category::orderBy('name', 'asc')->where('parent', null)->pluck('name','id'), null, ['id' => 'parent_category', 'class' => 'form-control refresh-cat', 'placeholder' => 'Select Parent Category', 'readonly']) !!}
                        <small class="text-danger">{{ $errors->first('parent_category') }}</small>
                    </div>

                    <div class="form-group{{ $errors->has('child_category_name') ? ' has-error' : '' }}">
                        {!! Form::label('child_category_name', 'Child Category Name') !!}
                        {!! Form::text('child_category_name', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Enter Category Name', 'readonly']) !!}
                        {!! Form::hidden('child_category_id', 'value', ['id' => 'child-category-id']) !!}
                        <small class="text-danger">{{ $errors->first('child_category_name') }}</small>
                    </div>
                    {!! Form::hidden('id', 'value', ['id'=>'editCat']) !!}
                {!! Form::close() !!}

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light ms-auto" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="parentCategory(this)">Update Category</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

@endsection




@section('filter')
<form id="filterForm" action="" autocomplete="off">
<div class="offcanvas offcanvas-end border-0" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
    
    <div class="d-flex align-items-center bg-success bg-gradient p-3 offcanvas-header">
        <h5 class="m-0 me-2 text-white">Product Filters</h5>

        <button type="button" class="btn-close btn-close-white ms-auto" id="customizerclose-btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>


    <div class="offcanvas-body bg-light">

{{-- 
        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Filter By Date</h6>
            </div>

            <div class="card-body">
                {!! Form::open(['method' => 'POST', 'route' => 'admin.dashboard.filter', 'class' => 'form-horizontal', 'id'=>'filterForm']) !!}
                    <div id="reportrange" class="form-icon w-100" style="width: 280px;text-align:center;cursor:pointer;">
                        <span><input id="datefilter" style="cursor:pointer;" type="text" class="form-control form-control-sm form-control-icon" name="datefilter" value="All" /></span> <i class="fa fa-calendar"></i>
                    </div>
                {!! Form::close() !!}
            </div>

        </div> --}}




        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Product Type</h6>
            </div>

            <div class="card-body">
                <div class="form-group{{ $errors->has('product_type') ? ' has-error' : '' }}">
                    {!! Form::label('product_type', 'Product Type') !!}
                    {!! Form::select('product_type', [1 => 'Paper', 0 => 'Other'], null, ['id' => 'filter_product_type', 'class' => 'form-control form-control-sm', 'placeholder'=>'Product Type']) !!}
                    <small class="text-danger">{{ $errors->first('product_type') }}</small>
                </div>
            </div>

        </div>



        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Stock</h6>
            </div>

            <div class="card-body">
                <div class="form-group{{ $errors->has('stock') ? ' has-error' : '' }}">
                    {!! Form::label('stock', 'Stock') !!}
                    {!! Form::select('stock', [1=>'Low Stock'], null, ['id' => 'filter_stock', 'class' => 'form-control-sm form-control', 'placeholder' => 'Stock']) !!}
                    <small class="text-danger">{{ $errors->first('stock') }}</small>
                </div>
            </div>

        </div>




    </div>

    <div class="offcanvas-footer border-top p-3 text-center">
            <div class="d-flex gap-2">
                <div class="d-inline-block" style="width:20%;">
                    <button type="button" class="btn btn-soft-warning w-100 resetFilter border-warning">Reset</button>
                </div>
                <div class="d-inline-block" style="width:30%;">
                    <button type="button" class="btn btn-soft-success w-100 filters border-success">Apply Filter</button>
                </div>
                <div class="d-inline-block" style="width:50%;">
                    <button onclick="downloadExcel(this)" type="submit" class="btn btn-soft-success w-100 border-success"> Dowload</button>
                </div>
            </div>
        </div>


</div>
</form>
@endsection



@push('scripts')
<script src="//cdnjs.cloudflare.com/ajax/libs/jstree/3.3.3/jstree.min.js"></script>


<script type="text/javascript">

    $(document).ready(function () {
        $("form").on("keydown", function (e) {
            if (e.key === "Enter") {
                e.preventDefault();
            }
        });
    });


   $("#categories").jstree({
    "core" : {
        "check_callback" : true,
        'data' : {
            'url' : '{{ route('admin.'.request()->segment(2).'.index')}}?type=category',
            'data' : function (node) {
            }
        }
    },
    "plugins" : ["contextmenu"],
    "contextmenu": {
        "items": function (node) {
            // Define the context menu items
            var items = {
                @can('edit_category')
                "edit": {
                    "label": "Edit",
                    "icon": " bx bxs-edit",
                    "action": function () {
                        if(node.parent != '#'){
                            $('#edit_parent_category').val(node.parent);
                            $('.edit_parent_category_on').show();
                            $('#updateCategoryModel [for="edit_category_name"]').html("Subcategory Name");
                            $('#updateCategoryModel [name="edit_category_name"]').attr('placeholder', "Subcategory Name");
                        }else{
                            $('.edit_parent_category_on').hide();
                            $('#updateCategoryModel [for="edit_category_name"]').html("Category Name");
                            $('#updateCategoryModel [name="edit_category_name"]').attr('placeholder', "Category Name");
                        }
                        getSingleCategory(node.id);
                        $('#updateCategoryModel').modal("show");
                    }
                },
                @endcan

                @can('delete_category')
                "delete_category": {
                    "label": "Delete",
                    "icon": "bx bx-trash-alt",
                    "action": function () {
                        deleteAjax('/admin/category/'+node.id+'/delete')
                    }
                },
                @endcan
                "add_category": {
                    "label": "Add Category",
                    "icon": " bx bx-plus-circle",
                    "action": function () {
                        $('.parent_category_on').hide();
                        $('#mainCategoryModel').modal("show");
                        $('#mainCategoryModel [for="category_name"]').html("Category Name");
                        $('#mainCategoryModel [name="category_name"').attr('placeholder', "Category Name");
                    }
                }
                
            };

            

            if (node.parent === "#") {
                items["add_subcategory"] = {
                    "label": "Add Subcategory",
                    "icon": " bx bx-export",
                    "action": function () {
                        $('#parent_category').val(node.id);
                        $('.parent_category_on').show();
                        $('#mainCategoryModel').modal("show");
                        $('#mainCategoryModel [for="category_name"]').html("Subcategory Name");
                        $('#mainCategoryModel [name="category_name"').attr('placeholder', "Subcategory Name");
                    }
                };

                // Check if the node has children
                if (node.children.length === 0) {
                    items["make_subcategory"] = {
                        "label": "Make Subcategory",
                        "icon": "bx bx-subdirectory-right",
                        "action": function () {
                            getSingleCategory(node.id);
                            $('#child-category-id').val(node.id);
                            $('.parent_category_on').show();
                            $('#parentCategoryModel').modal("show");
                        }
                    };
                }
            } else {
                items["remove_subcategory"] = {
                    "label": "Remove From Subcategory",
                    "icon": "bx bx-reply",
                    "action": function () {
                        $.ajax({
                            type: "GET",
                            enctype: 'multipart/form-data',
                            url:'/admin/category/remove/parent/'+node.id,
                            contentType: false,
                            processData: false,
                            cache: false,
                            success:function(response){
                                Toastify({
                                    text: response.message,
                                    duration: 3000,
                                    close: true,
                                    gravity: "top", 
                                    position: "right",
                                    stopOnFocus: true,
                                    className: response.class,

                                }).showToast();
                                $('#categories').jstree('refresh');
                            },
                            error:function(error){
                                Toastify({
                                    text: error.responseJSON.message,
                                    duration: 3000,
                                    close: true,
                                    gravity: "top", // `top` or `bottom`
                                    position: "right", // `left`, `center` or `right`
                                    stopOnFocus: true, // Prevents dismissing of toast on hover
                                    className: "error",

                                }).showToast();
                                handleErrors(error.responseJSON);

                            }
                        });
                    }
                };
            }



            return items;
        }
    }
});



    $(document).ready(function(){
        var table2 = $('#datatable').DataTable({
            "ordering": false,
            "processing": true,
            "serverSide": true,
            'ajax': {
                'url': '{{ route('admin.'.request()->segment(2).'.index') }}',
                'data': function(d) {
                    d._token = '{{ csrf_token() }}';
                    d._method = 'PATCH';
                    d.category = $('#category_id').val();
                    d.product_type = $('#filter_product_type').val();
                    d.stock = $('#filter_stock').val();
                }

            },
            "columns": [
                { "data": "sn" },
                { "data": "code" },
                { "data": "product" },
                { "data": "product_type" },
                { "data": "hsn" },
                { "data": "quantity" },
                 { "data": "unit" },
                { "data": "wt_pc" },
                { "data": "total_weight" },
                {
                    "data": "action",
                    render: function(data, type, row) {
                        if (type === 'display') {
                            var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                            @can(['edit_product','delete_product','read_product'])

                            @can('ledger_product')

                                btn+='<li><a class=" dropdown-item edit-item-btn" href="{{ request()->url() }}/ledger/' + row['id'] + '"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Ledger</a></li>';
                            @endcan

                            @can('edit_product')
                                btn+='<li><a data-type="'+row['gsm']+'" data-id="'+row['id']+'" class="editProduct dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                            @endcan

                            // @can('delete_product')
                            // btn += '<li><button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'/delete\')" class="dropdown-item remove-item-btn"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</button></li>';
                            // @endcan

                            @endcan
                            btn += '</ul></div>';
                            return btn;
                        }
                        return ' ';
                    },
                }]

        });

        $('#categories').on('click','li a',function(){
         var category_id = $(this).parent().attr('id');
         $('#category_id').val(category_id);
         setTimeout(function(){
            table2.draw('page');
        }, 100);

     });

        //$('#category').jstree(true).select_node(3);
        jQuery("#categories").jstree("select_node", "#3"); 

        $('body').on('click', '.filters', function(){
            table2.draw('page');
            $('#offcanvasTop').offcanvas('hide');
        });


        $('body').on('click', '.resetFilter', function(){
            $('#filterForm').trigger("reset");
            table2.draw('page');
            $('#offcanvasTop').offcanvas('hide');
        });

    });









    $('body').on('click', '.createProduct', function(){
        var type = $(this).attr('data-product');

        var category_id = $('.jstree-clicked').parent().attr('id');
        if (typeof category_id === 'undefined') {
            alert('Please select a category.')
        }else{
            $.ajax({
                type: "GET",
                enctype: 'multipart/form-data',
                url:'{{ route('admin.product.create') }}?category='+category_id+'&type='+type,
                contentType: false,
                processData: false,
                cache: false,
                success:function(response){
                    if(type == 'paper'){
                        $('#paper-form').html(response);
                        $('#prductCreateModelPaper').modal("show");
                    }
                    if(type == 'other'){
                        $('#other-form').html(response);
                        $('#prductCreateModelOther').modal("show");
                    }
                }
            });
        }
    });


$('body').on('click', '.editProduct', function(){
    var id = $(this).attr('data-id');
    var type = $(this).attr('data-type');
    $.ajax({
        url: '/admin/product/'+id+'/edit',
        type: 'GET',
        contentType: false,
        processData: false,
        cache: false,
        success: function (response) {
            if(type == 'paper'){
                $('#paper-form').html(response);
                $('#prductCreateModelPaper').modal("show");
            }
            if(type == 'other'){
                $('#other-form').html(response);
                $('#prductCreateModelOther').modal("show");
            }

            // $('#edit-form').html(response);
            // $('#prductCreateModelPaper').modal("show");
        }
    });
    
});







// $('body').on('change', '.get-weight-per-sheet', function () {
//     var packet_weight = parseFloat($('[name="paper_packet_weight"]').val());
//     var sheet_per_packet = parseFloat($('[name="sheet_per_packet"]').val());
//     if (!isNaN(packet_weight) && !isNaN(sheet_per_packet) && sheet_per_packet > 0) {
//         var weight_per_sheet = packet_weight / sheet_per_packet;
//         $('[name="weight_per_sheet"]').val(weight_per_sheet.toFixed(3));
//     }
// });

function refreshParentCategoryDropdown() {
    $.ajax({
        url: '{{ route('admin.category.parent') }}',
        type: 'GET',
        dataType: 'json',
        success: function (response) {
            var options = '<option value="" selected>Select Parent Category</option>';
            $.each(response.datas, function (index, category) {
                options += '<option value="' + category.id + '">' + category.name + '</option>';
            });

            $('.refresh-cat').html(options);
        },
        error: function (error) {
            
        }
    });
}






function saveProduct(element){
    console.log('ok')
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;
    formData = new FormData(document.querySelector('#productSaveForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.product.store') }}',
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
            if(response.error === false){
                $('#prductCreateModelOther').modal("hide");
                
                $('#datatable').DataTable().draw('page');
            }
            button.normal();
            document.querySelector('#productSaveForm').reset();
            refreshParentCategoryDropdown();
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);

        }
    });
}



function savePaper(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;
    formData = new FormData(document.querySelector('#productSaveFormPaper'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.product.store.paper') }}',
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
            if(response.error === false){
                $('#prductCreateModelPaper').modal("hide");
                $('#datatable').DataTable().draw('page');
                document.querySelector('#productSaveFormPaper').reset();
            }
            button.normal();
            refreshParentCategoryDropdown();
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);

        }
    });
}

$('body').on('click', '.mainCategoryCreate', function(){
    $('.parent_category_on').hide();
    $('#mainCategoryModel').modal("show");
    $('.parentCat').remove();
});

function saveMainCategory(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;
    formData = new FormData(document.querySelector('#mainCategoryForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.category.store') }}',
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
                className: "success",

            }).showToast();
            if(response.error === false){
                $('#mainCategoryModel').modal("hide");
                $('#categories').jstree('refresh');
                $('.new-cat-btn').hide();
                           
            }
            button.normal();
            document.querySelector('#mainCategoryForm').reset();
            refreshParentCategoryDropdown();
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);

        }
    });
}



$('body').on('click', '.subCategoryCreate', function(){
    $('.parentCat').remove();
    var category_id = $('.jstree-clicked').parent().attr('id');
    if (typeof category_id === 'undefined') {
        alert('Please select a main category.')
    }else{
        var level = $('.jstree-clicked').parent().attr('aria-level');
        if(level == 1){
            $('#mainCategoryModel').modal("show");
            $('#mainCategoryModel form').append('<input type="hidden" name="parent_category" class="parentCat" value="'+category_id+'">');
        }else{
            alert('Please select a main category.')
        }
    }

    //$('#mainCategoryModel').modal("show");
});





function getSingleCategory(id){
    $.ajax({
        type: "GET",
        enctype: 'multipart/form-data',
        url:'/admin/category/'+id+'/edit',
        contentType: false,
        processData: false,
        cache: false,
        success:function(response){
            var data = response.datas;
            $('#updateCategoryModel [name="edit_category_name"]').val(data.name);
            $('#parentCategoryModel [name="child_category_name"]').val(data.name);
            $('#editCat').val(id);
            refreshParentCategoryDropdown();
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();
            handleErrors(error.responseJSON);

        }
    });
}


function updateCategory(element){
    var id = $('#editCat').val();
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;
    formData = new FormData(document.querySelector('#updateCategoryForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: '{{ route('admin.category.update', '')}}/'+id,
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
                className: "success",

            }).showToast();
            if(response.error === false){
                $('#updateCategoryModel').modal("hide");
                $('#categories').jstree('refresh');
                           
            }
            button.normal();
            document.querySelector('#updateCategoryForm').reset();
            refreshParentCategoryDropdown();
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);

        }
    });
}





function parentCategory(element){
    var id = $('#child-category-id').val();
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;
    formData = new FormData(document.querySelector('#makeCategoryForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: '{{ route('admin.category.update', '')}}/parent/'+id,
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
                className: "success",

            }).showToast();
            if(response.error === false){
                $('#parentCategoryModel').modal("hide");
                $('#categories').jstree('refresh');
                           
            }
            button.normal();
            document.querySelector('#makeCategoryForm').reset();
            refreshParentCategoryDropdown();
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);

        }
    });
}









function downloadExcel(element){
    var product_type = $('#filter_product_type').val();
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.excell-download.product-stock') }}',
        data: {'product_type':product_type, 'stock':$('#filter_stock').val(), '_method': 'POST', '_token': '{{ csrf_token() }}' },
        success:function(response){
           // $('#offcanvasTop').offcanvas('hide')
            Toastify({
                text: response.message,
                duration: 3000,
                close: true,
                gravity: "top",
                position: "right",
                stopOnFocus: true,
                className: response.class,

            }).showToast();
            button.normal();
            window.location.href = response.filename;
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top",
                position: "right",
                stopOnFocus: true,
                className: "error",

            }).showToast();
            button.normal();
        }
    });
} 




function downloadLedger(element, id){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.excell-download.product-ledger') }}',
        data: {'id':id, '_method': 'POST', '_token': '{{ csrf_token() }}' },
        success:function(response){
           // $('#offcanvasTop').offcanvas('hide')
            Toastify({
                text: response.message,
                duration: 3000,
                close: true,
                gravity: "top",
                position: "right",
                stopOnFocus: true,
                className: response.class,

            }).showToast();
            button.normal();
            window.location.href = response.filename;
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top",
                position: "right",
                stopOnFocus: true,
                className: "error",

            }).showToast();
            button.normal();
        }
    });
}


function packetWeight() {
    var length = $('#productSaveFormPaper .length').val();
    var width = $('#productSaveFormPaper .width').val();
    var gsm = $('#productSaveFormPaper .gsm').val();
    var sheet = $('#productSaveFormPaper .get-weight-per-sheet').val();

    

    length = parseFloat(length);
    width = parseFloat(width);
    gsm = parseFloat(gsm);
    sheet = parseFloat(sheet);


    if (!isNaN(length) && !isNaN(width) && !isNaN(gsm) && !isNaN(sheet)) {
        var packet_weight = (length * width * gsm * sheet) / 15500;
        var new_packet_weight = packet_weight / 100;
        $('#productSaveFormPaper .packet_weight').val(new_packet_weight.toFixed(2));
        var weight_per_sheet = new_packet_weight / sheet;
        $('[name="weight_per_sheet"]').val(weight_per_sheet.toFixed(3));
    }
}

$('body').on('change', '.length', function(){
    packetWeight();
});
$('body').on('change', '.width', function(){
    packetWeight();
});
$('body').on('change', '.gsm', function(){
    packetWeight();
});
$('body').on('change', '.get-weight-per-sheet', function(){
    packetWeight();
});


</script>

@endpush