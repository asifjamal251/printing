@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
                    @can('add_issue')
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
                        <table id="datatable" class="datatable table table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th>Job Card No.</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Unit</th>
                                <th>Issue By</th>
                                <th>Issue For</th>
                                <th>Oprator Name</th>
                                @can(['edit_issue'])
                                  <th>Action</th>
                                @endcan
                            </tr>
                        </thead>

                        <tbody>
                            @foreach($issue->issueItems as $item)
                                <tr>
                                    <td>{{$loop->index+1}}</td>
                                    <td>{{$item->job_card_id?$item->jobCard->job_card_no:'N/A'}}</td>
                                    <td>{{$item->product->name}}</td>
                                    <td>{{$item->quantity}}</td>
                                    <td>{{$item->unit}}</td>
                                    <td>{{$item->issueBy->name}}</td>
                                    <td>{{$item->issue_for?$item->issueFor->name:'Inssued for a Job Card', }}</td>
                                    <td>{{$item->oprator_name}}</td>
                                    <th><a class="btn btn-sm btn-primary" href="{{route('admin.issue.edit',$item->id)}}">Edit</a></th>
                                </tr>
                            @endforeach
                        </tbody>
                       
                        </table>
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->



@endsection


@push('scripts')

@endpush