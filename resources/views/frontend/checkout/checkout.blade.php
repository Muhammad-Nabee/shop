@extends('frontend.master')

@section('title', 'Checkout')

@section('style')
@stop

@section('content')
    <!-- Breadcrumb Start -->
    <div class="breadcrumb-area mt-30">
        <div class="container">
            <div class="breadcrumb">
                <ul class="d-flex align-items-center">
                    <li><a href="{{ asset('/') }}">Home</a></li>
                    <li class="active"><a href="javascript:;">Checkout</a></li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Breadcrumb End -->

    <!-- checkout-area start -->
    <div class="checkout-area pb-45 pt-15">
        <div class="container">

            <div class="row my-4">
                <div class="col-12 text-center">
                    <h4 class="mb-3">Check your order</h4>
                    <p class="col-lg-7 col-md-9 col-sm-12 mx-auto">Check your order details and enter promo code if you have one.</p>
                    @if(session()->has('delivery_method_message'))
                        <p class="col-lg-7 col-md-9 col-sm-12 mx-auto alert alert-danger">
                            {{ session()->get('delivery_method_message') }}
                        </p>
                    @endif

                </div>
            </div>

            <?php
                $dAddress = [
                    'd_address_1' => array_key_exists('d_address_1', $cart['addresses']) ? $cart['addresses']['d_address_1'] : "",
                    'd_address_2' => array_key_exists('d_address_2', $cart['addresses']) ? $cart['addresses']['d_address_2'] : "",
                    'd_address_3' => array_key_exists('d_address_3', $cart['addresses']) ? $cart['addresses']['d_address_3'] : "",
                    'd_town'      => array_key_exists('d_town', $cart['addresses']) ? $cart['addresses']['d_town'] : "",
                    'd_county'    => array_key_exists('d_county', $cart['addresses']) ? $cart['addresses']['d_county'] : "",
                    'd_postcode'  => array_key_exists('d_postcode', $cart['addresses']) ? $cart['addresses']['d_postcode'] : "",

                    'd_first_name'  => array_key_exists('d_postcode', $cart['addresses']) ? $cart['addresses']['d_first_name'] : "",

                    'd_last_name'  => array_key_exists('d_postcode', $cart['addresses']) ? $cart['addresses']['d_last_name'] : ""

                ];

            $bAddress = [
                'b_address_1' => array_key_exists('b_address_1', $cart['addresses']) ? $cart['addresses']['b_address_1'] : "",
                'b_address_2' => array_key_exists('b_address_2', $cart['addresses']) ? $cart['addresses']['b_address_2'] : "",
                'b_address_3' => array_key_exists('b_address_3', $cart['addresses']) ? $cart['addresses']['b_address_3'] : "",
                'b_town'      => array_key_exists('b_town', $cart['addresses']) ? $cart['addresses']['b_town'] : "",
                'b_county'    => array_key_exists('b_county', $cart['addresses']) ? $cart['addresses']['b_county'] : "",
                'b_postcode'  => array_key_exists('b_postcode', $cart['addresses']) ? $cart['addresses']['b_postcode']: "",

                'b_first_name'  => array_key_exists('d_postcode', $cart['addresses']) ? $cart['addresses']['b_first_name'] : "",

                'b_last_name'  => array_key_exists('d_postcode', $cart['addresses']) ? $cart['addresses']['b_last_name'] : ""

            ];
            ?>

            <div class="row my-4">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="d-flex flex-wrap">
                        <div class="col-lg-4 col-md-4 col-sm-12 shipping">
                            <div class="card card-address">
                                <div class="card-header bg-200">
                                    <strong>
                                        Address
                                    </strong>
                                    <!-- <i class="fa fa-edit text-primary mouse-hand edit-patient-details" data-type="gp"></i> -->
                                </div>
                                <div class="card-body my-cart-box text-center">
                                    <p class="mt-2">You are logged in as</p>
                                    <p class="mt-2">
                                        <strong>
                                            {{ auth()->user()->first_name.' '.auth()->user()->last_name }}
                                        </strong>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 shipping">
                            <div class="card card-address">
                                <div class="card-header bg-200">
                                    <strong>
                                        Delivery Address
                                    </strong>
                                    <i class="fa fa-edit text-primary mouse-hand edit-buyer-details" data-type="delivery"></i>
                                </div>
                                <div class="card-body my-cart-box">
                                    <p class="mt-2">
                                        {{ $dAddress['d_first_name'] }}  {{ $dAddress['d_last_name'] }} <br />
                                        {{ $dAddress['d_address_1'] }} <br />
                                        {!! !empty($dAddress['d_address_2']) ? $dAddress['d_address_2']."<br />" : "" !!}
                                        {!! !empty($dAddress['d_address_3']) ? $dAddress['d_address_3']."<br />" : "" !!}
                                        {{ $dAddress['d_town'] }}<br>
                                        {{ $dAddress['d_postcode'] }}
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 shipping">
                            <div class="card card-address">
                                <div class="card-header bg-200">
                                    <strong>
                                        Billing Address
                                    </strong>
                                    <i class="fa fa-edit text-primary mouse-hand edit-buyer-details" data-type="billing"></i>
                                </div>
                                <div class="card-body my-cart-box">
                                    <p class="mt-2">
                                          {{ $bAddress['b_first_name'] }}  {{ $bAddress['b_last_name'] }} <br />
                                        {{ $bAddress['b_address_1'] }} <br />
                                        {!! !empty($bAddress['b_address_2']) ? $bAddress['b_address_2']."<br />" : "" !!}
                                        {!! !empty($bAddress['b_address_3']) ? $bAddress['b_address_3']."<br />" : "" !!}
                                        {{ $bAddress['b_town'] }}<br>
                                        {{ $bAddress['b_postcode'] }}
                                    </p>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-cart">
                            <thead>
                            <tr class="bg-200">
                                <th colspan="2">Products</th>
                                <th width="10%">Unit Price</th>
                                <th width="10%">Qty</th>
                                <th width="10%">Price</th>
                                <th width="10%">Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($cart["items"] as $item)

                                <?php
                                    $product = $item['item'];
                                    $offer = getOffer(!empty($item["hasOffer"]) ? $item["hasOffer"] : 0);
                                ?>

                            <tr>
                                <td width="10%">
                                    @if(!empty($product["media"]))
                                        @foreach($product["media"] as $media)
                                            @if($loop->first)
                                                <img src="{{ asset('storage/products/'.$media['media']) }}" width="100" alt="{{ $product["title"] }}" />
                                            @endif
                                        @endforeach
                                    @endif
                                </td>
                                <td class="product-name">
                                    <p class="mb-1">{{ $product["title"] }} </p>
                                        @if(!empty($offer))
                                            <p class="mb-0">
                                                <strong class="text-success">Offer: </strong>
                                                <small class="text-success">
                                                    {{ @$offer->name }}
                                                    @if($offer->type === \App\Models\Offer::TYPE_PERCENT) ({{ round($offer->off, 1). '% off' }}) @endif
                                                    @if($offer->type === \App\Models\Offer::TYPE_PRICE) ({{ '£ '.round($offer->off, 1). ' off' }}) @endif
                                                </small>
                                            </p>
                                        @endif
                                </td>
                                <td>£{{ number_format($item["item"]['discount_price'], 2) }}</td>
                                <td>
                                    <div class="form-group">
                                        <select class="form-control form-control-sm qty-change" data-id="{{ $product["id"] }}" id="qty-{{ $loop->index }}" name="qty">
                                            <?php $allowed = empty($product['quantity_allowe_to_buy']) ? 1 : $product['quantity_allowe_to_buy']; ?>
                                            @for($i = 1; $i<=$allowed; $i++)
                                                <option value="{{$i}}" @if($item['qty'] == $i) selected="" @endif>{{$i}}</option>
                                            @endfor
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    £{{ number_format($item['discount_price'], 2) }}
                                </td>
                                <td class="text-center">
                                    <form action="{{ asset('cart/remove-completely') }}" method="post">
                                        @csrf
                                        <input type="hidden" name="item_id" value="{{ $product["id"] }}" />
                                        <button type="submit" class="btn btn-danger btn-sm btn-block">
                                            Remove
                                        </button>
                                    </form>
                                </td>
                            </tr>

                            @endforeach
                            </tbody>
                        </table>
                        <a href="#sign-in-dialog" id="sign-in" class="access_link" style="display: none" data-toggle="dropdown"><span>Account</span></a>
                    </div>

                    <div class="table-responsive mt-4">
                       {{--  @if(!session()->has('delivery_method_id'))
                            <p class="mt-3 alert alert-warning">
                                <i class="fa fa-angle-double-right text-danger h3" aria-hidden="true"></i>
                                <span class="ml-2 h4">{{ "Please select delivery method to proceed with your order." }}</span>
                            </p>
                        @endif --}}
                        <table class="table table-bordered table-cart">
                            <thead>
                            <tr>
                                <th colspan="5" class="bg-200"> Delivery </th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php
                                $cart_total         = $cart["discountPrice"];
                                $selected_del_price = '0.00';
                                $selected_del_title = '';
                                $show_free_dev      = false;
                            ?>
                            @if(!empty($delivery_methods) && count($delivery_methods) >  0)
                                @foreach($delivery_methods as $key => $method)
                                    @php
                                        $iteration = ++$key;
                                    @endphp
                                    <tr>
                                        <td width="5%">
                                            @if(!empty($method->image))
                                                <img src="{{ url('storage/deliverymethods/'.$method->image) }}" width="100" >
                                            @else
                                                <img src="{{URL::asset("assets/no-product-image.jpg")}}" width="100" >
                                            @endif
                                        </td>
                                        <td colspan="2">
                                            <div class="form-group mb-0 pb-0">
                                                <label>
                                                    <?php $devlivery_session_id = session()->get('delivery_method_id'); ?>
                                                    @if(!empty($devlivery_session_id) && ($method->id == $devlivery_session_id))
                                                        <?php
                                                            $selected_del_price = $method->price;
                                                            $selected_del_title = $method->title;
                                                        ?>
                                                    @endif

                                                    <input {{ !empty($devlivery_session_id) && ($method->id == $devlivery_session_id) ?  'checked=checked' : '' }} type="radio" class="float-left mr-2 mt-1 delivery-method-slt" id="delivery_method-{{ $method->id }}" name="delivery_method" value="<?php echo ($method->id) ? filter_string($method->id) : '' ; ?>" />

                                                    <strong> {{ ($method->title) ? filter_string($method->title) : '' }}</strong>

                                                    <br />

                                                    <small>
                                                        {{ ($method->description) ? filter_string($method->description) : '' }}
                                                    </small>
                                                </label>
                                            </div>
                                        </td>
                                        <td width="20%">&pound;{{($method->price) ?number_format($method->price, 2) :'0.00' }}</td>
                                    </tr>

                                @endforeach

                                @if($is_delivery_free->setting_value == '1')
                                    @if( (($min_value->setting_value == '0' || $min_value->setting_value == null)) || (($min_value->setting_value > 0 && $min_value->setting_value != null) && $cart_total > $min_value->setting_value))
                                        @if(!empty($free_delivery))
                                            <tr>
                                                <td width="5%">
                                                    @if(!empty($free_delivery->image))
                                                        <img src="{{ url('storage/deliverymethods/'.$free_delivery->image) }}" width="100" >
                                                    @else
                                                        <img src="{{URL::asset("assets/no-product-image.jpg")}}" width="100" >
                                                    @endif
                                                </td>
                                                <td colspan="2">
                                                    <div class="form-group mb-0 pb-0">
                                                        <label>
                                                            <?php $devlivery_session_id = session()->get('delivery_method_id'); ?>

                                                            @if(empty($devlivery_session_id))
                                                                <input type="radio" checked class="float-left mr-2 mt-1 delivery-method-slt" id="delivery_method-{{ $free_delivery->id }}" name="delivery_method" value="<?php echo ($free_delivery->id) ? filter_string($free_delivery->id) : '' ; ?>" />
                                                                <?php

                                                                $selected_del_price = $free_delivery->price;
                                                                $selected_del_title = $free_delivery->title;
                                                                session()->put('delivery_method_id', $free_delivery->id);

                                                                ?>
                                                            @elseif(!empty($devlivery_session_id) && $devlivery_session_id == $free_delivery->id)
                                                                <?php

                                                                $selected_del_price = $free_delivery->price;
                                                                $selected_del_title = $free_delivery->title;

                                                                ?>
                                                                <input type="radio" checked class="float-left mr-2 mt-1 delivery-method-slt" id="delivery_method" name="delivery_method" value="<?php echo ($free_delivery->id) ? filter_string($free_delivery->id) : '' ; ?>" />
                                                            @else
                                                                <input type="radio" class="float-left mr-2 mt-1 delivery-method-slt" id="delivery_method" name="delivery_method" value="<?php echo ($free_delivery->id) ? filter_string($free_delivery->id) : '' ; ?>" />
                                                            @endif


                                                            <strong> {{ ($free_delivery->title) ? filter_string($free_delivery->title) : '' }}</strong>

                                                            <br />

                                                            <small>
                                                                {{ ($free_delivery->description) ? filter_string($free_delivery->description) : '' }}
                                                            </small>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td width="20%">&pound;{{($free_delivery->price) ? number_format($free_delivery->price, 2) : '0.00' }}</td>
                                            </tr>
                                        @endif
                                    @endif
                                @endif

                            @endif

                            <tr>
                                <td colspan="3" align="right"><strong>Sub-total:</strong></td>
                                <td colspan="2">
                                    &pound;{{ number_format($cart['discountPrice'], 2) }}
                                </td>
                            </tr>

                            <?php
                                $updateCart = new \App\Classes\Cart(session()->get('cart'));
                                $updateCart->setDeliveryFee((float)$selected_del_price);
                                session()->put('cart', $updateCart);
                                $grand_total = number_format($cart['discountPrice'] + 0 + $selected_del_price, 2);
                            ?>
                            @if(!empty($selected_del_title))
                                <tr>
                                    <td colspan="3" align="right"><strong>Delivery:</strong><br>{{ ($selected_del_title) ? filter_string($selected_del_title) : '' }}</td>
                                    <td colspan="2">
                                        &pound;{{ number_format($selected_del_price, 2) }}
                                    </td>
                                </tr>
                            @endif

                            <?php
                                $coupon_discount_price = 0;
                                $percentage = '';
                                $td_coupon_policy_failed = session()->get('td_coupon_policy_failed');
                                $is_coupon_failed        = session()->get('is_coupon_failed');
                                $td_coupon_code          = session()->get('td_coupon_code');
                            ?>
                            <tr class="{{ ($td_coupon_policy_failed || $is_coupon_failed) || (!$is_coupon_failed && $td_coupon_code) ? '' : 'd-none' }}">
                                <td colspan="3" class="text-right"><strong>Coupon Code:</strong></td>
                                <td colspan="2">

                                    @if($td_coupon_policy_failed)
                                        <?php session()->put('td_coupon_policy_failed', '') ?>
                                        <strong class="text-danger"> Coupon Not Applied </strong>
                                        <br />
                                    @endif
                                    @if($is_coupon_failed)
                                        <?php session()->put('is_coupon_failed', '') ?>
                                        <strong class="text-danger"> Invalid Code </strong>
                                        <br />
                                    @endif

                                    @if(!$is_coupon_failed && $td_coupon_code)

                                        <strong class="text-success"> Coupon Applied </strong>
                                        <br />
                                        &pound;{{ number_format($cart['discountPrice'], 2) }}
                                        <br />
                                        <?php
                                        if (!empty($coupon)) {

                                            if($coupon->coupon_type == 'FIXED_PRICE'){
                                                $coupon_discount_price = number_format($coupon->discount_value, 2);
                                            } else if($coupon->coupon_type == 'PERCENTAGE'){
                                                $coupon_discount_price = ($coupon->discount_value / 100) * $cart['discountPrice'];
                                                $percentage = '('.$coupon->discount_value . "%".')';
                                            }
                                        }
                                        ?>
                                        <?php echo '-&pound;'.number_format($coupon_discount_price, 2) ?> {{$percentage}}
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <th colspan="3" class="text-right"><strong>Grand Total:</strong></th>
                                <th colspan="2">
                                    @php
                                        $updateCart = new \App\Classes\Cart(session()->get('cart'));
                                        $updateCart->setCouponPrice((float)$coupon_discount_price);
                                        session()->put('cart', $updateCart);
                                        $over_all_total = $grand_total - $coupon_discount_price;
                                    @endphp

                                    £{{ number_format($over_all_total, 2) }}
                                </th>
                            </tr>
                            @if(!empty($patient_addresses) && !empty($patient_addresses->d_first_name) && !empty($patient_addresses->b_first_name))
                                <tr>
                                    <td colspan="4" class="text-right">
{{--                                         <form action="{{ asset('checkout/bypass-payment-process') }}" method="post" id="pay-now-form">
                                            @csrf
 --}}
                                            <a href="{{url('checkout/bypass-payment-process')}}" type="button"
                                               class="btn btn-warning btn-lg pay-now-check" id="proceed-btn">
                                                <i class="ti-credit-card"></i>
                                                <span id="pay-now-text"> Pay Now &pound;{{number_format($over_all_total, 2)}}</span>
                                            </a>
{{--                                         </form>
 --}}
                                    </td>
                                </tr>
                            @else
                                <tr>
                                    <td colspan="4" class="text-right">
                                        <h4 class="text-danger">
                                            @if(empty($patient_addresses))
                                                Please add your addresses
                                            @endif
                                        </h4>
                                    </td>
                                </tr>
                            @endif

                            </tbody>

                        </table>

                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-10 col-md-5">
                            <form method="post" action="{{ asset('checkout/coupon') }}" id="coupon_form">
                                @csrf
                                <div class="input-group">
                                    <input type="text" id="coupon_code" name="coupon_code" class="form-control" placeholder="Enter coupon code" />
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-success"> Apply </button>
                                    </div>
                                </div>
                                @error('coupon_code')
                                <ul class="alert alert-danger mt-1">
                                    <li>{{ $message }}</li>
                                </ul>
                                @enderror
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- checkout-area end -->

    <!-- Modal -->
    <div class="modal fade" id="checkout-address-modal" tabindex="-1" role="dialog" aria-labelledby="checkout-address-modalTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Update Address</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <ul id="form-validation" class="alert alert-danger d-none"></ul>

                    <form action="{{ asset("checkout/addresses") }}" id="edit-address-form" method="post">

                        @csrf

                        <input type="hidden" name="ajax" value="1" />

                        <div id="billing-address" class="d-none">

                            <div class="form-group">
                                <label>Billing First Name *</label>
                                <input type="text" class="form-control" id="b_first_name" name="b_first_name" required="required" value="{{ $bAddress["b_first_name"] }}">
                            </div>

                            <div class="form-group">
                                <label>Billing Last Name *</label>
                                <input type="text" class="form-control" id="b_last_name" name="b_last_name" required="required" value="{{ $bAddress["b_last_name"] }}">
                            </div>

                            <div class="form-group">
                                <label>Address 1*</label>
                                <input type="text" class="form-control" id="b_address_1" name="b_address_1" required="required" value="{{ $bAddress["b_address_1"] }}">
                            </div>

                            <div class="form-group">
                                <label>Address 2</label>
                                <input type="text" class="form-control" id="b_address_2" name="b_address_2" value="{{ $bAddress["b_address_2"] }}">
                            </div>

                            <div class="form-group">
                                <label>Address 3</label>
                                <input type="text" class="form-control" id="b_address_3" name="b_address_3" value="{{ $bAddress["b_address_3"] }}">
                            </div>

                            <div class="form-group">
                                <label>City/Town*</label>
                                <input type="text" class="form-control" id="b_town" name="b_town" required="required" value="{{ $bAddress["b_town"] }}">
                            </div>

                            <div class="form-group">
                                <label>State/County</label>
                                <input type="text" class="form-control" id="b_county" name="b_county" value="{{ $bAddress["b_county"] }}">
                            </div>

                            <div class="form-group">
                                <label>Post Code*</label>
                                <input type="text" class="form-control" id="b_postcode" name="b_postcode" required="required" value="{{ $bAddress["b_postcode"] }}">
                            </div>
                        </div>

                        <div id="delivery-address" class="d-none">

                            <div class="form-group">
                                <label>Delivery First Name *</label>
                                <input type="text" class="form-control" id="d_first_name" name="d_first_name" required="required" value="{{ $dAddress["d_first_name"] }}">
                            </div>

                            <div class="form-group">
                                <label> Delivery Last Name *</label>
                                <input type="text" class="form-control" id="d_last_name" name="d_last_name" required="required" value="{{ $dAddress["d_last_name"] }}">
                            </div>

                            <div class="form-group">
                                <label>Address 1*</label>
                                <input type="text" class="form-control" id="d_address_1" name="d_address_1" required="required" value="{{ $dAddress["d_address_1"] }}">
                            </div>

                            <div class="form-group">
                                <label>Address 2</label>
                                <input type="text" class="form-control" id="d_address_2" name="d_address_2" value="{{ $dAddress["d_address_2"] }}">
                            </div>

                            <div class="form-group">
                                <label>Address 3</label>
                                <input type="text" class="form-control" id="d_address_3" name="d_address_3" value="{{ $dAddress["d_address_3"] }}">
                            </div>

                            <div class="form-group">
                                <label>City/Town*</label>
                                <input type="text" class="form-control" id="d_town" name="d_town" required="required" value="{{ $dAddress["d_town"] }}">
                            </div>

                            <div class="form-group">
                                <label>State/County</label>
                                <input type="text" class="form-control" id="d_county" name="d_county" value="{{ $dAddress["d_county"] }}">
                            </div>

                            <div class="form-group">
                                <label>Post Code*</label>
                                <input type="text" class="form-control" id="d_postcode" name="d_postcode" required="required" value="{{ $dAddress["d_postcode"] }}">
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-success pull-left" id="edit-btn"> Update </button>
                            <button type="button" class="btn btn-danger pull-left close-mod ml-1" data-dismiss="modal">Close</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="modal" id="select-delivery-method" style="z-index: 9999">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">
                        Delivery Method!
                    </h4>
                    <button type="button" class="close close-mod" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">

                    <p>
                        Please select at least one delivery method.
                    </p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">

                    <button type="button" class="btn btn-secondary close-mod" data-dismiss="modal">Close</button>

                </div>

            </div>
        </div>
    </div>

    <div class="modal" id="response-modal" style="z-index: 9999">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">
                        Confirm!
                    </h4>
                    <button type="button" class="close close-mod-response" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">

                    <p>
                        Some of the products are <b>in-active</b> or <b>out of stock</b>, please remove from cart to proceed.
                    </p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary close-mod-response" data-dismiss="modal">Ok</button>
                </div>

            </div>
        </div>
    </div>

