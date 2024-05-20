<!DOCTYPE html>
<html>
    <head>
        <title>{{get_app_setting('title')}} (Bill Description)</title>
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
            body {
                font-family: 'Roboto Regular', sans-serif;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                border: 1px solid #000;
                text-align: left;
                background-color: #fff;
                font-family: 'Roboto Regular', sans-serif;
                font-size: 10px;
            }

            th {
                background-color: #f2f2f2;
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
        <tbody>
            <tr>
                <td style="text-align: center;" colspan="9"><b>DESCRIPTION OF GOODS</b></td>
            </tr>
            <tr>
                <td style="text-align: center;" colspan="9"><b>{{get_app_setting('title')}}</b></td>
            </tr>
            <tr>
                <td style="text-align: center;" colspan="9">{{get_app_setting('address')}}</td>
            </tr>
            <tr>
                <td colspan="3">Client Name: <b>{{$billing->client->company_name}}</b></td>
                <td colspan="4" rowspan="2"></td>
                <td colspan="2">Reference No.: <b>{{$billing->bill_no}}</b></td>
                
            </tr>
            <tr>
                <td colspan="3">Address: <b>{{$billing->client->address}}</b></td>
                <td colspan="2">Date: <b>{{$billing->updated_at->format('D F, Y')}}</b></td>
            </tr>


            <tr>
                <td style="width: 10px;"><b>SR.NO</b></td>
                <td><b>CARTON NAME</b></td>
                <td><b>PO NO</b></td>
                <td><b>QUANTITY</b></td>
                <td><b>DISCRIPTION (BOX)</b></td>
                <td><b>RATE</b></td>
                <td><b>AMOUNT</b></td>
                <td><b>GST</b></td>
                <td><b>TOTAL AMOUNT</b></td>
            </tr>

            @foreach($billing->billingItems as $item)
            @php
                $amount = $item->POItem->rate * $item->ready_quantity;
            @endphp
                <tr>
                    <td>{{$loop->index+1}}</td>
                    <td>{{$item->POItem->carton_name}}</td>
                    <td>{{$item->PO->po_no}}</td>
                    <td>{{$item->ready_quantity}}</td>
                    <td>{{$item->ready_box}}</td>
                    <td>{{$item->POItem->rate}}</td>
                    <td>{{$amount}}</td>
                    <td>{{$item->POItem->gst}}</td>
                    <td>{{$amount+($amount * $item->POItem->gst)/100}}</td>
                </tr>
            @endforeach
            
        </tbody>
    </table>
       
    </body>
</html>
