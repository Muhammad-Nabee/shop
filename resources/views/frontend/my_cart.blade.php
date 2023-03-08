@extends('frontend.master')
@section('title', 'My Cart')
@section('style')
    <link href="{{ asset('assets/css/td_styles.css')}}" rel="stylesheet">
    <style>

        .edit-patient-details {
            cursor: pointer;
        }
        #sign-in-dialog .form-group input.form-control {
            padding-left: 11px !important;
        }
        .modal-backdrop {
            z-index: -1 !important;
        }
    </style>
@endsection
@section('content')
    <div id="mm-0" class="mm-page mm-slideout">
        <div id="page">

            <!-- PAGE CONTENTS -->
            <main class="bg_gray">
                <div class="container margin_30">
                    <div class="page_header">
                        <div class="breadcrumbs">
                            <ul>
                                <li><a href="{{url('/')}}">Home</a></li>
                                <li><a href="{{url('/')}}">Cart</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- /page_header -->
                    @include("frontend.components.messages")
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="alert alert-info mt-3 pb-2">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="#" class="btn btn-success d-block disabled"><strong>1.</strong> Questionnaire </a>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="{{url('treatments/choose-treatments/')}}" class="btn btn-success d-block disabled"><strong>2.</strong> Choose Treatment</a>
                                    </div>

                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="{{url('treatments/my-cart')}}" class="btn btn-success d-block disabled"><strong>3.</strong> Your Order</a>
                                    </div>

                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="#" class="btn btn-secondary d-block disabled"><strong>4.</strong> Finish</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">


                            <div class="content-box">

                                <div class="row">
                                    <div class="col-12">


                                        <div class="row my-4">
                                            <div class="col-12 text-center">
                                                <h4 class="mb-3">Check your order</h4>
                                                <p class="col-lg-7 col-md-9 col-sm-12 mx-auto">Check your order details and enter promo code if you have one.</p>
                                            </div>
                                        </div>
                                        <div class="row my-4">
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <div class="d-flex flex-wrap">
                                                    <div class="col-lg-4 col-md-4 col-sm-12 shipping">
                                                        <div class="card">
                                                            <div class="card-header bg-200">
                                                                <strong>
                                                                    Address
                                                                </strong>
                                                                <i class="ti-pencil-alt edit-patient-details" data-type="gp"></i>
                                                            </div>
                                                            <?php use App\Helpers\CommonHelper; ?>
                                                            <div class="card-body my-cart-box">
                                                                @if(!empty($patient))
                                                                    <p class="mt-2">
                                                                        <strong>
                                                                            {{ucfirst(filter_string($patient->first_name))}}
                                                                            {{ucfirst(filter_string($patient->last_name))}}
                                                                        </strong>
                                                                        <br>
                                                                        {!! ($patient->address_1) ? filter_string($patient->address_1).'<br>' : '' !!}
                                                                        {!! ($patient->address_2) ? filter_string($patient->address_2).'<br>' : '' !!}
                                                                        {!! ($patient->address_3) ? filter_string($patient->address_3).'<br>' : '' !!}
                                                                        {!! ($patient->town_city) ? filter_string($patient->town_city)."<br>" : '' !!}
                                                                        {{ ($patient->postcode) ? filter_string($patient->postcode) : ''}}
                                                                    </p>
                                                                @else
                                                                    <p class="text-center">No data Found</p>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-4 col-sm-12 shipping">
                                                        <div class="card">
                                                            <div class="card-header bg-200">
                                                                <strong>
                                                                    Delivery Address
                                                                </strong>
                                                                <i class="ti-pencil-alt edit-patient-details" data-type="delivery"></i>
                                                            </div>
                                                            <div class="card-body my-cart-box">
                                                                @if(!empty($patient_addresses))
                                                                    <p class="mt-2">
                                                                        {!! ($patient_addresses->d_address_1) ? filter_string($patient_addresses->d_address_1)."<br>" : '' !!}
                                                                        {!! ($patient_addresses->d_address_2) ? filter_string($patient_addresses->d_address_2)."<br>" : '' !!}
                                                                        {!! ($patient_addresses->d_address_3) ? filter_string($patient_addresses->d_address_3)."<br>" : '' !!}
                                                                        {!! ($patient_addresses->d_town) ? filter_string($patient_addresses->d_town)."<br>" : '' !!}
                                                                        {{ ($patient_addresses->d_postcode) ? filter_string($patient_addresses->d_postcode) : ''}}
                                                                    </p>
                                                                @else
                                                                    <p class="text-center">No data Found</p>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-4 col-sm-12 shipping">
                                                        <div class="card">
                                                            <div class="card-header bg-200">
                                                                <strong>
                                                                    Billing Address
                                                                </strong>
                                                                <i class="ti-pencil-alt edit-patient-details" data-type="billing"></i>
                                                            </div>
                                                            <div class="card-body my-cart-box">
                                                                @if(!empty($patient_addresses))
                                                                    <p class="mt-2">
                                                                        {!! ($patient_addresses->b_address_1) ? filter_string($patient_addresses->b_address_1)."<br>" : '' !!}
                                                                        {!! ($patient_addresses->b_address_2) ? filter_string($patient_addresses->b_address_2)."<br>" : '' !!}
                                                                        {!! ($patient_addresses->b_address_3) ? filter_string($patient_addresses->b_address_3)."<br>" : '' !!}
                                                                        {!! ($patient_addresses->b_town) ? filter_string($patient_addresses->b_town)."<br>" : '' !!}
                                                                        {{ ($patient_addresses->b_postcode) ? filter_string($patient_addresses->b_postcode) : ''}}
                                                                    </p>
                                                                @else
                                                                    <p class="text-center">No data Found</p>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                        <!-- Popular Treatments -->
                                        @inject('GetCartTotalPrices', 'App\Repositories\MedicineCheckClassForBlade')
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered table-cart">
                                                        <thead>
                                                        <tr class="bg-200">
                                                            <th colspan="2">Products</th>
                                                            <th width="10%">Qty</th>
                                                            <th width="10%">Price</th>
                                                            <th width="10%">Action</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <?php
                                                        $show_btn = false;

                                                        if(!empty(Session::get('td_cart'))){

                                                        $cart_items = Session::get('td_cart');
                                                        $total = 0;
                                                        $allowed_qty_with_stock = 0;
                                                        if($cart_items){
                                                        foreach($cart_items as $key => $product){
                                                        $cat_medicine = @$product['cat_medicine'];
                                                        if(!empty($cat_medicine)){
                                                        $exploded_cat_medicine = explode('-', $cat_medicine);
                                                        $item = array();
                                                        $medicine_id = $exploded_cat_medicine[0];
                                                        $strength_id = $exploded_cat_medicine[1];
                                                        $quantity_id = $exploded_cat_medicine[2];
                                                        $medicine_details = CommonHelper::getMedicineDetails($exploded_cat_medicine[0]);
                                                        $strength_details = CommonHelper::getMedicineStrengthDetails($exploded_cat_medicine[1]);
                                                        $qty_details = CommonHelper::getMedicineQuantityDetails($exploded_cat_medicine[2]);
                                                        $medicine_price = CommonHelper::getMedicinePricingDetails($medicine_id, $strength_id, $quantity_id);
                                                        $medicine_medias = CommonHelper::getMedicineMediasDetails($medicine_id);

                                                        $item_price = ($medicine_price->discount_price && $medicine_price->discount_price != '0.00') ? number_format($medicine_price->discount_price, 2) : number_format($medicine_price->price, 2) ;

                                                        $item_price = $product['qty'] * $item_price;

                                                        $total = $total + $item_price;
                                                        $medicine_proceed_status = $GetCartTotalPrices->checkMedicineStatus($cat_medicine);
                                                        $medicine_proceed_out_of_stock_status = $GetCartTotalPrices->checkMedicineStock($cat_medicine, $product['qty']);

                                                        $medicine_stock_level = CommonEloHelper::get_table_row_where_arr('kod_med_stock', array('medicine_id' => $medicine_id, 'strength_id' => $strength_id, 'quantity_id' => $quantity_id));

                                                        if ($medicine_stock_level['stock_level'] <= $medicine_price->qty_allowed) {
                                                            $allowed_qty_with_stock = $medicine_stock_level['stock_level'];
                                                        } elseif ($medicine_stock_level['stock_level'] > $medicine_price->qty_allowed) {
                                                            $allowed_qty_with_stock = $medicine_price->qty_allowed;
                                                        }

                                                        if ($medicine_proceed_status == true && $medicine_proceed_out_of_stock_status == true) {

                                                            $cart_items[$key]['process'] = '1';
                                                            Session::put("td_cart", $cart_items);

                                                        }
                                                        ?>
                                                        <tr>
                                                            <td width="10%">
                                                                @if(count($medicine_medias) > 0)
                                                                    @if(!empty($medicine_medias[0]->media))
                                                                        <img src="{{ url('storage/medicine/'.$medicine_medias[0]->media) }}" width="100" >
                                                                    @else
                                                                        <img src="{{URL::asset("assets/no-product-image.jpg")}}" width="100" >
                                                                    @endif
                                                                    {{--                                                                    <img src="{{ url('storage/medicine/'.$medicine_medias[0]->media) }}" width="100" >--}}
                                                                @endif
                                                            </td>
                                                            <td class="product-name">

                                                                {{($medicine_details->title) ? filter_string($medicine_details->title) : ''  }}
                                                                {{(@$strength_details->strength) ? filter_string(@$strength_details->strength) : ''  }}
                                                                {{($qty_details->qty) ? filter_string($qty_details->qty) : ''  }}
                                                                {{($qty_details->form) ? filter_string($qty_details->form) : ''  }}

                                                                @if($medicine_proceed_status == false)
                                                                    @php
                                                                        $total = $total - $item_price;
                                                                        $cart_items[$key]['process'] = '0';
                                                                        Session::put("td_cart", $cart_items);
                                                                    @endphp
                                                                    <p class="text-danger"><strong>This item is no longer available.</strong></p>
                                                                @endif
                                                                @if($medicine_proceed_status == true)
                                                                    @if($medicine_proceed_out_of_stock_status == false)
                                                                        @php
                                                                            $total = $total - $item_price;
                                                                            $cart_items[$key]['process'] = '0';
                                                                            Session::put("td_cart", $cart_items);
                                                                        @endphp
                                                                        <p class="text-danger"><strong>Out Of Stock</strong></p>
                                                                    @else
                                                                        @php
                                                                            $show_btn = true;
                                                                        @endphp
                                                                    @endif

                                                                @endif

                                                            </td>
                                                            <?php $combine_data = @$medicine_details->title.' '.@$strength_details->strength.' '.@$qty_details->qty.' '.@$qty_details->form ?>
                                                            <td>
                                                                <div class="form-group">
                                                                    <select class="form-control qty-change" id="qty" name="qty">
                                                                        @for($i = 1; $i <= $allowed_qty_with_stock; ++$i)
                                                                            <option <?php echo ($product['qty'] == $i) ? 'selected="selected"' : '' ; ?> value="<?php echo $medicine_details['category_id']; ?>#<?php echo $i; ?>">{{$i}}</option>
                                                                        @endfor
                                                                    </select>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                &pound;{{($item_price) ? number_format(trim($item_price), 2) : '0.00' }}
                                                            </td>
                                                            <td class="text-center">
                                                                <button type="button" class="btn btn-danger btn-sm btn-block remove-cart-item" data-hash-id="{{$combine_data}}" data-item-cat-id="{{$key}}" title="Remove this item">
                                                                    Remove
                                                                </button>
                                                                <a href="{{url('treatments/choose-treatments/'.$medicine_details->category->seo_url_slug)}}"> (change) </a>
                                                            </td>
                                                        </tr>
                                                        <?php
                                                        }
                                                        }
                                                        }
                                                        }
                                                        ?>
                                                        </tbody>
                                                    </table>
                                                    <a href="#sign-in-dialog" id="sign-in" class="access_link" style="display: none"><span>Account</span></a>
                                                </div>
                                                <div class="table-responsive">
                                                    <table class="table table-bordered table-cart">
                                                        <?php $global_settings = CommonHelper::checkKeyFromGlobalSettings('is_delivery_free'); ?>
                                                        <thead>
                                                        <tr>
                                                            <th colspan="5" class="bg-200"> Delivery </th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>

                                                        <?php

                                                        $cart_total = $GetCartTotalPrices->getTotalPrice();

                                                        ?>
                                                        <?php
                                                        $selected_del_price = '0.00';
                                                        $selected_del_title = '';
                                                        $show_free_dev = false;
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
                                                                                <?php $devlivery_session_id = Session::get('delivery_method_id'); ?>
                                                                                @if(!empty($devlivery_session_id) && ($method->id == $devlivery_session_id))
                                                                                    <?php

                                                                                    $selected_del_price = $method->price;
                                                                                    $selected_del_title = $method->title;

                                                                                    ?>
                                                                                @endif
                                                                                <input {{!empty($devlivery_session_id) && ($method->id == $devlivery_session_id) ?  'checked=checked' : '' }} type="radio" class="float-left mr-2 mt-1 delivery-method-slt" id="delivery_method" name="delivery_method" value="<?php echo ($method->id) ? filter_string($method->id) : '' ; ?>" />

                                                                                <strong> {{ ($method->title) ? filter_string($method->title) : '' }}</strong>

                                                                                <br />

                                                                                <small>
                                                                                    {{ ($method->description) ? filter_string($method->description) : '' }}
                                                                                </small>
                                                                            </label>
                                                                        </div>
                                                                    </td>
                                                                    <td width="20%">&pound;{{ ($method->price) ? number_format($method->price, 2) : '0.00' }}</td>
                                                                </tr>

                                                            @endforeach
                                                            @if($is_delivery_free->setting_value == '1')
                                                                @if( (($min_value->setting_value == 0 || $min_value->setting_value == null)) || (($min_value->setting_value > 0 && $min_value->setting_value != null) && $cart_total['grand_total'] > $min_value->setting_value))
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
                                                                                        <?php $devlivery_session_id = Session::get('delivery_method_id'); ?>

                                                                                        @if(empty($devlivery_session_id))
                                                                                            <input type="radio" checked class="float-left mr-2 mt-1 delivery-method-slt" id="delivery_method" name="delivery_method" value="<?php echo ($free_delivery->id) ? filter_string($free_delivery->id) : '' ; ?>" />
                                                                                            <?php

                                                                                            $selected_del_price = $free_delivery->price;
                                                                                            $selected_del_title = $free_delivery->title;
                                                                                            Session::put('delivery_method_id', $free_delivery->id);

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
                                                                            <td width="20%">&pound;{{ ($free_delivery->price) ? number_format($free_delivery->price, 2) : '0.00' }}</td>
                                                                        </tr>
                                                                    @endif
                                                                @endif
                                                            @endif
                                                        @endif

                                                        <tr>
                                                            <td colspan="3" align="right"><strong>Sub-total:</strong></td>
                                                            <td colspan="2">
                                                                &pound;{{ number_format($total, 2) }}
                                                            </td>
                                                        </tr>

                                                        <?php  $grand_total = number_format($total + 0 + $selected_del_price, 2) ?>
                                                        @if(!empty($selected_del_title))
                                                            <tr>
                                                                <td colspan="3" align="right"><strong>Delivery:</strong><br>{{ ($selected_del_title) ? filter_string($selected_del_title) : '' }}</td>
                                                                <td colspan="2">
                                                                    &pound;{{number_format($selected_del_price, 2)}}
                                                                </td>
                                                            </tr>
                                                        @endif
                                                        <?php
                                                        $coupon_discount_price = 0;
                                                        $percentage = '';
                                                        $td_coupon_policy_failed = Session::get('td_coupon_policy_failed');
                                                        $is_coupon_failed = Session::get('is_coupon_failed');
                                                        $td_coupon_code = Session::get('td_coupon_code');
                                                        ?>
                                                        <tr class="{{ ($td_coupon_policy_failed || $is_coupon_failed || (!$is_coupon_failed && $td_coupon_code)) ? '' : 'd-none' }}">
                                                            <td colspan="3" class="text-right"><strong>Coupon Code:</strong></td>
                                                            <td colspan="2">

                                                                @if($td_coupon_policy_failed)
                                                                    <?php Session::put('td_coupon_policy_failed', '') ?>
                                                                    <strong class="text-danger"> Coupon Not Applied </strong>
                                                                    <br />
                                                                @endif
                                                                @if($is_coupon_failed)
                                                                    <?php Session::put('is_coupon_failed', '') ?>
                                                                    <strong class="text-danger"> Invalid Code </strong>
                                                                    <br />
                                                                @endif

                                                                @if(!$is_coupon_failed && $td_coupon_code)

                                                                    <strong class="text-success"> Coupon Applied </strong>
                                                                    <br />
                                                                    &pound;{{ $grand_total }}
                                                                    <br />
                                                                    <?php
                                                                    if (!empty($coupon)) {

                                                                        if($coupon->coupon_type == 'FIXED_PRICE'){

                                                                            $coupon_discount_price = number_format($coupon->discount_value, 2);
                                                                        } else if($coupon->coupon_type == 'PERCENTAGE'){
                                                                            $coupon_discount_price = ($coupon->discount_value / 100) * $grand_total;
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
                                                                    $over_all_total = $grand_total - $coupon_discount_price;
                                                                @endphp

                                                                &pound;<?php echo number_format($over_all_total, 2);  ?>
                                                            </th>
                                                        </tr>
                                                        @if(!empty($patient_addresses))
                                                            <tr>
                                                                <td colspan="4" class="text-right">
                                                                    @if($show_btn)
                                                                        <a href="javascript:;" class="btn btn-warning btn-lg pay-now-check" id="proceed-btn"><i class="ti-credit-card"></i><span id="pay-now-text"> Pay Now &pound;{{number_format($over_all_total, 2)}}</span> </a>
                                                                    @endif
                                                                </td>
                                                            </tr>
                                                        @else
                                                            <tr>
                                                                <td colspan="4" class="text-right">
                                                                    <h4 class="text-danger">Please add your addresses</h4>
                                                                </td>
                                                            </tr>
                                                        @endif
                                                        </tbody>

                                                    </table>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-10 col-md-5">
                                                        <form method="post" action="{{url('treatments/my-cart')}}" id="coupon_form">
                                                            @csrf
                                                            <div class="input-group">
                                                                <input type="text" id="coupon_code" name="coupon_code" class="form-control" placeholder="Enter coupon code" aria-label="Enter coupon code" aria-describedby="" required value="{{ !empty(Session::get('td_coupon_code')) ? Session::get('td_coupon_code') : '' }}" />

                                                                <div class="input-group-append">
                                                                    <button type="submit" class="btn btn-success"> Apply </button>
                                                                </div>

                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- payment detail-->

                                        <div class="row mt-2">
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <a href="{{url('/')}}" class=""> <strong> <i class="fa fa-arrow-right"></i> Continue Shopping </strong> </a>
                                            </div>

                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <a href="javascript:;" class="" data-toggle="modal" data-target="#clear-basket-popup"> <strong> <i class="fa fa-arrow-right"></i> Clear Basket </strong> </a>
                                            </div>
                                            {{--                                            <div class="col-lg-6 col-md-6 col-sm-12">--}}
                                            {{--                                                <button type="button" class="btn btn-danger float-right" data-toggle="modal" data-target="#clear-basket-popup" title="Remove this item">--}}
                                            {{--                                                    Clear Basket--}}
                                            {{--                                                </button>--}}
                                            {{--                                            </div>--}}
                                        </div>



                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </main>
        </div>
    </div>
    <div class="modal" id="clear-basket-popup" style="z-index: 9999">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">
                        Confirmation!
                    </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">

                    <p>
                        Are you sure you want to delete clear your basket? Your added item(s) will be removed from cart.
                    </p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">

                    <a href="{{url('treatments/clear-basket')}}" class="btn btn-danger">Delete</a>

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>

            </div>
        </div>
    </div>
    <div class="modal" id="delete-medicine-item">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">
                        Are you sure?
                    </h4>
                    <button type="button" class="close close-mod" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-left">

                    <p>

                        Are you sure you want to delete

                        <strong id="med_data">


                        </strong>

                        from the cart?

                    </p>

                </div>
                <form method="post" action="{{url('treatments/remove-item-from-cart')}}">
                    @csrf
                    <input type="hidden" name="category_id" id="cat_id">
                    <!-- Modal footer -->
                    <div class="modal-footer">

                        <button type="submit" class="btn btn-danger ">Delete</button>

                        <button type="button" class="btn btn-secondary close-mod" data-dismiss="modal">Close</button>

                    </div>

                </form>

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
                        Some of the products are in active or out of stock, please remove from cart to proceed.
                    </p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">

                    <button type="button" class="btn btn-secondary close-mod-response" data-dismiss="modal">Ok</button>

                </div>

            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <script>
        $(document).ready(function() {

            $('.pay-now-check').click(function(){

                var delivery_method = $('#delivery_method').val();

                if (!$("input[name='delivery_method']:checked").val()) {
                    $('#select-delivery-method').show();
                    return false;
                } else {

                    // alert(' checked!');
                }

                var hash_id = $(this).attr('data-hash-id');
                var btn_text = document.getElementById('pay-now-text').innerHTML


                $.ajax({

                    type: "GET",

                    url: '{{url('treatments/re-check-medicine')}}',
                    // processData: false,
                    // contentType: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    beforeSend: function(result) {

                        $("#proceed-btn").attr("disabled", true);
                        $('#proceed-btn').html('Loading..');

                        $('#crud_errors_div').addClass('d-none');
                        $('#crud_errors_ul').html('');

                    },
                    success: function(response) {
                        if (response.show_modal === true) {
                            $("#proceed-btn").attr("disabled", false);
                            $('#proceed-btn').html(btn_text);
                            $('#response-modal').show();
                        } else {
                            location.href = "{{ url('/treatments/bypass-payment-process') }}";
                            setTimeout(() => {
                                $("#proceed-btn").attr("disabled", false);
                                $('#proceed-btn').html(btn_text);
                            }, 8000);

                        }

                    }, // success
                    error: function(xhr, status, error) {
                        $("#proceed-btn").attr("disabled", false);
                        $('#proceed-btn').html(btn_text);

                        mcShowErrorsGet(xhr, status, error);

                    }

                }); // $.ajax

            });

            $('.edit-patient-details').click(function(){
                var type = $(this).attr('data-type');
                $.ajax({

                    type: "GET",

                    url: "{{ url('treatments/edit-addresses-form') }}"+"/"+type,

                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    beforeSend: function(result) {

                        // $("#loading").css("display","block");

                        $('#crud_errors_div').addClass('d-none');
                        $('#crud_errors_ul').html('');

                    },
                    success: function(response) {

                        var popup_title = '';

                        if(type == 'billing'){
                            popup_title = 'Edit Billing';
                        } else if (type == 'delivery'){
                            popup_title = 'Edit Delivery';
                        } else {
                            popup_title = 'Edit Address';
                        }

                        // $('#mc-popup-dialog').addClass('modal-md');

                        // Set Heading
                        $('#heading').html(popup_title);

                        // Set Body
                        $('#crud_contents').html(response);

                        $('#footer_buttons').html('');

                        $('#sign-in').click();

                        // Set Footer
                        // $('#general_bootstrap_ajax_popup_footer').prepend('');

                        // $('#general_bootstrap_ajax_popup').modal({
                        //     backdrop: 'static',
                        //     keyboard: false
                        // });

                    }, // success
                    error: function(xhr, status, error) {

                        // mcShowErrorsGet(xhr, status, error);

                    }

                }); // $.ajax

            });
            $('.remove-cart-item').click(function (){
                var combine_data = $(this).attr('data-hash-id');
                var category_id = $(this).attr('data-item-cat-id');
                $('#cat_id').val(category_id)
                $('#med_data').html(combine_data)
                $('#delete-medicine-item').show();
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
            $('.qty-change').change(function(){
                var new_qty_val = $(this).val();
                var base_url = "{{url('treatments/update-qty')}}";
                var new_qty_split = new_qty_val.split('#');
                var url = base_url +'/'+new_qty_split[0]+'/'+new_qty_split[1];
                location.href = url;
            }); // change => qty

            $('.delivery-method-slt').change(function(){

                var delivery_method_id = $(this).val();
                var base_url = "{{url('treatments/update-delivery-method')}}";
                var url = base_url +'/'+delivery_method_id;
                location.href = url;

            }); // change

            $('#inform_my_gp').change(function(){

                $.ajax({
                    type: "POST",
                    url: '{{url('treatments/update-inform-my-gp')}}',
                    data: {'inform_my_gp' : '1'},
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    beforeSend : function(result){
                    },
                    success: function(response){
                    }
                });
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {

            $('#apply_btn').click(function(){

                var validator = $('#coupon_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#coupon_form')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn

        });
    </script>
@endsection
