@extends('frontend.patient.dashboard_new')
@section('title', 'Profile Settings')
@section('style')
{{-- <style type="text/css">
     .red{
        color:red;
     }
    .has-error{
      color: #f00 !important;
    }
    .error {
        color: #f00 !important;
    }
 </style> --}}
@stop
@section('patient-content')
    <!-- Returning Customer Start -->
     <form  action="{{url('update-profile-settings')}}" class="prevent_enter_key" id="profile_form" method="post" accept-charset="utf-8" style="margin-left: 26px;margin: 20px;">
        @csrf()
        <div class="col-md-12">
           @include('frontend.include.message')
                <div class="return-customer">
                    <div class="card-header mb-4">
                                <h3>Profile Settings</h3>
                            </div>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label>First name <span class="red ">*</span></label>
                                    <input type="text" name="first_name" placeholder="" value="{{$patient->first_name}}" id="input-first-name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Last name <span class="red">*</span></label>
                                    <input type="text" name="last_name" placeholder="" value="{{$patient->last_name}}{{old('last_name')}}"
                                    id="input-last-name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 mt-3">
                                <div class="form-group">
                                    <label>Email <span class="red">*</span></label>
                                    <input type="text" name="email" placeholder="" value="{{$patient->email}}{{old('email')}}"
                                    id="input-email" class="form-control" required>
                                </div>
                            </div>

                            <div class="col-md-6 mb-3 mt-3">
                                <div class="form-group">
                                    <label>Adress<span class="red">*</span></label>
                                    <input type="text" name="address_1" placeholder="" value="{{$patient->address_1}}{{old('address_1')}}"
                                    id="input-address_1" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 mt-3">
                                <div class="form-group">
                                    <label>Town/City<span class="red">*</span></label>
                                    <input type="text" name="town_city" placeholder="" value="{{$patient->town_city}}{{old('town_city')}}"
                                    id="input-town_city" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 mt-3">
                                <div class="form-group">
                                    <label>Postcode<span class="red">*</span></label>
                                    <input type="number" name="postcode" placeholder="" value="{{$patient->postcode}}{{old('postcode')}}"
                                    id="input-postcode" class="form-control" required>
                                </div>
                            </div>

                              {{-- @php

                                $dob = null;
                                if (!empty($patient)) {
                                   if(!empty($patient->dob)) {
                                     $dob = explode("-",$patient->dob);
                                   }
                                }

                            @endphp --}}


                            <div class="col-md-12 mb-3 mt-3">
                                <div class="form-group">
                                    <label>Contact number <span class="red">*</span></label>
                                    <input type="number" name="mobile_no" placeholder="" required value="{{$patient->mobile_no}}" id="mobile_no" class="form-control">
                                </div>
                            </div>
                           {{--  <div class="col-md-12">
                                <div class="form-group">
                                    <label class="red">Email <span class="red">*</span></label>
                                    <input type="email" name="email" placeholder="" required value="{{old('email')}}" id="input-email-address" class="form-control">
                                </div>
                            </div> --}}

                          {{--   <div class="col-md-12">
                                <div class="form-group">
                                    <label >Password <span class="red">*</span></label>
                                    <input type="password" name="password" placeholder="" required id="input-password" class="form-control">
                                </div>

                            </div> --}}


                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" id="profile_submit" value="Profile Update">Profile Update</button>

                            </div>

                        </div>
                </div>
        </div>
     </form>

    <!-- Returning Customer End -->

@stop()
@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <script>
        $(document).ready(function(){
            $('#profile_submit').click(function(){
                var validator = $('#profile_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#profile_form')[0].submit();
                } else {
                    // error => true
                } //
            }); // click => #submit_bt

        });
    </script>
@stop
