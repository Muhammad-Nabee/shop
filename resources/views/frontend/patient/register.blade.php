@extends('frontend.master')
@section('title', 'Register')
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
                    <form  action="{{url('/register')}}" class="prevent_enter_key" id="register_form" method="post" accept-charset="utf-8">
                        @csrf()
                   @include('frontend.include.message')
                    <div class="well">
                        <div class="return-customer">
                            <h3 class="mb-10 custom-title">Create an account</h3>
                            <p class="mb-20"><strong>I am a new customer</strong></p>
                            <form action="#">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>First name <span class="red">*</span></label>
                                            <input type="text" name="first_name" placeholder="" value="{{old('first_name')}}" id="first_name" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Last name <span class="red">*</span></label>
                                            <input type="text" name="last_name" placeholder="" value="{{old('last_name')}}"
                                            id="last_name" class="form-control" required>
                                        </div>
                                    </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="red">Gender <span class="red">*</span></label><br />
                        <span class="custom-radio mr-3">
                            <label><input name="gender"
                             value="male" type="radio" required @if(old('gender')  == 'male') checked @endif/> Male</label>
                        </span>
                        <span class="custom-radio mr-3">
                            <label><input name="gender" value="female" type="radio" required @if(old('gender')  == 'female') checked @endif /> Female</label>
                        </span>
                        <span class="custom-radio">
                            <label><input name="gender" value="other" type="radio" required @if(old('gender') == 'other') checked @endif /> Others</label>
                        </span>
                    </div>
                </div>


                <div class="col-md-12 mb-4">
                    <label>Date of birth <span class="red">*</span></label>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                              <label>Day</label>
                                <select class="form-control" name="day" id="day" required>
                                <option value="">Select Day</option>
                                @for($i=1; $i<= 31; $i++)
                                  <option value="{{$i}}" @if(old('day') == $i) selected @endif>{{$i}}</option>
                                @endfor
                            </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Month</label>
                                 <select class="form-control" id="month" name="month" required>
                                <option value="">Select Month</option>
                                 @for($i=1; $i<= 12; $i++)
                                  <option value="{{$i}}" @if(old('month') == $i) selected @endif>{{$i}}</option>
                                @endfor
                            </select>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Year</label>
                                <select class="form-control " name="year" id="year" required="">
                                <option value="">Select Year</option>
                                <?php $date = date('Y'); ?>
                                @for($i=$date; $i >= 1922; $i--)
                                  <option value="{{$i}}" @if(old('year') == $i) selected @endif>{{$i}}</option>
                                @endfor
                            </select>

                            </div>
                        </div>
                    </div>
                </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Contact number <span class="red">*</span></label>
                                            <input type="text" name="mobile_no" placeholder="" value="{{old('mobile_no')}}" id="mobile_no" required class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="red">Email <span class="red">*</span></label>
                                            <input type="email" name="email" placeholder="" required value="{{old('email')}}" id="email" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label >Password <span class="red">*</span></label>
                                            <input type="password" name="password" placeholder="" required id="password" class="form-control">
                                        </div>

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

                                        <input type="submit" id="register_submit_btn" value="Create Account" class="btn-colour-blue">
                                    </div>
                                    <div class="col-md-12 mt-3">

                                        <p>Already a member? <a href="{{url('login')}}">Login Now</a></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    </form>
                </div>

                <!-- Returning Customer End -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>

@stop()
@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <script>
        $(document).ready(function(){

            $('#register_submit_btn').click(function(){

                var validator = $('#register_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#register_form')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_bt
          
        });
    </script>
@endsection()