@stop

@section('scripts')
    <script src="{{ asset('assets/js/system/checkout.js') }}"></script>
    <script>

        $(document).on("click", ".pay-now-check", function(){
            if (!$("input[name='delivery_method']:checked").val()) {
                $('#select-delivery-method').show();
                return false;
            }

            $("#pay-now-form").submit()

            /*
            $.ajax({
                type: "GET",
                url: '/checkout/re-check-medicine',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },

                beforeSend: function(result) {
                },
                success: function(response) {
                    if (response.show_modal && response.show_modal === true) {
                        $('#response-modal').show();
                    } else {
                        location.href = "/checkout/bypass-payment-process";
                    }
                },
                error: function(xhr, status, error) {
                    console.log(xhr)
                }

            }); // $.ajax
             */

        });

        $('.close-mod').click(function (){
            $('#delete-medicine-item').hide();
            $('#select-delivery-method').hide();
        });
        $('.close-mod-response').click(function (){
            $('#response-modal').hide();
            $('#delete-medicine-item').hide();
            $('#select-delivery-method').hide();
            location.reload()
        });

        $('.delivery-method-slt').change(function() {
            $('.pay-now-check').addClass("d-none");
            let delivery_method_id = $(this).val();
            let url = "/checkout/update-delivery-method/"+delivery_method_id;
            location.href = url;
        });
    </script>
@stop
