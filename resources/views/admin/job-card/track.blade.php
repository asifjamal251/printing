@extends('admin.layouts.master')
@push('links')

@endpush


@php
if (!function_exists('getDifference')) {
    function getDifference($created_at, $updated_at) {
        $days = $created_at->diffInDays($updated_at);
        $hours = $created_at->diffInHours($updated_at->subDays($days));
        $minutes = $created_at->diffInMinutes($updated_at->subHours($hours));
        $seconds = $created_at->diffInSeconds($updated_at->subMinutes($minutes));
        return Carbon\CarbonInterval::days($days)->hours($hours)->minutes($minutes)->seconds($seconds)->forHumans();

    }
}
@endphp


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


    <div class="card">

        <div class="card-body">
            <div class="table-responsive">

                <table class="table mb-0">

                    <thead>

                        <tr class="alert-border-left alert alert-dark alert-solid">

                            <th>#</th>

                            <th>Machine</th>

                            <th>Assign Date</th>

                            <th>Close Date</th>

                            <th>Taken Time</th>

                        </tr>

                    </thead>

                    <tbody>
                        @foreach($job_card->jobCardHistory as $history)
                            <tr class="alert alert-border-left fade show alert-success">
                                <th>
                                    <i class="{{$history->job_card_out?'ri-check-double-line me-3 align-middle fs-16':'ri-refresh-line me-3  align-middle fs-16'}}"></i>
                                </th>
                                <td>{{$history->machine}}</td>
                                <td>{{$history->job_card_in?$history->job_card_in->format('d F Y | h:i:s A'):''}}</td>
                                <td>{{$history->job_card_out? $history->job_card_out->format('d F Y | h:i:s A'):'Working'}}</td>
                                <td>{{$history->job_card_out? getDifference($history->job_card_in, $history->job_card_out): getDifference($history->job_card_in, now())}}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

        </div>
    </div>
    @endsection


    @push('scripts')

    @endpush