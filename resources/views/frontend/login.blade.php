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
<!-- START LOGIN SECTION -->
<div class="login_register_wrap section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-md-10">
                <div class="login_wrap">
                    @include("frontend.components.messages")
            		<div class="padding_eight_all bg-white">
                        <div class="heading_s1">
                            <h3>Login</h3>
                        </div>
                        <form method="post" action="{{url('patients/login-process')}}">
                            @csrf
                            <div class="form-group mb-3">
                                <input type="text" required="" class="form-control" name="email" placeholder="Your Email">
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



                            <div class="form-group mb-3">
                                  <input type="hidden" name="is_op_process" value="1" readonly="readonly">
                                <button type="submit" class="btn btn-fill-out btn-block">Log in</button>
                            </div>
                             <div class="form-group">
                                                                     <p class="lost-password text-right"><a href="{{url('forgot-password')}}">Forgot password?</a></p>
                             </div>
                        </form>
                        <div class="different_login">
                            <span> or</span>
                        </div>
                        <ul class="btn-login list_none text-center">
                            <li><a href="#" class="btn btn-facebook"><i class="ion-social-facebook"></i>Facebook</a></li>
                            <li><a href="#" class="btn btn-google"><i class="ion-social-googleplus"></i>Google</a></li>
                        </ul>
                        <div class="form-note text-center">Don't Have an Account? <a href="{{route('customr-register')}}">Sign up now</a></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


<!-- END LOGIN SECTION -->


@endsection
