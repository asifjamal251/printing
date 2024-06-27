<!DOCTYPE html>
<html>
<head>
    <title>{{get_app_setting('title')}} (Material Inward)</title>
    <style>
        *{
            padding: 0;
            margin-left: 5px;
            margin-right: 10px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        @font-face {
            font-family: 'Roboto Regular';
            font-weight: normal;
            font-style: normal;
            font-variant: normal;
            src: url("fonts/roboto/Roboto-Regular.ttf") format('truetype');

        }
        @font-face {
            font-family: 'Roboto Black';
            font-weight: normal;
            font-style: normal;
            font-variant: normal;
            src: url("fonts/roboto/Roboto-Black.ttf") format('truetype');

        }

        @font-face {
            font-family: 'Roboto Light';
            font-weight: normal;
            font-style: normal;
            font-variant: normal;
            src: url("fonts/roboto/Roboto-Light.ttf") format('truetype');

        }
        body {
            font-family: 'Roboto Light', sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #000;
            text-align: left;
            background-color: #fff!important;
            font-family: 'Roboto Light', sans-serif;
            font-size: 10px;
        }

        th {
            background-color: #fff;
            font-family: 'Roboto Black', sans-serif;
        }
        .baked{
            background-color: #f7b84b!important;
        }

        table , td, th {
            border: 1px solid #595959;
            border-collapse: collapse;
        }
        td, th {
            padding: 3px!important;
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
        b{
            padding: 0;
        }
    </style>
</head>
<body>




    <table>
        <colgroup>
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
            <col style="width: 8.33%;">
        </colgroup>
        <tr class="text-center" style="text-align: center;">
            <th colspan="12" style="text-align: center;">Material Inward Receipt</th>
        </tr>
        <tr>

            <td colspan="6" style="width:50%;">
                <p><b>{{get_app_setting('title')}}</b></p>
                <p style="margin-bottom: 0;"><b>Email:</b>{{ get_app_setting('email') }}</p>
                <p style="margin-bottom: 0;"><b>Mobile No.:</b>{{ get_app_setting('contact_no') }}</p>
                <p style="margin-bottom: 0;"><b>GST:</b>{{ get_app_setting('gst') }}</p>
                <p style="margin-bottom:0"><b>Address:</b>{!! get_app_setting('address')??'' !!}</p>
            </td>

            <td colspan="6" style="width:50%;">
                <p><b>{{$material->vendor->name}}</b></p>
                <p style="margin-bottom:0">{{$material->vendor->phone_no}}</p>
                <p style="margin-bottom:0">{{$material->vendor->email}}</p>
                <p style="margin-bottom:0">{{$material->vendor->gst}}</p>
                <p style="margin-bottom:0">{{$material->vendor->address}}</p>

            </td>
        </tr>


        <tr>
            <th colspan="2" style="width:16.66% !important;">Bill No.</th>
            <td colspan="2" style="width:16.66%;">{{$material->bill_no}}</td>
            <th colspan="2" style="width:16.66%;">Bill Date</th>
            <td colspan="2" style="width:16.66%;">{{$material->bill_date->format('d F, Y')}}</td>
            <th colspan="2" style="width:16.66%;">Material Order No.</th>
            <td colspan="2" style="width:16.66%;">{{$material->material_order_no}}</td>
        </tr>

        <tr>
            <th colspan="2" style="width:16.66% !important;">Receipt No.</th>
            <td colspan="2">{{$material->receipt_no}}</td>
            <td colspan="4" style="width:33.32%;"></td>
            <th colspan="2" style="width:16.66%;">Receipt Date</th>
            <td colspan="2" style="width:16.66%;">{{$material->created_at->format('d F, Y')}}</td>
        </tr>

        <tr>
             <th style="width: 8.33%;">Si. No.</th>
            <th style="width: 16.66%;" colspan="2">Product Details</th>
            <th style="width: 8.33%;">Product Type</th>
            <th style="width: 8.33%;">QTY/PKT/NOs</th>
            <th style="width: 8.33%;">WT/PC</th>
            <th style="width: 8.33%;">Total Quantity</th>
            <th style="width: 8.33%;">Total Item</th>
            <th style="width: 8.33%;">Unit</th>
            <th style="width: 8.33%;">Rate</th>
            <th style="width: 8.33%;">GST</th>
            <th style="width: 8.33%;">Amount</th>
        </tr>

        @foreach($material->materialItems as $item)
        <tr>
            <td>{{$loop->index+1}}</td>
            <td style="width: 20%;" colspan="2">{{$item->product->name}}</td>
            <td>{{$item->product->productType->type}}</td>
            <td>{{$item->quantity}}</td>
            <td>{{$item->weight_per_piece}}</td>
            <td>{{$item->total_weight}}</td>
            <td>{{$item->total_item}}</td>
            <td>{{$item->unit}}</td>
            <td>{{$item->rate_on}}</td>
            <td>{{$item->gst}}</td>
            <td>{{$item->rate}}</td>
        </tr>
        @endforeach


        <tr>
            <td colspan="10"></td>
            <th>Subtotal</th>
            <td>{{$material->subtotal}}</td>
        </tr>
        <tr>
            <td colspan="10"></td>
            <th>GST</th>
            <td>{{$material->total_gst}}</td>
        </tr>
        <tr>
            <td colspan="10" style="text-align:left;">{{numberToWords($material->total)}}</td>
            <th>Total</th>
            <td>{{$material->total}}</td>
        </tr>


    </table>

</body>
</html>
