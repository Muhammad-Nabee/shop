@extends('frontend.master_new')

@section('title', 'CheckOut')
@section('style')
@stop

@section('content')
<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="page-title">
                    <h1>Checkout</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item active">Checkout</li>
                </ol>
            </div>
        </div>

    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->

<!-- START MAIN CONTENT -->
    <div class="main_content">
        <!-- START SECTION SHOP -->

     @if(isset($cart['items']))
     @if(count($cart['items'])<1)
         <ul class="cart_list">
            <li style="text-align: center;color: red;font-size: 24px;">No Item Found  Select Item First
            </br>
             <a href="{{url('')}}"><button class="btn btn-primary">Continue Shopping!</button></a>
            </li>

        </ul>
    @else
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                    @include("frontend.components.messages")
                        @if (!Auth::check())
                          <div class="toggle_info">
                            <span><i class="fas fa-user"></i>Returning customer? <a href="#loginform" data-bs-toggle="collapse" class="collapsed" aria-expanded="false">Click here to login</a></span>
                        </div>
                        @endif
                        <div class="panel-collapse collapse login_form" id="loginform">
                            <div class="panel-body">
                                <form action="{{url('patients/login-process')}}" method="post" id="submit_form_login">
                                    @csrf
                                    <input type="hidden" name="checkout" value="checkout">
                                    <div class="form-group mb-3">
                                        <input type="text" required="" class="form-control" value="{{ old('email')}}" name="email" placeholder="Username Or Email">
                                    </div>
                                    <div class="form-group mb-3">
                                        <input class="form-control" required="" type="password" name="password" placeholder="Password">
                                    </div>
                                    <?php

                                            $recaptcha_attempt  = globalSettings('recaptcha_attempt');

                                            $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');

                                            ?>

                                            @if(attemptCount() > $recaptcha_attempt)

                                                <div class="form-group">
                                                    @include("frontend.components.re_captcha")
                                                </div>

                                            @endif
                                    <div class="login_footer form-group mb-3">

                                        <a href="{{url('forgot-password')}}">Forgot password?</a>
                                    </div>
                                    <div class="form-group mb-3">
                                        <button type="submit" class="btn btn-fill-out btn-block">Log in</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="toggle_info">
                            <span><i class="fas fa-tag"></i>Have a coupon? <a href="#coupon" data-bs-toggle="collapse" class="collapsed" aria-expanded="false">Click here to enter your code</a></span>
                        </div>
                        <div class="panel-collapse collapse coupon_form" id="coupon">
                            <div class="panel-body">
                                <p>If you have a coupon code, please apply it below.</p>
                                <div class="coupon field_form input-group">
                                    <input type="text" value="" class="form-control" placeholder="Enter Coupon Code..">
                                    <div class="input-group-append">
                                        <button class="btn btn-fill-out btn-sm" type="submit">Apply Coupon</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="medium_divider"></div>
                        <div class="divider center_icon"><i class="linearicons-credit-card"></i></div>
                        <div class="medium_divider"></div>
                    </div>
                </div>
                 <form  action="{{url('PlaceOrder/place-orders')}}" method="post">
                 @csrf
                <div class="row">

                    <div class="col-md-6">

                        <div class="heading_s1">
                            <h4>Billing Details</h4>
                        </div>
                          <input type="hidden" class="form-control form-control-lg"  name="user_id" value="{{Auth::user()->id?? ''}}">
                            <div class="form-group mb-3">
                                <input type="text" required class="form-control" value="{{$userdetail['first_name']?? ''}}" name="b_first_name" placeholder="First name *">
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" required class="form-control" value="{{$userdetail['last_name']?? ''}}" name="b_last_name" placeholder="Last name *">
                            </div>

                            <div class="form-group mb-3">
                                <div class="custom_select">
                                    <select class="form-control" name="b_country" required>
                                       <option value="">Select an Country</option>
                                        @foreach($countries as $country)
                                        <option value="{{$country->title}}">{{$country->title}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control" name="b_address_1" value="{{$userdetail['address_1'] ?? ''}}" required="" placeholder="Address *">
                            </div>

                            <div class="form-group mb-3">
                                <input class="form-control" required type="text" name="b_town_city" value="{{$userdetail['town_city'] ?? ''}}" placeholder="City / Town *">
                            </div>

                            <div class="form-group mb-3">
                                <input class="form-control" required type="text" name="b_postcode" value="{{$userdetail['postcode'] ?? ''}}" placeholder="Postcode / ZIP *">
                            </div>
                            <div class="form-group mb-3">
                                <input class="form-control" required type="text" name="b_mobile_no" value="{{$userdetail['mobile_no'] ?? ''}}" placeholder="Phone *">
                            </div>
                            <div class="form-group mb-3">
                                <input class="form-control" required type="text" name="b_email" value="{{$userdetail['email'] ?? ''}}" placeholder="Email address *">
                            </div>
                            <div class="form-group mb-3">
                                <div class="chek-form">
                                    <div class="custome-checkbox">
                                        @if (!Auth::check())
                                        <input class="form-check-input" type="checkbox" name="checkbox" id="createaccount">
                                        <label class="form-check-label label_info" for="createaccount"><span>Create an account?</span></label>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="form-group create-account mb-3">
                                <input class="form-control"  placeholder="Password" name="password" >
                            </div>
                            <div class="ship_detail">
                                <div class="form-group mb-3">
                                <div class="chek-form">
                                    <div class="custome-checkbox">
                                        <input class="form-check-input" type="checkbox" name="checkbox" id="differentaddress">
                                        <label class="form-check-label label_info" for="differentaddress"><span>Ship to a different address?</span></label>
                                    </div>
                                </div>
                            </div>
                                <div class="different_address">
                                <div class="form-group mb-3">
                                    <input type="text" required class="form-control" value="{{$userdetail['first_name'] ?? ''}}" name="d_first_name" placeholder="First name *">
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" required class="form-control" value="{{$userdetail['last_name'] ?? ''}}" name="d_last_name" placeholder="Last name *">
                                </div>

                                <div class="form-group mb-3">
                                    <div class="custom_select">
                                        <select class="form-control" name="d_country" required>
                                         <option value="">Select Country</option>
                                        @foreach($countries as $country)
                                        <option value="{{$country->title}}">{{$country->title}}</option>
                                        @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control" name="d_address_1" value="{{$userdetail['address_1']?? ''}}" required="" placeholder="Address *">
                                </div>

                                <div class="form-group mb-3">
                                    <input class="form-control" required type="text" name="d_town_city" value="{{$userdetail['town_city']?? ''}}" placeholder="City / Town *">
                                </div>

                                <div class="form-group mb-3">
                                    <input class="form-control" required type="text" value="{{$userdetail['postcode']?? ''}}" name="d_postcode" placeholder="Postcode / ZIP *">
                                </div>
                            </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <div class="order_review">
                            <div class="heading_s1">
                                <h4>Your Orders</h4>
                            </div>
                            <div class="table-responsive order_table">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                     @foreach($cart['items'] as $key => $each)
                                          @php
                                          $product = $each['item'];
                                          @endphp
                                        <tr>
                                            <td> {{ $product['title'] }} <span class="product-qty" >{{ $each['qty'].'X' }}</span></td>
                                            <td style="font-weight:350 !important;">AED &nbsp;{{ number_format($each['discount_price'], 2) }}</td>
                                        </tr>

                                     @endforeach

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>SubTotal</th>
                                            <td class="product-subtotal">AED &nbsp;{{ number_format(cartPrice(), 2) }}</td>
                                        </tr>

                                        <tr>

                                            <th>Total</th>
                                            <td class="product-subtotal">AED &nbsp;{{ number_format(cartPrice(), 2) }}</td>
                                        </tr>
                                    </tfoot>

                                </table>
                            </div>

                            <button type="submit" class="btn btn-fill-out btn-block">Place Order</button>
                        </div>

                    </div>

                </div>
                 </form>
            </div>
        </div>
        <!-- END SECTION SHOP -->
    @endif
     @endif
    </div>
<!-- END MAIN CONTENT -->

@stop

@section('scripts')

@stop
