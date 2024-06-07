@extends('admin.layouts.master')
@push('links')

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




        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    
                    <div class="card-body">
                        <table id="datatable" class="datatable table table-bordered nowrap align-middle" style="width:100%">
                            <tr>
                                <th>Client</th>
                                <td>{{$carton->client->company_name}}</td>
                            </tr>

                            <tr>
                                <th>Carton Name</th>
                                <td>{{$carton->carton_name}}</td>
                            </tr>

                            <tr>
                                <th>Art Work</th>
                                <td>{{$carton->art_work}}</td>
                            </tr>

                            <tr>
                                <th>Carton Size</th>
                                <td>{{$carton->carton_size}}</td>
                            </tr>

                            <tr>
                                <th>Coating Type</th>
                                <td>{{$carton->coatingType->type}}</td>
                            </tr>

                            <tr>
                                <th>Other Coating Type</th>
                                <td>{{$carton->otherCoatingType->type}}</td>
                            </tr>

                            <tr>
                                <th>Paper Type</th>
                                <td>{{$carton->paperType->type}}</td>
                            </tr>

                            <tr>
                                <th>GSM</th>
                                <td>{{$carton->gsm}}</td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->


<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <table class="datatable table table-bordered nowrap align-middle" style="width:100%">
                    <tr>
                        <th style="width:80px;">Si. No.</th>
                        <th>Quantity</th>
                        <th>Rate</th>
                        <th>Created At</th>
                    </tr>
                    @foreach($carton->cartonPrice as $rate)
                    <tr>
                        <td>{{$loop->index+1}}</td>
                        <td>{{$rate->quantity}}</td>
                        <td>₹{{$rate->price}}</td>
                        <td>{{$rate->created_at->format('d F, Y')}}</td>
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
</div>

@endsection


@push('scripts')

@endpush