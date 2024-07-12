@extends('admin.layouts.master')
@push('links')
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

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">

              {!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$billing->id],'method'=>'put', 'files'=>true]) !!}
              {!! Form::hidden('client_id', $billing->client_id) !!}
              @foreach($billing->billingItems as $item)
               {!! Form::hidden('billing_items['.$item->id.'][id]', $item->id) !!}
              <div class="row">


                <div class="form-group col-md-4 col-sm-12">
                    <div class="form-group{{$errors->has('billing_items.'.$item->id.'.carton_name') ? ' has-error' : '' }}">
                        {!! Form::label('carton_name', 'Carton Name') !!}
                        {!! Form::text('billing_items['.$item->id.'][carton_name]', $item->carton_name, ['class' => 'form-control', 'placeholder' => 'Carton Name', 'data-id'=>$item->id]) !!}
                        <small class="text-danger">{{ $errors->first('billing_items.'.$item->id.'.carton_name') }}</small>
                    </div>
               </div>

               <div class="form-group col-md-4 col-sm-12">
                    <div class="form-group{{$errors->has('billing_items.'.$item->id.'.ready_quantity') ? ' has-error' : '' }}">
                        {!! Form::label('ready_quantity', 'Ready Quantity') !!}
                        {!! Form::text('billing_items['.$item->id.'][ready_quantity]', $item->ready_quantity, ['class' => 'form-control', 'placeholder' => 'Ready Quantity', 'data-id'=>$item->id]) !!}
                         {!! Form::hidden('billing_items['.$item->id.'][old_quantity]', $item->ready_quantity) !!}
                        <small class="text-danger">{{ $errors->first('billing_items.'.$item->id.'.ready_quantity') }}</small>
                    </div>
                </div>

           <div class="form-group col-md-4 col-sm-12">
                <div class="form-group{{$errors->has('billing_items.'.$item->id.'.ready_box') ? ' has-error' : '' }}">
                    {!! Form::label('ready_box', 'Ready Box') !!}
                    {!! Form::text('billing_items['.$item->id.'][ready_box]', $item->ready_box, ['class' => 'form-control', 'placeholder' => 'Ready Box', 'data-id'=>$item->id]) !!}
                    <small class="text-danger">{{ $errors->first('billing_items.'.$item->id.'.ready_box') }}</small>
                </div>
            </div>
        </div>
   @endforeach

   <div class="row">
    <div class="col-md-12 text-center"> 
        {!! Form::submit('Update Billing', ['class' => 'btn btn-success']) !!}
    </div>
</div>

{!! Form::close() !!}

</div>
</div>
</div>
</div>



@endsection




@push('scripts')

@endpush