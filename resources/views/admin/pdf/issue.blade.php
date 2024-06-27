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
            border: 1px solid #3577f1;
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
            border: 1px solid #000;
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




    <table class="border-secondary table-hover table table-bordered nowrap align-middle text-dark ">
        <colgroup>
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
        </colgroup>
    <tbody>
        <tr class="text-center" style="text-align: center;">
            <th colspan="10" style="text-align: center;">Material Issue Slip</th>
        </tr>
        <tr>
            <th colspan="3">{{get_app_setting('title')}}</th>
            <td colspan="3"></td>
            <th colspan="2">Issue Slip No.</th>
            <td colspan="2">{{$material->issue_no}}</td>
        </tr>
        <tr>
            <td colspan="3">{!! get_app_setting('address') !!}</td>
            <th colspan="3"></th>
            <th colspan="2">Issue Date</th>
            <td colspan="2">{{$material->created_at->format('d F, Y')}}</td>
        </tr>

        <tr>
            <th style="width: 10%;">Sr. No.</th>
            <th colspan="2" style="width: 20%;">Material Description</th>
            <th style="width: 10%;">HSN Code</th>
            <th style="width: 10%;">Issue To</th>
            <th style="width: 10%;">Quantity</th>
            <th style="width: 10%;">Unit</th>
            <th style="width: 10%;">Wt/Pc</th>
            <th style="width: 10%;">Remarks</th>
            <th style="width: 10%;">Total Quantity</th>
        </tr>

        @foreach($material->issueItems as $item)
            <tr>
                <td>{{$loop->index+1}}.</td>
                <td colspan="2">{{@$item->product->name}} - {{@$item->product->productType->type}}</td>
                <td>{{$item->product->hsn}}</td>
                <td>{{$item->issueFor->name}}</td>
                <td>{{$item->quantity}}</td>
                <td>{{$item->unit}}</td>
                <td>{{$item->product->weight_per_piece}}</td>
                <td>{{$item->remarks ??'N/A'}}</td>
                <td>{{$item->quantity * $item->product->weight_per_piece}}</td>
            </tr>
        @endforeach
 

        <tr>
            <th colspan="5">Issue By</th>
            <td colspan="5">{{$material->user->name}}</td>
            
        </tr>

    </tbody>
</table>

</body>
</html>
