@extends('frontend.master')
@section('title', 'Reset Password')
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

<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1>Reset Password</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active">Reset Password</li>
                </ol>
            </div>
        </div>
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->
<!-- START LOGIN SECTION -->
<div class="login_register_wrap section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-md-10">
                <div class="login_wrap">
                     @include('frontend.include.message')
            		<div class="padding_eight_all bg-white">
                        <div class="heading_s1">
                            <h3>Reset Password</h3>
                        </div>
                       <form  action="{{url('/update-forgot-password')}}" class="prevent_enter_key" id="forgot_form" method="post" accept-charset="utf-8">
                                 <input type="hidden" name="token" value="{{$token}}">
                                @csrf()
                            <div class="form-group mb-3">
                                <input type="password" required="" id="input-email" class="form-control" name="password" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <input class="form-control" required="" type="password" id="input-password" name="password_confirmation" placeholder="Confirm Password">
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

                            <div class="form-group mt-3">
                                <button type="submit" id="forgot_submit_btn" class="btn btn-fill-out btn-block">Submit</button>
                            </div>
                        </form>


                        <div class="form-note text-center">Already have an account? <a href="{{url('customr-login')}}">Login Now</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@stop
@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <script>
        $(document).ready(function(){

            $('#forgot_submit_btn').click(function(){

                var validator = $('#forgot_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#forgot_form')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_bt

        });
    </script>
@endsection()
