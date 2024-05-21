<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
        }
        table, th, td {
            border: 1px solid #595959;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;
        }
        th {
            background-color: #f0e6cc;
        }
        .even {
            background-color: #fbf8f0;
        }
        .odd {
            background-color: #fefcf9;
        }
    </style>
</head>
<body>

<table style="width: 100%;">
    <tr>
        <td colspan="5" style="width: 50%;">
            <b>{{ get_app_setting('title') }}</b>
        </td>
        <td colspan="4" style="width: 50%;">
            <b>{{ $material['vendor']['name'] ?? 'N/A' }}</b>
        </td>
    </tr>
    <tr>
        <td colspan="5" style="width: 50%;">
            <p style="margin-bottom: 0;">{{ get_app_setting('contact_no') }}</p>
            <p style="margin-bottom: 0;">{{ get_app_setting('email') }}</p>
            <p style="margin-bottom: 0;">{{ get_app_setting('address') }}</p>
        </td>
        <td colspan="4" style="width: 50%;">
            <p style="margin-bottom: 0;">{{ $material['vendor']['phone_no'] ?? 'N/A' }}</p>
            <p style="margin-bottom: 0;">{{ $material['vendor']['email'] ?? 'N/A' }}</p>
            <p style="margin-bottom: 0;">{{ $material['vendor']['address'] ?? 'N/A' }}</p>
        </td>
    </tr>
    <tr>
        <th colspan="2" style="background-color: #fff;">Order No.</th>
        <td colspan="3" style="background-color: #fff;">{{ $material['order_no'] }}</td>
        <th colspan="2" style="background-color: #fff;">Order Date</th>
        <td colspan="2" style="background-color: #fff;">{{ \Carbon\Carbon::parse($material['created_at'])->format('d F, Y') }}</td>
    </tr>
    <tr>
        <th style="background-color: #ddd;">Si. No.</th>
        <th style="background-color: #ddd;" colspan="2">Product Details</th>
        <th style="background-color: #ddd;">Product Type</th>
        <th style="background-color: #ddd;">Rate</th>
        <th style="background-color: #ddd;">GST</th>
        <th style="background-color: #ddd;">Quantity</th>
        <th style="background-color: #ddd;">Unit</th>
        <th style="background-color: #ddd;">Amount</th>
    </tr>
    @if(isset($items))
        @foreach($items as $item)
            <tr>
                <td>{{ $loop->index + 1 }}</td>
                <td colspan="2">{{ $item['product']['name'] ?? 'N/A' }}</td>
                <td>{{ $item['product']['product_type']['type'] ?? 'N/A' }}</td>
                <td>{{ $item['rate_on'] ?? 'N/A' }}</td>
                <td>{{ $item['gst'] ?? 'N/A' }}</td>
                <td>{{ $item['quantity'] ?? 0 }}</td>
                <td>{{ $item['unit']['name'] ?? 'N/A' }}</td>
                <td>{{ $item['rate'] ?? 0 }}</td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="9">No items found.</td>
        </tr>
    @endif
    <tr>
        <th colspan="8" style="text-align: right; background-color: #fff;">Subtotal</th>
        <td>{{ $material['subtotal'] ?? 0 }}</td>
    </tr>
    <tr>
        <th colspan="8" style="text-align: right; background-color: #fff;">GST</th>
        <td>{{ $material['total_gst'] ?? 0 }}</td>
    </tr>
    <tr>
        <th colspan="8" style="text-align: right; background-color: #fff;">Total</th>
        <td>{{ $material['total'] ?? 0 }}</td>
    </tr>
    <tr>
        <td colspan="5" style="vertical-align: top; height: 80px;">Comment or Special Instructions</td>
        <td colspan="4" style="vertical-align: top; height: 80px;">hjhghj</td>
    </tr>
</table>

</body>
</html>
