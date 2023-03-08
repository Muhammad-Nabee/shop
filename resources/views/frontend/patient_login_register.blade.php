@extends('frontend.master')
@section('title', 'Signin')
@section('style')
    <link href="{{ asset('assets/css/td_styles.css')}}" rel="stylesheet">
    <style>
        .reg-censored {
            color: red !important;
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
                                <li><a href="{{url('/')}}">Treatments</a></li>
                                <li></li>
                            </ul>
                        </div>
                    </div>
                    @include("frontend.components.messages")
                    <div class="row">
                        <input type="hidden" value="{{Session::get('selected_tab')}}" id="get_selected_tab">
                        <div id="login_form" class="col-xl-6 col-lg-6 col-md-8">

                            <h3 class="client mb-3">Already Client</h3>

                            <div class="card mb-4">

                                <div class="card-body p-4 shadow-lg">

                                    <div id="signin_div" class="">

                                        <form action="{{url('patients/login-process')}}" method="post" id="submit_form_login">
                                            @csrf
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input type="email" name="email" class="form-control"  placeholder="Enter your email address" required>
                                            </div>
                                            <div class="form-group">

                                                <label>Password</label>
                                                <input type="password" name="password" value="" class="form-control" placeholder="Enter password" required>

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


                                            <div class="form-group">

                                                <input type="hidden" name="is_op_process" value="1" readonly="readonly">
                                                <button type="button" name="submit_btn_login" id="submit_btn_login" class="btn btn-primary btn-shape-square"> Login </button>

                                            </div>
                                            <div class="form-group">
                                                <p class="mb-0 toggle-forms" data-id="forgot"> <a href="javascript:;" >Forgot password? </a> </p>
                                            </div>

                                        </form>
                                    </div>

                                </div>
                                <!-- /form_container -->

                            </div>
                            <!-- /box_account -->

                        </div>
                        <div id="forgot_form" class="col-xl-6 col-lg-6 col-md-8 d-none">

                            <h3 class="client mb-3">Forgot Password</h3>

                            <div class="card mb-4">

                                <div class="card-body p-4 shadow-lg">

                                    <div id="signin_div" class="">

                                        <form action="{{url('forgot-password')}}" method="post" id="submit_form_forgot">
                                            @csrf
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input type="email" name="email" id="email_address_1" placeholder="Enter your email address"  value="" class="form-control" placeholder="" required>


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

                                            <div class="form-group">

                                                <input type="hidden" name="is_op_process" value="1" readonly="readonly">
                                                <button type="submit" name="submit_btn_forgot" id="submit_btn_forgot" class="btn btn-primary btn-shape-square"> Submit </button>

                                            </div>
                                            <div class="form-group">
                                                <p class="mb-0 toggle-forms" data-id="login"> <a href="#">Already registered? </a> </p>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                                <!-- /form_container -->

                            </div>
                            <!-- /box_account -->

                        </div>

                        <div class="col-xl-6 col-lg-6 col-md-8">

                            <h3 class="client mb-3"> New Client </h3>

                            <div class="card">

                                <div class="card-body">

                                    <form action="{{url('patients/register-process')}}" class="prevent_enter_key" id="register_form" method="post" accept-charset="utf-8">
                                        @csrf
                                        <div class="form-group">
                                            <label>First Name <span class="text-red reg-censored">*</span></label>
                                            <input type="text" class="form-control" name="first_name" value="{{old('first_name')}}"  id="first_name" value="" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Last Name <span class="text-red reg-censored">*</span></label>
                                            <input type="text" name="last_name" id="last_name" value="{{old('last_name')}}" class="form-control" value="" required>
                                        </div>

                                        <div class="form-group">
                                            <label class="d-block">Gender<span class="text-red reg-censored">*</span></label>
                                            <label><input type="radio" class="custom-radio" name="gender" id="gender1" value="male" required="" @if(old('gender') == 'male') checked @endif> Male</label>
                                            <label><input type="radio" class="custom-radio ml-2" name="gender" id="gender1" value="female" required="" @if(old('gender') == 'female') checked @endif> Female</label>
                                            <label><input type="radio" class="custom-radio ml-2" name="gender" id="gender1" value="other" required="" @if(old('gender') == 'other') checked @endif> Other</label>
                                        </div>

                                        <div class="form-group mb-0">
                                            <label class="d-inline-block">Date of Birth<span class="text-red reg-censored">*</span></label>
                                            <div class="form-row">
                                                <div class="form-group col-md-4">
                                                    <select class="form-control custom-select" name="day" id="day" required>
                                                        <option value="">Select Day</option>
                                                        @for($i=1; $i<= 31; $i++)
                                                            <option value="{{$i}}" @if(old('day') == $i) selected @endif>{{$i}}</option>
                                                        @endfor
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-4">
                                                    <select class="form-control custom-select" id="month" name="month" required>
                                                        <option value="">Select Month</option>
                                                        @for($i=1; $i<= 12; $i++)
                                                            <option value="{{$i}}" @if(old('month') == $i) selected @endif>{{$i}}</option>
                                                        @endfor
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-4">
                                                    <select class="form-control custom-select" name="year" id="year" required="">
                                                        <option value="">Select Year</option>
                                                        <?php $date = date('Y'); ?>
                                                        @for($i=$date; $i >= 1922; $i--)
                                                            <option value="{{$i}}" @if(old('year') == $i) selected @endif>{{$i}}</option>
                                                        @endfor
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Contact No<span class="text-red reg-censored">*</span></label>
                                            <input type="text" class="form-control" name="contact_no" value="{{old('contact_no')}}" id="contact_no"  required="">
                                        </div>
                                        <div class="form-group">
                                            <label>NHS Number (optional)</label>
                                            <input type="text" name="nsh_no" id="nsh_no" value="{{old('nsh_no')}}" class="form-control" value="">
                                        </div>

                                        <div class="form-group">
                                            <label> Select Your Country <span class="text-red reg-censored">*</span></label>
                                            <select class="form-control" name="country_id" id="country_id" required="">
                                                <option value="">Select Country</option>
                                                @foreach($countries as $country)
                                                    <option value="{{$country->id}}" @if('231' == $country->id) selected @endif>{{$country->title}}</option>
                                                @endforeach()
                                            </select>
                                        </div>

                                        <div class="form-row">
                                            <div class="col-md-6 col-sm-12 form-group">
                                                <label>Address 1 <span class="text-red reg-censored">*</span></label>
                                                <input type="text" name="address_1" id="address_1" class="form-control" value="{{old('address_1')}}" required="">
                                            </div>
                                            <div class="col-md-6 col-sm-12 form-group">
                                                <label>Address 2</label>
                                                <input type="text" name="address_2" id="address_2" class="form-control" value="{{old('address_2')}}">
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="col-md-6 col-sm-12 form-group">
                                                <label>Address 3</label>
                                                <input type="text" name="address_3" id="address_3" class="form-control" value="{{old('address_3')}}">
                                            </div>
                                            <div class="col-md-6 col-sm-12 form-group">
                                                <label>Town/ City <span class="text-red reg-censored">*</span></label>
                                                <input type="text" name="town_city" id="town_city" class="form-control" value="{{old('town_city')}}"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="col-md-6 col-sm-12 form-group">
                                                <label>County (optional)</label>
                                                <input type="text" name="county" id="county" class="form-control" value="{{old('county')}}">
                                            </div>
                                            <div class="col-md-6 col-sm-12 form-group">
                                                <label>Postcode <span class="text-red reg-censored">*</span></label>
                                                <input type="text" name="postcode" id="postcode" class="form-control" value="{{old('postcode')}}" required>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>Email Address <span class="text-red reg-censored">*</span></label>
                                            <input type="email" class="form-control" name="email" value="{{old('email')}}" id="email_address_2" value="" required>
                                        </div>

                                        <div class="form-group">

                                            <label>Password <span class="text-red reg-censored">*</span></label>

                                            <input type="password" class="form-control" id="password" name="password" required pattern="^^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[A-Za-z0-9$%@*&amp;£-]{8,20}$" data-fv-regexp-message="Password must be between 8 to 20 characters with atleast one uppercase, one lowercase and one digit. Allowed characters (Alphabet, Numbers, $%@*&amp;£-)" maxlength="20">

                                            <p>
                                                <small>Digits, alphabets and one capital letter.</small>
                                            </p>

                                        </div>

                                        <div class="form-group">
                                            <label>
                                                <input type="checkbox" id="agree" name="agree" @if(old('agree')) checked @endif required="required">
                                                I agree to <a href="{{url('page/terms-and-conditions')}}" target="_blank"> terms &amp; conditions </a>
                                            </label>
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

                                        <div class="form-group">

                                            <input type="hidden" name="is_op_process" value="1" readonly="readonly">

                                            <button type="button" name="register_submit_btn" id="register_submit_btn" class="btn btn-primary btn-shape-square">Register</button>

                                        </div>

                                    </form>
                                </div>
                                <!-- /form_container -->
                            </div>
                            <!-- /box_account -->
                        </div>

                    </div>
                </div>
            </main>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <script>
        $(document).ready(function(){
            let selected_tab = $('#get_selected_tab').val();
            if(selected_tab == 'forgot-password'){
                $('#login_form').hide();
                // $('#forgot_form').show();
                $('#forgot_form').removeClass('d-none');
            } else {
                $('#login_form').show();
                // $('#forgot_form').hide();
                $('#forgot_form').addClass('d-none');
            }
            $('.toggle-forms').click(function(){
                var id = $(this).attr('data-id');
                if (id && id === 'login') {
                    $('#login_form').show();
                    // $('#forgot_form').hide();
                    $('#forgot_form').addClass('d-none');
                } else if (id && id === 'forgot') {
                    $('#login_form').hide();
                    // $('#forgot_form').show();
                    $('#forgot_form').removeClass('d-none');
                }
            }); // click

            $('#register_submit_btn').click(function(){

                var validator = $('#register_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#register_form')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn

            $('#submit_btn_login').click(function(){

                var validator = $('#submit_form_login').validate();
                if(validator.form() != false){
                    // error => false
                    $('#submit_form_login')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn

            $('#submit_btn_forgot').click(function(){

                var validator = $('#submit_form_forgot').validate();
                if(validator.form() != false){
                    // error => false
                    $('#submit_form_forgot')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn
        });
    </script>
@endsection()
