@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            <p class="m-0">Job Card No: <b>{{$pasting->jobCard->job_card_no}}</b></p>
            @can('add_dye_details')
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
                <div class="table-responsive">
                    <table class="table-sm border-secondary table-hover table table-bordered nowrap align-middle" style="width:100%">
                        <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th width="10%">Carton Name</th>
                                <th>Quantity</th>
                                <th>Ready Quantity</th>
                                <th>Box</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach($pasting->jobCard->jobCardItems as $item)
                                {!! Form::open(['method' => 'PUT', 'route' => ['admin.pasting.update', $item->id], 'class' => 'form-horizontal']) !!}
                                
                                     {!! Form::hidden('item['.$item->id.'][purchase_order_id]', $item->POItem->purchase_order_id) !!}
                                     {!! Form::hidden('item['.$item->id.'][purchase_order_item_id]', $item->POItem->id) !!}
                                     {!! Form::hidden('job_card_id', $pasting->job_card_id) !!}
                                     {!! Form::hidden('total_job_cart_item', $pasting->jobCard->jobCardItems->count()) !!}
                                     {!! Form::hidden('pasting_id', $pasting->id) !!}
                                
                                    <tr>
                                        <td>{{$loop->index+1}}</td>
                                        <td>
                                            {{$item->POItem->carton_name}}
                                            {!! Form::hidden('item['.$item->id.'][carton_name]', $item->POItem->carton_name) !!}
                                        </td>
                                        <td>{{$item->POItem->quantity}}</td>
                                        <td>

                                            <div class="mb-0 form-group{{$errors->has('item.'.$item->id.'.ready_quantity') ? ' has-error' : '' }}" style="max-width: 100px;">
                                                    {!! Form::text('item['.$item->id.'][ready_quantity]', $item->ready_quantity, ['class' => 'form-control form-control-sm', 'placeholder'=>'Ready Quantity']) !!}
                                                </div>
                                                <small class="text-danger">{{ $errors->first('item.'.$item->id.'.ready_quantity') }}</small>
                                            </div>
                                        </td>
                                        <td>

                                            <div class="mb-0 form-group{{$errors->has('item.'.$item->id.'.ready_box') ? ' has-error' : '' }}" style="max-width: 100px;">
                                                    {!! Form::text('item['.$item->id.'][ready_box]', $item->ready_box, ['class' => 'form-control form-control-sm', 'placeholder'=>'Ready Box']) !!}
                                                </div>
                                                <small class="text-danger">{{ $errors->first('item.'.$item->id.'.ready_box') }}</small>
                                            </div>
                                        </td>
                                        <td>
                                            @if($item->status_id == 5)
                                                <input type="submit" class="btn btn-success btn-sm" value="Billed" >
                                            @else
                                                <input type="submit" name="" class="btn btn-primary btn-sm" value="Send To Billing">
                                            @endif
                                        </td>
                                    </tr>
                                {!! Form::close() !!}
                            @endforeach
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div><!--end col-->
</div><!--end row-->

@endsection


@push('scripts')

<script type="text/javascript">

</script>

@endpush