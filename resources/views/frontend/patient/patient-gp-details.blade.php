@extends('frontend.patient.main')
@section('title', 'GP Details')
@section('patient-content')
    <div class="col-md-9 mb-4">
        @include("frontend.components.messages")
          <div class="card">
            <div class="card-header bg-white">
                  <h5 class="card-title mb-0">GP Details</h5>
            </div>

            <div class="card-body">

              <p>Enter your GP details if you are a UK resident, so, in case you want us to inform your GP so we will have your GP Details.</p>
              <form method="post" action="{{url('update-gp-details')}}" id="gp_form">
                  @csrf
                  <input type="hidden" id="hash_id" name="hash_id" value="{{!empty($patient_details) ? $patient_details->hash_id : ''}}" readonly>
                <div class="form-group">
                  <label for="gpsurgeryname">GP Surgery Name</label>
                  <input type="text" class="form-control" id="gp_surgery_name" name="gp_surgery_name" placeholder="" required value="{{!empty($patient_details) ? $patient_details->gp_surgery_name : old('gp_surgery_name')}}">
                </div>

              <div class="form-group">
                  <label for="gpsurgeryname">GP Surgery Email</label>
                  <input type="text" class="form-control" id="gp_surgery_email" name="gp_surgery_email" placeholder="" value="{{!empty($patient_details) ? $patient_details->gp_surgery_email : old('gp_surgery_email')}}">
              </div>

                <div class="form-group">
                  <label for="gpsurgeryaddress">GP Surgery Address</label>
                  <textarea class="form-control" id="gp_surgery_address" name="gp_surgery_address" rows="3" required>{{!empty($patient_details) ? $patient_details->gp_surgery_address : old('gp_surgery_address')}}</textarea>
                </div>

                <button type="button" name="submit_gp_btn" id="submit_gp_btn" class="btn btn-primary mb-2">Submit</button>
              </form>

            </div>
          </div>
      </div>
@stop()

@section('scripts')

    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {

            $('#submit_gp_btn').click(function(){

                var validator = $('#gp_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#gp_form')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn

        });
    </script>

@stop
