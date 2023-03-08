@extends('frontend.patient.dashboard_new')
@section('title', 'Orders')
@section('style')
<style type="text/css">
     .red{
        color:red;
     }
     /*img-fluid {
        max-width: 100% !impo;
        height: auto;
    }*/


 </style>
@stop
@section('patient-content')
    <?php
        $savedCart = [];
        if(!empty($order->txn_cart)) {
            $savedCart = json_decode($order->txn_cart, 1);
        }
     ?>
<div class="col-md-12">
    <h3 class="mb-10 custom-title mb-4"> Orders Details</h3>
    <div class="row">
        <div class="col-md-4">
            <p class="mb-0">Order date:</p>
            <p class="font-weight-bold">{{$order->created_at->format('d/m/Y')}}</p>
        </div>
        <div class="col-md-3">
            <p class="mb-0">Order Status:</p>
            @if($order->status === 'P')
                <p class="font-weight-bold">Pending</p>
            @elseif($order->status === 'D')
                <p class="font-weight-bold">Declined</p>
            @elseif($order->status === 'C')
                <p class="font-weight-bold">Completed</p>
            @elseif($order->status === 'DISPENSED')
                <p class="font-weight-bold">DISPENSED</p>
            @endif
        </div>
        <div class="col-md-2">
            <p class="mb-0">Order ID:</p>
            <p class="font-weight-bold">{{$order->id}}</p>
        </div>
        <?php $trackingUrl = globalSettings("order_tracking_url"); ?>
        @if($order->tracking_code != null && !empty($trackingUrl))
            <div class="col-md-3">
                <p class="mb-0">Tracking Code:</p>
                <p class="font-weight-bold">
                    <?php $url = str_replace("[TRACKING_ID]", $order->tracking_code, $trackingUrl); ?>
                    <a href="{{ $url }}" target="_blank">Track Order</a>
{{--                    {{$order->tracking_code}}--}}
                </p>
            </div>
        @endif
    </div>
    <!-- medication list-->
    <div class="row mt-5">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table card-table table-bordered table-vcenter text-nowrap mb-0">
                    <thead>
                    <tr>
                        <th>Image</th>
                        <th>Product Title</th>
                        <th>Status</th>
                        <th>QTY</th>
                        <th>Price (AED)</th>
                         <th>Product Review</th>


                    </tr>
                    </thead>
                    <tbody>
                    <?php $grand_total = $order->price; ?>
                    @foreach($order->orderDetails as $order_details)
                        <?php $product = $order_details->product; ?>
                        @if(!empty($product))
                            <tr>
                                <td align="center">

                                    @if($order_details->product && $order_details->product->media && count($order_details->product->media) > 0)
                                        <img
                                            src="{{ url('storage/products/'.$order_details->product->media[0]->media) }}"
                                            width="80px"
                                            class="img-responsive"/>
                                    @endif
                                    <br>
                                    @if($order->status === 'C' && $order_details->is_reviewed == null || $order_details->is_reviewed == '0')
                                        <a href="javascript:;"
                                           data-hash-id="{{$order_details->hash_id}}"
                                           class="btn btn-default btn-sm custom-a-link add-edit-review">
                                            Review this product
                                        </a>
                                    @endif
                                </td>
                                <td>
                                    <p class="mb-1">
                                        {{$order_details->product ? $order_details->product->title : ''}}<br>
                                    </p>
                                    @if(!empty($order_details->offer_text))
                                        <?php
                                        $offer = json_decode($order_details->offer_text, 1);
                                        ?>
                                        @if(!empty($offer) && is_array($offer))
                                            <p class="mb-0">
                                                <strong class="text-success">Offer: </strong>
                                                <small class="text-success">
                                                    {{ @$offer["name"] }}
                                                    @if($offer["type"] === \App\Models\Offer::TYPE_PERCENT) ({{ round($offer["off"], 1). '% off' }}) @endif
                                                    @if($offer["type"] === \App\Models\Offer::TYPE_PRICE) ({{ 'AED'.round($offer["off"], 1). ' off' }}) @endif
                                                </small>
                                            </p>
                                        @endif
                                    @endif
                                </td>
                                <td>
                                    @if($order_details->status == 'P')
                                        <span class="font-weight-bold">Pending</span>
                                    @elseif($order_details->status == 'DISPENSED')
                                         <span class="font-weight-bold">Dispensed</span>
                                    @elseif($order_details->status == 'C')
                                         <span class="font-weight-bold">Completed</span>
                                        @if(!empty($order_details->approved_declined_note))
                                           <small class="order-note" style="cursor:pointer;" data-note="{{$order_details->approved_declined_note}}"> Order Note </small>
                                        @endif
                                    @else
                                         <span class="font-weight-bold">Declined</span>
                                        @if(!empty($order_details->approved_declined_note))
                                           <small class="order-note" style="cursor:pointer;" data-note="{{$order_details->approved_declined_note}}"> Order Note </small>
                                        @endif
                                    @endif
                                </td>
                                <td>
                                    {{$order_details->qty}}
                                </td>
                                <td>AED {{number_format($order_details->price_charged,2)}}</td>
                                <td><a style="padding: 8px" class="btn-primary" href="{{url("get-review-form",$order_details->hash_id)}}">Add Review</a></button></td>

                            </tr>

                        @endif
                    @endforeach()
                    @if(!empty($order) && $order->delivery_method_id)
                        <?php
                        $grand_total = $grand_total + $order->delivery_price_charged;
                        ?>
                        <tr>
                            <td colspan="4" align="right">
                                <strong> {{ ($order->delivery_method_title) ? $order->delivery_method_title : '' }}  <br> <small> {{ ($order->delivery_method_short_desc) ? $order->delivery_method_short_desc : '' }}. </small>
                                </strong> </td>
                            <td colspan="2" align="left">
                                AED ;{{ number_format($order->delivery_price_charged, 2) }}
                            </td>
                        </tr>
                    @endif
                    @if(!empty($order) && !empty($order->coupon_code_id))
                        <?php
                        $grand_total = ($savedCart["discountPrice"] - $savedCart["couponFree"]) + $savedCart["deliveryFee"];
                        ?>
                        <tr>
                            <td colspan="3" align="right"> <strong> Coupon Code </strong> </td>
                            <td colspan="2" align="left"> -&pound;{{ number_format($savedCart["couponFree"], 2) }} {{ $order->coupon_type === "FIXED_PRICE" ? "" : "(".$order->coupon_type_percent_value."%)" }}</td>
                        </tr>
                    @endif
                    <tr>
                        <td colspan="4" align="right" class="bg-light"><strong> Grand Total </strong></td>
                        <td colspan="2" align="left" class="bg-light"> <h4 class="p-0"> AED {{number_format($grand_total, 2) }} </h4> </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <p><strong> DELIVER TO </strong></p>
                            @if($order->patientOrderAddress)
                                <p>
                                    {!! deliveryAddress($order)!!}</p>
                            @endif
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="modal" id="select-order-note" style="z-index: 9999">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Heade-->
                <div class="modal-header">
                    <h4 class="modal-title mt-0">
                        Order Note
                    </h4>
                    <button type="button" class="close close-mod" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div id="order-note-p">
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>
@stop()
@section('scripts')

