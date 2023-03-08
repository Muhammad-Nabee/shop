@extends('frontend.master')
@section('title' ,'Contact Us')
@section('style')
  <style type="text/css">
    .contact-area .form-control {
       background: #ffffff none repeat scroll 0 0 !important;
    }
    .error {
        color: red !important;
    }
  </style>
@endsection()
@section('content')

    <div class="log-in ptb-45">
        <div class="container">
            <div class="row">
                <!-- Returning Customer Start -->
                <div class="col-md-8 mx-auto">


                    <div class="well">
                        <div class="return-customer">
                            <h3 class="mb-10 custom-title">Contact Us</h3>
                            <p class="mb-10">
                                <strong>Send Us A message by filling this form</strong>
                            </p>

                            @if (\Session::has('success'))
                                <div class="alert alert-success" id="alert-success">
                                    <p>{{ \Session::get('success') }}</p>
                                </div><br />
                            @endif
                            @if (\Session::has('error'))
                                <div class="alert alert-danger" id="alert-danger">
                                    {{ \Session::get('error') }}
                                </div><br />
                            @endif
                            @if ($errors->any())
                                @foreach ($errors->all() as $error)
                                    <div class="alert alert-danger">{{$error}}</div>
                                @endforeach
                            @endif

                            @if (\Session::has('failure'))
                                <div class="alert alert-danger" id="alert-danger">
                                    <{{ \Session::get('failure') }}
                                </div>
                            @endif

                            <form id="process_contact" method="post" action="{{url('/contact-us')}}" autocomplete="off">
                                @csrf()
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>First Name <span> *</span></label>
                                            @auth
                                                <input type="text" name="first_name" class="form-control"  required value="{{old('first_name', auth()->user()->first_name)}}">
                                            @else
                                                <input type="text" name="first_name" class="form-control"  required value="{{old('first_name')}}">
                                            @endauth
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Last Name<span> *</span></label>
                                            @auth
                                                <input type="text" name="last_name" class="form-control"  required value="{{old('last_name', auth()->user()->last_name)}}">
                                            @else
                                                <input type="text" name="last_name" class="form-control"  required value="{{old('last_name')}}">
                                            @endauth
                                        </div>
                                    </div>

                                </div>

                                <!-- /row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email<span> *</span></label>
                                            @auth
                                                <input type="email" name="email_address" class="form-control"  required value="{{old('email_address', auth()->user()->email)}}">
                                            @else
                                                <input type="email" name="email_address" class="form-control"  required value="{{old('email_address')}}">
                                            @endauth
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Telephone</label>
                                            <input type="text"  name="contact_no" class="form-control" value="{{old('contact_no')}}">
                                        </div>
                                    </div>
                                </div>
                                <!-- /row -->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Message<span> *</span></label>
                                            <textarea id="form_message" name="message" class="form-control" placeholder="Your message" rows="3" required="required" data-error="Message is required.">{{old('message')}}</textarea>
                                        </div>
                                    </div>
                                </div>


                                {{--    <?php

                                 $recaptcha_attempt  = globalSettings('recaptcha_attempt');

                                 $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');

                                 ?>

                                 @if(attemptCount() > $recaptcha_attempt) --}}

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="address-textarea">
                                            @include('frontend.components.re_captcha')
                                        </div>
                                    </div>
                                </div>

                                {{--                         @endif
                                 --}}
                                <div class="row">
                                    <div class="col-md-12">
                                        <input value="Submit" class="return-customer-btn" id="contact_submit_btn" type="submit">
                                    </div>
                                </div>


                            </form>
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

            $('#contact_submit_btn').click(function(){

                var validator = $('#process_contact').validate();
                if(validator.form() != false){
                    // error => false
                    $('#process_contact')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn

        });

    </script>
@endsection()

