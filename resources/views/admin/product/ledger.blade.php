@extends('admin.layouts.master')
@push('links')
@endpush




@section('main')

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            <a href="javascript:window.print()" class="btn btn-primary btn-sm"><i class="ri-printer-line align-bottom me-1"></i> Print</a>
        </div>
    </div>
</div>
<!-- end page title -->

@php
    if (!function_exists('docSlip')) {
        function docSlip($issue, $materialInward){
            if($issue != ''){
                return 'IS/'.$issue['issue']['issue_no'];
            }
            if($materialInward != ''){
                return 'RC/'.$materialInward['bill_no'];
            }
            return 'N/A';
        }
    }

    if (!function_exists('particular')) {
        function particular($issue, $materialInward){
            if($issue != ''){
                return $issue['issueFor']->name;
            }
            if($materialInward != ''){
                return $materialInward['vendor']->name;
            }
            return 'N/A';
        }
    }
@endphp


<div class="row">
    <div class="col-lg-12">
        <div class="card">

            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable" class="datatable table-sm border-secondary table-hover table table-bordered nowrap align-middle" style="width:100%">
                        <thead class="gridjs-thead">
                            <tr>
                                <th class="text-center" colspan="7" style="font-size: 14px;">{{$product->name}} @if($product->product_type_id != '')- {{$product->category->name}}@endif</th>                            
                            </tr>
                            <tr>
                                <th>Si</th>
                                <th>Date</th>
                                <th>Doc No.</th>
                                <th>Particular</th>
                                <th>Reciept</th>
                                <th>Issue</th>
                                <th>Balance</th>
                            </tr>
                        </thead>
                        <tbody>

                            @if($open_balance != '')
                                <tr>
                                    <td>1</td>
                                    <td>{{$open_balance->created_at->format('Y')}}</td>
                                    <td></td>
                                    <td>Opening Balance</td>
                                    <td></td>
                                    <td></td>
                                    <td>{{$open_balance->total_quantity}}</td>
                                </tr>
                            @endif

                            @foreach($transactions as $transaction)
                                @if($transaction->total_quantity != 0)
                                <tr>
                                    @if($open_balance != '')
                                        <td>{{$loop->index+2}}</td>
                                    @else
                                        @if($transaction->total_quantity != 0)
                                            <td>{{$loop->index}}</td>
                                        @else
                                            <td>{{$loop->index+1}}</td>
                                        @endif
                                    @endif
                                    <td>{{$transaction->created_at->format('d F, Y')}}</td>
                                    <td>{{docSlip($transaction->issueItem, $transaction->materialInward)}}</td>
                                    <td>{{particular($transaction->issueItem, $transaction->materialInward)}}</td>
                                    <td>{{$transaction->new_quantity}}</td>
                                    <td>{{$transaction->new_quantity}}</td>
                                    <td>{{$transaction->total_quantity}}</td>
                                </tr>
                                @endif
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

@endpush