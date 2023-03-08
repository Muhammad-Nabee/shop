@extends('frontend.patient.dashboard_new')
@section('title', 'Change Password')
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
     <form  action="{{url('update-patient-password')}}" class="prevent_enter_key" id="change_password_form" method="post" accept-charset="utf-8" style="margin-right: 20px;
    margin-left: 20px;
    margin-bottom: 20px;
">
        @csrf()
        <div class="col-md-12">
           @include('frontend.include.message')
                <div class="return-customer">
                    <div class="card-header">
                                <h3>Change Password</h3>
                            </div>
                    <form action="#">
                      <p>Your can change your password in this section.</p>
                        <div class="row">
                            <div class="col-md-12 ">
                                <div class="form-group mb-3">
                                    <label>New Password <span class="red">*</span></label>
                                    <input type="password" name="password" placeholder=""  id="password" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-12 mb-3">
                                <div class="form-group">
                                    <label>Confirm New Password  <span class="red">*</span></label>
                                    <input type="password" name="password_confirmation" placeholder=""
                                     id="password_confirmation" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                            <button type="submit" class="btn btn-primary" id="change_password_submit" class="Change Password" value="Update">Change Password</button>

                            </div>

                        </div>
                    </form>
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
            $('#change_password_submit').click(function(){
                var validator = $('#change_password_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#change_password_form')[0].submit();
                } else {
                    // error => true
                } //
            }); // click => #submit_bt

        });
    </script>
@stop

