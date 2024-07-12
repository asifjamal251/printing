
   <table class="table table-bordered text-center table-nowrap align-middle mb-0">
        <tr>
            <th colspan="7" style="text-align:center; font-size: 20px; font-weight: 900;">{{$client->company_name}}</th>
        </tr>
        <tr>
            <th style="width:200px;text-align:center;"><b>PO No.</b></th>
            <th style="width:200px;text-align:center;"><b>PO Date</b></th>
            <th style="width:200px;text-align:center;"><b>Carton Name</b></th>
            <th style="width:200px;text-align:center;"><b>Rate</b></th>
            <th style="width:100px;text-align:center;"><b>Quantity</b></th>
            <th style="width:100px;text-align:center;"><b>Job Card No.</b></th>
            <th style="width:100px;text-align:center;"><b>Invoice No.</b></th>
            <th style="width:100px;text-align:center;"><b>Status</b></th>
        </tr>
                        
    <tbody>
     @foreach($stocks as $stock)
        @foreach($stock->purchaseOrderItems as $item)
            <tr>
                <td style="text-align:center;">{{$stock->po_no}}</td>
                <td style="text-align:center;">{{$stock->po_date->format('d F, Y')}}</td>
                <td style="text-align:center;">{{$item->carton_name}}</td>
                <td style="text-align:center;">{{$item->rate}}</td>
                <td style="text-align:center;">{{$item->quantity}}</td>
                <td style="text-align:center;">{{$item->jobCardItems?$item->jobCardItems->jobCard->job_card_no:'N/A'}}</td>
                <td style="text-align:center;">{{$item->invoice_no??'N/A'}}</td>
                <td style="text-align:center;">{!! status($item->status_id) !!}</td>
            </tr>
        @endforeach
        @endforeach

       

    </tbody>
</table>