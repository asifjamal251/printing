@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
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

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">

                {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$issue->id],'method'=>'put', 'files'=>true]) !!}

                {!! Form::hidden('old_product_id', $issue->product_id) !!}
                {!! Form::hidden('old_quantity', $issue->quantity) !!}
                <div class="d-flex gap-3">

                    <div class="custom-width w-100">
                        <div class="form-group{{ $errors->has('product') ? ' has-error' : '' }}">
                            {!! Form::label('product', 'Product') !!}
                            {!! Form::select('product', App\Models\Product::where('id', $issue->product_id)->pluck('name', 'id'), $issue->product_id, ['id' => 'product', 'class' => 'form-control getProduct', 'placeholder' => 'Choose Product']) !!}
                            <small class="text-danger">{{ $errors->first('product') }}</small>
                        </div>
                    </div>


                    <div class="custom-width w-100">
                        <div class="form-group{{ $errors->has('quantity') ? ' has-error' : '' }}">
                            {!! Form::label('quantity', 'Quantity') !!}
                            {!! Form::number('quantity', $issue->quantity, ['class' => 'form-control', 'placeholder' => 'Quantity']) !!}
                            <small class="text-danger">{{ $errors->first('quantity') }}</small>
                        </div>
                    </div>

                    <div class="custom-width w-100">
                        <div class="form-group{{ $errors->has('unit') ? ' has-error' : '' }}">
                            {!! Form::label('unit', 'Unit') !!}
                            {!! Form::text('unit', $issue->unit, ['class' => 'form-control unit', 'placeholder' => 'Unit', 'readonly']) !!}
                            <small class="text-danger">{{ $errors->first('unit') }}</small>
                        </div>
                    </div>

                    <div class="custom-width w-100">
                        <div class="form-group{{ $errors->has('issue_for') ? ' has-error' : '' }}">
                            {!! Form::label('issue_for', 'Issue For') !!}
                            {!! Form::select('issue_for', App\Models\Requisition::orderBy('name', 'asc')->pluck('name', 'id'), $issue->issue_for, ['id' => 'issue_for', 'class' => 'form-control', 'placeholder' => 'Issue For']) !!}
                            <small class="text-danger">{{ $errors->first('issue_for') }}</small>
                        </div>
                    </div>

                    <div class="custom-width w-100">
                        <div class="form-group{{ $errors->has('oprator_name') ? ' has-error' : '' }}">
                            {!! Form::label('oprator_name', 'Oprator Name') !!}
                            {!! Form::text('oprator_name', $issue->oprator_name, ['class' => 'form-control', 'placeholder' => 'Oprator Name']) !!}
                            <small class="text-danger">{{ $errors->first('oprator_name') }}</small>
                        </div>
                    </div>

                   
                  <div class="custom-width" style="margin-top:28px;">
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
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>
<script>
    $('.getProduct').select2({
        delay : 200,
        minimumInputLength: 2,
        ajax: {
            url: '{{ route('admin.common.product.list') }}?paper_type=""',
            dataType: 'json',
            cache: true,
            data: function(params) {
                return {
                    term: params.term || '',
                    page: params.page || 1
                }
            },
        }
    });

    $('body').on('change', '.getProduct', function(){
        var product_id = $(this).val();
        $.ajax({
            type: "POST",
            dataType: 'json',
            url: '{{ route('admin.common.product.single')}}',
            data: {'id':product_id, '_method': 'POST', '_token': '{{ csrf_token() }}'},
            success:function(response){
                console.log(response.datas);
                $('.unit').val(response.datas.unit.name);
            },
            error:function(error){
        

            }
        });
    });
</script>
@endpush