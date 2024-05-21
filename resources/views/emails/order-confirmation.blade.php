<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Confirmation</title>
    <style>
        table, td, th {
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
    </style>
</head>
<body>

<table class="table" style="width:100%;">
    <tr>
        <td colspan="4">
            <b>{{ get_app_setting('title') }}</b>
        </td>
        <td colspan="4">
            <b>{{ $material['vendor']['name'] ?? 'N/A' }}</b>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <p style="margin-bottom:0">{{ get_app_setting('contact_no') }}</p>
            <p style="margin-bottom:0">{{ get_app_setting('email') }}</p>
            <p style="margin-bottom:0">{{ get_app_setting('address') }}</p>
        </td>
        <td colspan="4">
            <p style="margin-bottom:0">{{ $material['vendor']['phone_no'] ?? 'N/A' }}</p>
            <p style="margin-bottom:0">{{ $material['vendor']['email'] ?? 'N/A' }}</p>
            <p style="margin-bottom:0">{{ $material['vendor']['address'] ?? 'N/A' }}</p>
        </td>
    </tr>
    <tr>
        <th>Order No.</th>
        <td>{{ $material['order_no'] }}</td>
        <td colspan="4"></td>
        <th>Order Date</th>
        <td>{{ \Carbon\Carbon::parse($material['created_at'])->format('d F, Y') }}</td>
    </tr>
    <tr>
        <th style="background:#ddd;">Si. No.</th>
        <th style="background:#ddd;" colspan="2">Product Details</th>
        <th style="background:#ddd;">Rate</th>
        <th style="background:#ddd;">GST</th>
        <th style="background:#ddd;">Quantity</th>
        <th style="background:#ddd;">Unit</th>
        <th style="background:#ddd;">Amount</th>
    </tr>
    @if(isset($material['materialItems']) && count($material['materialItems']) > 0)
        @foreach($material['materialItems'] as $item)
            <tr>
                <td>{{ $loop->index + 1 }}</td>
                <td colspan="2">{{ $item['product']['name'] ?? 'N/A' }}</td>
                <td>{{ $item['rate_on'] ?? 'N/A' }}</td>
                <td>{{ $item['gst'] ?? 'N/A' }}</td>
                <td>{{ $item['quantity'] ?? 0 }}</td>
                <td>{{ $item['unit']['name'] ?? 'N/A' }}</td>
                <td>{{ $item['rate'] ?? 0 }}</td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="8">No items found.</td>
        </tr>
    @endif
    <tr>
        <th colspan="7" style="text-align:right;">Subtotal</th>
        <td>{{ $material['subtotal'] ?? 0 }}</td>
    </tr>
    <tr>
        <th colspan="7" style="text-align:right;">GST</th>
        <td>{{ $material['total_gst'] ?? 0 }}</td>
    </tr>
    <tr>
        <th colspan="7" style="text-align:right;">Total</th>
        <td>{{ $material['total'] ?? 0 }}</td>
    </tr>
    <tr>
        <td colspan="5" rowspan="2" style="vertical-align: top;height: 80px;">Comment or Special Instructions</td>
        <td colspan="3" rowspan="2"></td>
    </tr>
    <tr>
    </tr>
    <tr style="visibility:collapse;">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
</body>
</html>