<script type="text/javascript">

    $(document).on("click", ".order-note", function(){
            var note = $(this).data('note');
            $('#order-note-p').html('<p>'+note+'</p>');
            $('#select-order-note').show();
    });

    $(document).ready(function () {

         $('.close-mod').click(function (){
            $('#select-order-note').hide();
        });

        $('.add-edit-review').click(function () {
        var hash_id = $(this).attr('data-hash-id');
        $.ajax({
                type: "GET",
                url: '{{url('get-review-form')}}' + '/' + hash_id,
                // processData: false,
                // contentType: false,
                headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                beforeSend: function (result) {
                    // $("#loading").css("display","block");
                    $('#crud_errors_div').addClass('d-none');
                    $('#crud_errors_ul').html('');
                },
                success: function (response) {
                // $("#loading").css("display","none");
                // swal(response);
                var popup_title = '';
                if (hash_id == '') {
                  popup_title = 'Leave a Review';
                } else {
                  popup_title = 'Leave a Review';
                } // if(hash_id == '')
                    $('#mc-popup-dialog').addClass('modal-lg');
                    // Set Heading
                    $('#general_bootstrap_ajax_popup_heading').html(popup_title);
                    // Set Body
                    $('#crud_contents').html(response);
                    // Set Footer
                    // $('#general_bootstrap_ajax_popup_footer').prepend('');
                    $('#general_bootstrap_ajax_popup').modal({
                    backdrop: 'static',
                    keyboard: false
                    });
                    $('#general_bootstrap_ajax_popup').modal('show');
                }, // success
                error: function (xhr, status, error) {
                  mcShowErrorsGet(xhr, status, error);
                }
           }); // $.ajax
        });
    });
</script>
@endsection
