@extends('frontend.master')
@section('title', 'Login')
@section('style')
    <style type="text/css">
        .red{
          color:red;
        }
        .has-error{
          color: #f00 !important;
        }
        .error {
           color: #f00 !important;
        }
    </style>
@stop
@section('content')

    <div class="log-in ptb-45">
        <div class="container">
            <div class="row">
                <!-- Returning Customer Start -->
                <div class="col-md-6 mx-auto">
                    @include('frontend.include.message')
                    <div class="well">
                        <div class="return-customer">
                            <h3 class="mb-10 custom-title">Log in</h3>
                             <p class="mb-10">
                                <strong>I am a returning customer</strong>
                             </p>
                             <form  action="{{url('/login')}}" class="prevent_enter_key" id="login_form" method="post" accept-charset="utf-8">
                                @csrf()
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="text" name="email" placeholder="" id="email" required class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" name="password" placeholder="" id="password" required class="form-control">
                                        </div>
                                        <p class="lost-password text-right"><a href="{{url('forgot-password')}}">Forgot password?</a></p>
                                    </div>

                                       <?php

                                          $recaptcha_attempt  = globalSettings('recaptcha_attempt');

                                          $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');

                                        ?>

                                        @if(attemptCount() > $recaptcha_attempt)
                                        <div class="col-md-12">
                                                <div class="form-group">
                                                <div class="form-group">
                                                    @include("frontend.components.re_captcha")
                                                </div>
                                            </div>
                                        </div>

                                        @endif

                                    <div class="col-md-12">

                                        <input type="submit" value="Login" id="login_submit" class="btn-colour-blue">
                                    </div>
                                    <div class="col-md-12 mt-3">

                                        <p>Don't have an account yet? <a href="{{url('register')}}">Register Now</a></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Returning Customer End -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>

@stop
@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <script>
        $(document).ready(function(){
            $('#login_submit').click(function(){
                var validator = $('#login_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#login_form')[0].submit();
                } else {
                    // error => true
                } //
            }); // click => #submit_bt
        });
    </script>
@stop