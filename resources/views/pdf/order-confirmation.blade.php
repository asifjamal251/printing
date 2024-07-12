<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Confirmation</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body {
            font-family: Arial, sans-serif;
            font-size: 10px;
            padding: 10px;
        }
        table, th, td {
            border: 1px solid #595959;
            border-collapse: collapse;
            font-size: 10px;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #fff;
        }
        .even {
            background-color: #fff;
        }
        .odd {
            background-color: #fff;
        }
        p{
            margin-bottom: 10px;
            font-size: 10px;
        }
    </style>
</head>
<body>
    @if($material['status_id'] == 7)
    <div class=""></div>
    @endif
    <table style="width: 100%; table-layout: fixed;">
    <tr>
        <td colspan="4">
            <b>Bill To</b>
        </td>
        <td colspan="4">
            <b>Ship To</b>
        </td>
        <td colspan="4">
            <b>Vendor</b>
        </td>
    </tr>

    <tr>
        <td colspan="4">
            <img src="{{asset(get_app_setting('logo'))}}" alt="" style="max-width:160px;max-height: 60px;">
        </td>
        <td colspan="4">
            <img src="{{asset(get_app_setting('logo'))}}" alt="" style="max-width:160px;max-height: 60px;">
        </td>
        <td colspan="4">
            @if($material['vendor']['media'])
                <img class="d-block img-thumbnail" style="max-width:160px;max-height: 60px;" src="{{asset($material['vendor']['media']['file'])}}" alt="{{ $material['vendor']['name'] ?? 'N/A' }}">
            @else
                <b>{{ $material['vendor']['name'] ?? 'N/A' }}</b>
            @endif
        </td>
    </tr>

    <tr style="vertical-align:top;">
        <td colspan="4">
            <p><b>{{ $material['bill_to']['name'] ?? 'N/A' }}</b></p>
            <p style="margin-bottom: 5px;"><b>Email: </b>{{$material['bill_to']['email']}}</p>
            <p style="margin-bottom: 5px;"><b>Mobile No.: </b>{{$material['bill_to']['phone_no']}}</p>
            <p style="margin-bottom: 5px;"><b>GST: </b>{{$material['bill_to']['gst']}}</p>
            <p style="margin-bottom: 5px;"><b>Address: </b>{{$material['bill_to']['address']}}, <br>{{$material['bill_to']['locality']}} {{$material['bill_to']['city']['name']}}, <br>{{$material['bill_to']['state']['name']}} - {{$material['bill_to']['pincode']}}</p>
        </td>

        <td colspan="4">
            <p><b>{{ $material['ship_to']['name'] ?? 'N/A' }}</b></p>
            <p style="margin-bottom: 5px;"><b>Email: </b>{{$material['ship_to']['email']}}</p>
            <p style="margin-bottom: 5px;"><b>Mobile No.: </b>{{$material['ship_to']['phone_no']}}</p>
            <p style="margin-bottom: 5px;"><b>GST: </b>{{$material['ship_to']['gst']}}</p>
            <p style="margin-bottom: 5px;"><b>Address: </b>{{$material['ship_to']['address']}}, <br>{{$material['ship_to']['locality']}} {{$material['ship_to']['city']['name']}}, <br>{{$material['ship_to']['state']['name']}} - {{$material['ship_to']['pincode']}}</p>
        </td>

        <td colspan="4">
            <p><b>{{ $material['vendor']['name'] ?? 'N/A' }}</b></p>
            <p style="margin-bottom: 5px;"><b>Email: </b>{{ $material['vendor']['email'] ?? 'N/A' }}</p>
            <p style="margin-bottom: 5px;"><b>Mobile: </b>{{ $material['vendor']['phone_no'] ?? 'N/A' }}</p>
            <p style="margin-bottom: 5px;"><b>GST: </b>{{ $material['vendor']['gst'] ?? 'N/A' }}</p>
            <p style="margin-bottom: 5px;"><b>Address: </b>{!! $material['vendor']['address'] ?? 'N/A' !!}</p>
        </td>
    </tr>

    <tr>
        <th colspan="2" style="background-color: #fff;">Order No.</th>
        <td colspan="2" style="background-color: #fff;">{{ $material['order_no'] }}</td>
        <td colspan="4"></td>
        <th colspan="2" style="background-color: #fff;">Order Date</th>
        <td colspan="2" style="background-color: #fff;">{{ \Carbon\Carbon::parse($material['created_at'])->format('d F, Y') }}</td>
    </tr>

    <tr>
        <th style="background:#fff;">Si. No.</th>
        <th style="background:#fff;" colspan="3">Product Details</th>
        <th style="background:#fff;">Product Type</th>
        <th style="background:#fff;">QTY/PKT/NOs</th>
        <th style="background:#fff;">WT/PC</th>
        <th style="background:#fff;">Total Quantity</th>
        <th style="background:#fff;">Unit</th>
        <th style="background:#fff;">Rate</th>
        <th style="background:#fff;">GST</th>
        <th style="background:#fff;">Amount</th>
    </tr>

    @if(isset($items))
        @foreach($items as $item)
        <tr>
            <td>{{ $loop->index + 1 }}</td>
            <td colspan="3">{{ $item['product']['name'] ?? 'N/A' }}</td>
            <td>{{ $item['product']['product_type']['type'] ?? 'N/A' }}</td>
            <td>{{ $item['quantity'] ?? 0 }}</td>
            <td>{{ $item['weight_per_piece'] }}</td>
            <td>{{ $item['total_weight'] }}</td>
            <td>{{ $item['unit']['name'] ?? 'N/A' }}</td>
            <td>{{ $item['rate_on'] ?? 'N/A' }}</td>
            <td>{{ $item['gst'] ?? 'N/A' }}</td>
            <td>{{ $item['rate'] ?? 0 }}</td>
        </tr>
        @endforeach
    @else
        <tr>
            <td colspan="12">No items found.</td>
        </tr>
    @endif

    <tr>
        <th colspan="10" style="background-color: #fff;"></th>
        <th style="background-color: #fff;">Subtotal</th>
        <td>{{ $material['subtotal'] ?? 0 }}</td>
    </tr>
    <tr>
        <th colspan="10" style="background-color: #fff;"></th>
        <th style="background-color: #fff;">GST</th>
        <td>{{ $material['total_gst'] ?? 0 }}</td>
    </tr>
    <tr>
        <th colspan="10" style="background-color: #fff;">{{numberToWords($material['total'])}}</th>
        <th style="background-color: #fff;">Total</th>
        <td>{{ $material['total'] ?? 0 }}</td>
    </tr>
    <tr>
        <td colspan="6" style="vertical-align: top; height: 80px;">Comment or Special Instructions</td>
        <td colspan="6" style="vertical-align: top; height: 80px;"></td>
    </tr>
    <tr>
        <td colspan="12">
            <small><b>Terms & Conditions</b></small>
            <p style="margin-bottom:0;">1. PAYMENT TERMS: 90 DAYS FROM THE DATE OF RECEIPT OF MATERIAL TO OUR FACTORY, SUBJECT TO APPROVAL OF MATERIAL.</p>
            <p style="margin-bottom:0;">2. PLEASE ATTACH COA WITH INVOICE COPY, WITHOUT COA MATERIAL WILL NOT BE ACCEPTED.</p>
            <p style="margin-bottom:0;">3. CONTACT FOR DELIVERY RELATED: 7018247476.</p>
            <p style="margin-bottom:0;">4. R.M. Mfg Date should not be more than 3 months otherwise we may not accept the material.</p>
            <p style="margin-bottom:0;">5. Please write GSM/Size/Qyt/Packing Details on the Invoice.</p>
            <p style="margin-bottom:0;">6. Please attach P.O. photocopy along with the original bill.</p>
            <p style="margin-bottom:0;">7. Payment may not be released without P.O. No. & Date on the Bill & Challan & highlight the same.</p>
            <p style="margin-bottom:0;">8. In case goods are not dispatched by agreed date then we may procure goods from market & rate difference shall be debited to your A/C.</p>
            <p style="margin-bottom:0;">9. All Disputes are subject to Chandigarh jurisdiction only.</p>
            <p style="margin-bottom:0;">10. Bill to be prepared as per P.O. only. Extra Charge e.g. Packing Forwarding, Postage, Insurance shall not be paid by us.</p>
            <p style="margin-bottom:0;">11. In case Material is rejected, Inward Transportation and Testing charges will be debited.</p>
            <p style="margin-bottom:0;">12. Kindly make the E-Way bill according to the Billing & Shipping Details.</p>
        </td>
    </tr>
</table>


</body>
</html>
