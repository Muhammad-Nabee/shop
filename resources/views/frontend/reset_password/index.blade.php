@extends('frontend.master')
@section('title', 'Reset Password')
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
                    <div class="row">

                        <div id="login_form" class="col-xl-6 col-lg-6 col-md-6 offset-3">

                            @include("frontend.components.messages")

                            <h3 class="client mb-3 text-center">Reset Password</h3>

                            <div class="card mb-4">

                                <div class="card-body p-4 shadow-lg">

                                    <div id="signin_div" class="">

                                        <form action="{{url('patients/update-password')}}" method="post" id="submit_reset_form">
                                            @csrf
                                            <input type="hidden" name="token" value="{{$token}}">

                                            <div class="form-group">

                                                <label>Password</label>
                                                <input class="form-control" type="password" name="password"  placeholder="Enter password" required>

                                            </div>
                                            <div class="form-group">

                                                <label>Confirm Password</label>
                                                <input class="form-control" type="password" name="password_confirmation" placeholder="Confirm password" required>


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
                                                <button type="button" name="submit_reset_btn" id="submit_reset_btn" class="btn btn-primary btn-shape-square"> Submit </button>

                                            </div>


                                        </form>
                                    </div>

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
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {

            $('#submit_reset_btn').click(function(){

                var validator = $('#submit_reset_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#submit_reset_form')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn

        });
    </script>

@stop()
