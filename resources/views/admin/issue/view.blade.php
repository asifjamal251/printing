@extends('admin.layouts.master')
@push('links')
{{-- <style type="text/css">
    table , td, th {
    border: 1px solid #595959;
    border-collapse: collapse;
}
td, th {
    padding: 3px;
    width: 30px;
    height: 25px;
}
th {
    background: #f0e6cc;
}
.even {
    background: #fbf8f0;
}
.odd {
    background: #fefcf9;
}
</style> --}}
@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>

                    @can('add_material_inward')
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
                    <div class="card-header">
                        <h6 class="card-title mb-0 text-center">{{get_app_setting('title')}}</h6>
                    </div>
                    
                    <div class="card-body">

                        <table class="border-secondary table-hover table table-bordered nowrap align-middle text-dark ">
    <tbody>
        <tr class="text-center">
            <th colspan="8">Material Issue Slip</th>
        </tr>
        <tr>
            <th colspan="3">{{get_app_setting('title')}}</th>
            <td rowspan="2"></td>
            <th colspan="2">Issue Slip No.</th>
            <td colspan="2">{{$material->issue_no}}</td>
        </tr>
        <tr>
            <td colspan="3">{!! get_app_setting('address') !!}</td>
            <th colspan="2">Issue Date</th>
            <td colspan="2">{{$material->created_at->format('d F, Y')}}</td>
        </tr>

        <tr>
            <th>Sr. No.</th>
            <th>Material Description</th>
            <th>HSN Code</th>
            <th>Issue To</th>
            <th>Quantity</th>
            <th>Unit</th>
            <th>Wt/Pc</th>
            <th>Total Quantity</th>
        </tr>

        @foreach($material->issueItems as $item)
            <tr>
                <td>{{$loop->index+1}}.</td>
                <td>{{$item->product->name}}</td>
                <td>{{$item->product->hsn}}</td>
                <td>{{$item->issueFor->name}}</td>
                <td>{{$item->quantity}}</td>
                <td>{{$item->unit}}</td>
                <td>{{$item->product->weight_per_piece}}</td>
                <td>{{$item->quantity * $item->product->weight_per_piece}}</td>
            </tr>
        @endforeach
 

        <tr style="border-top:2px solid #3577f1;">
            <th colspan="2">Issue By</th>
            <td colspan="6">{{$material->user->name}}</td>
            
        </tr>

    </tbody>
</table>


                
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->



@endsection















@push('scripts')

@endpush