@extends('frontend.patient.dashboard_new')
@section('title', 'Profile Settings')
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
@section('patient-content')
    <!-- Returning Customer Start -->
     <form  action="{{url('patient-update-address')}}" class="prevent_enter_key" id="address_form" method="post" accept-charset="utf-8" style="
    margin-left: 20px;
    margin-right: 20px;
    margin-bottom: 20px;
    margin-top: 20px;
">
        @csrf()
        <div class="col-md-12">
           @include('frontend.include.message')
                <div class="return-customer">
                      <h3 class="mb-10 custom-title"> Delivery Address </h3>
                        <div class="row">
                              <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label>Delivery First Name <span class="red">*</span></label>
                                    <input type="text" name="d_first_name" placeholder="" value="@if($patient){{$patient->d_first_name}} @endif" id="d_first_name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Delivery Last Name <span class="red">*</span></label>
                                    <input type="text" name="d_last_name" placeholder="" value="@if($patient){{$patient->d_last_name}} @endif" id="d_last_name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label>Address 1 <span class="red">*</span> </label>
                                    <input type="text" name="d_address_1" placeholder="" value="@if($patient){{$patient->d_address_1}}@endif" id="d_address_1" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Email </label>
                                    <input type="email" name="b_email" placeholder="" value="@if($patient){{$patient->b_email}}@endif" id="input-first-name" class="form-control" >
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label>Mobile No </label>
                                    <input type="number" name="d_mobile_no" placeholder="" value="@if($patient){{$patient->d_mobile_no}}@endif" id="input-first-name" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>City/Town <span class="red">*</span></label>
                                    <input type="text" name="d_town" placeholder="" value="@if($patient){{$patient->d_town}}@endif" id="d_town" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label>Country </label>
                                    <input type="text" name="d_country" placeholder="" value="@if($patient){{$patient->d_country}}@endif" id="input-first-name" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 ">
                                <div class="form-group">
                                    <label> ZipCode <span class="red">*</span></label>
                                    <input type="text" name="d_postcode" placeholder="" value="@if($patient){{$patient->d_postcode}}@endif" id="d_postcode" class="form-control" required>
                                </div>
                            </div>

                        </div>

                    <h3 class="mb-10 custom-title"> Billing Address </h3>
                        <div class="row">
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label>Billing First Name <span class="red">*</span></label>
                                    <input type="text" name="b_first_name" placeholder="" value="@if($patient){{$patient->b_first_name}} @endif" id="b_first_name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6  mb-3">
                                <div class="form-group">
                                    <label>Billing Last Name <span class="red">*</span></label>
                                    <input type="text" name="b_last_name" placeholder="" value="@if($patient){{$patient->b_last_name}} @endif" id="b_last_name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label>Address 1 <span class="red">*</span></label>
                                    <input type="text" name="b_address_1" placeholder="" value="@if($patient){{$patient->b_address_1}} @endif" id="b_address_1" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label>Email </label>
                                    <input type="text" name="d_email" placeholder="" value="@if($patient){{$patient->d_email}} @endif" id="input-first-name" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Mobile No</label>
                                    <input type="number" name="b_mobile_no" placeholder="" value="@if($patient){{$patient->b_mobile_no}}@endif" id="input-first-name" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label>City/Town  <span class="red">*</span></label>
                                    <input type="text" name="b_town" placeholder="" value="@if($patient){{$patient->b_town}} @endif" id="b_town" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Country </label>
                                    <input type="text" name="b_country" placeholder="" value="@if($patient){{$patient->b_country}}@endif" id="input-first-name" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label> ZipCode  <span class="red">*</span></label>
                                    <input type="text" name="b_postcode" placeholder="" value="@if($patient){{$patient->b_postcode}}@endif" id="b_postcode" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                                 <button type="submit" id="address_submit" class="btn btn-primary" value="Update">Update</button>

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
            $('#address_submit').click(function(){
                var validator = $('#address_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#address_form')[0].submit();
                } else {
                    // error => true
                } //
            }); // click => #submit_bt

        });
    </script>
@stop
