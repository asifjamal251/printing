@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
                    @can('add_job_card')
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
                        <h6 class="card-title mb-0 text-center">COLOUR IMPRESSION</h6>
                    </div>
                    
                    <div class="card-body">
                        <table class="table table-sm table-bordered border-secondary table-nowrap">
                            <tr class="text-center bg-light">
                                <th colspan="4">Job Card Details</th>
                            </tr>

                            <tr>
                                <th style="width:25%;">Job Card No.</th>
                                <td style="width:25%;">{{$job_card->job_card_no}}</td>
                                <th style="width:25%;">Client</th>
                                <td style="width:25%;">{!! getClientName($job_card->jobCardItems) !!}</td>
                            </tr>

                            <tr>
                                <th>Job Card Date</th>
                                <td>{{$job_card->created_at->format('d F, Y')}}</td>
                                <th>PO No.</th>
                                <td>{!! PONO($job_card->jobCardItems) !!}</td>
                            </tr>

                            <tr>
                                <th>Set No./Doc No.</th>
                                <td>{{ $job_card->set_no }}</td>
                                <th>PO Date</th>
                                <td>{!! PODate($job_card->jobCardItems) !!}</td>
                            </tr>

                            <tr>
                                <th>Carton Name</th>
                                <td colspan="3">{!! getCartonNames2($job_card->jobCardItems) !!}</td>
                            </tr>


                            <tr class="text-center bg-light" style="background-color: #ddd;">
                                <th colspan="4">Coating Details</th>
                            </tr>

                            <tr>
                                <th>Coating Type</th>
                                <td>{!! coatingType($job_card->jobCardItems) !!}</td>
                                <th>Roll Used</th>
                                <td>{{$job_card->roll_used??0}}</td>
                            </tr>


                            <tr>
                                <th>Window Cutting</th>
                                <td>{!! $job_card->coating_window_cutting??'none' !!}</td>
                                <th>Other Coating</th>
                                <td>{{$job_card->other_coating_machine??''}}</td>
                            </tr>


                            <tr class="text-center bg-light" style="background-color:#ddd;">
                                <th colspan="4">Paper Detail</th>
                            </tr>

                            <tr>
                                <th>Sheet Size</th>
                                <td>{{ $job_card->sheet_size }}</td>
                                <th>Paper Used</th>
                                <td>{{ App\Models\Product::where('id', $job_card->product_id)->value('name')}}</td>
                            </tr>


                            <tr>
                                <th>Paper Type</th>
                                <td>{!! getPaper($job_card->jobCardItems) !!}</td>
                                <th>Sheets Required</th>
                                <td>{{$job_card->required_sheet??''}}</td>
                            </tr>


                             <tr>
                                <th>Wastage</th>
                                <td>{{$job_card->wastage_sheet}}</td>
                                <th>Total Sheets For Cutting</th>
                                <td>{{$job_card->wastage_sheet + $job_card->required_sheet}}</td>
                            </tr>


                            <tr class="text-center bg-light" style="background-color:#ddd;">
                                <th colspan="4">Other Details</th>
                            </tr>

                            <tr>
                                <th>Dye Number</th>
                                <td>{{ $job_card->dye_details_id?$job_card->deyDetail->dye_no:'NEW' }}</td>
                                <th>Embossing/Leafing</th>
                                <td>{!! jobItemEmbLeaf($job_card->jobCardItems) !!}</td>
                            </tr>

                            <tr>
                                <th>Color</th>
                                <td>{{ $job_card->color }}</td>
                                <th>Dye Machine</th>
                                <td>{!! $job_card->dye_machine??'manual' !!}</td>
                            </tr>


                            <tr class="text-center bg-light">
                                <th colspan="4" style="height:30px;"></th>
                            </tr>

                            <tr class="text-center">
                                <th colspan="3" style="width:50%;">Remarks</th>
                                <th>Auth. Sign.</th>
                            </tr>

                            <tr class="text-center">
                                <td colspan="3" style="width:50%; height: 50px;"> </td>
                                <td style="height: 50px;"> </td>
                            </tr>

                            



                        </table>
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->



@endsection


@push('scripts')


@endpush