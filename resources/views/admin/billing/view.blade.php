@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            <p class="m-0">Reference No: <b>{{$billing->bill_no}}</b></p>
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
                <div class="table-responsives">
                    <table class="table-sm border-secondary table-hover table table-bordered nowrap align-middle" style="width:100%">
                        <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th style="min-width: 20%;">Carton Name</th>
                                <th>PO No.</th>
                                <th>Quantity</th>
                                <th>Box</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach($billing->billingItems as $item)
                            <tr>
                                <td>{{$loop->index+1}}</td>
                                <td>{{$item->carton_name}}</td>
                                <td>{{$item->PO->po_no}}</td>
                                <td>{{$item->ready_quantity}}</td>
                                <td>{{$item->ready_box}}</td>
                                <th>
                                    <div class="dropdown d-inline-block">
                                        <button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="ri-more-fill align-middle"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end">
                                            <li>
                                                <a class="dropdown-item" href="{{ route('admin.billing.coa', $item->id) }}">
                                                    <i class="ri-eye-fill align-bottom me-2 text-muted"></i> COA
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </th>
                            </tr>
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