@extends('frontend.master')
@section('title', 'Addresses')
@section('style')
    <link href="{{ asset('assets/css/td_styles.css')}}" rel="stylesheet">
    <style>
        .req-censored {
            color: red !important;
        }
        .custom-style {
            float: right;
            font-size: 82%;
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
                                <li><a href="{{url('/')}}">Addresses</a></li>
                            </ul>
                        </div>
                    </div>
                    @include("frontend.components.messages")
                    <form method="post" action="{{url('treatments/update/addresses')}}" id="update_address_form">
                        @csrf

                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-8 mb-3">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-header bg-200">
                                            <h5 class="mb-0">Delivery Address</h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12">
                                                    <div class="shipping">
                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Address 1 <span class="req-censored">*</span></label>
                                                                <input type="text" value="{{ !empty($patient_addresses->d_address_1) ? $patient_addresses->d_address_1 : '' }}" class="form-control" id="d_address_1" name="d_address_1" required="required">
                                                            </div>
                                                        </div>
                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Address 2</label>
                                                                <input type="text" class="form-control" id="d_address_2" value="{{ !empty($patient_addresses->d_address_2) ? $patient_addresses->d_address_2 : '' }}" name="d_address_2">
                                                            </div>
                                                        </div>

                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Address 3</label>
                                                                <input type="text" class="form-control" id="d_address_3" value="{{ !empty($patient_addresses->d_address_3) ? $patient_addresses->d_address_3 : '' }}" name="d_address_3">
                                                            </div>
                                                        </div>

                                                        <div class="form-row">
                                                            <div class="col-md-6 col-sm-12 form-group">
                                                                <label>City/Town <span class="req-censored">*</span></label>
                                                                <input type="text" class="form-control" id="d_town" name="d_town" value="{{ !empty($patient_addresses->d_town) ? $patient_addresses->d_town : '' }}" required="required">

                                                            </div>
                                                            <div class="col-md-6 col-sm-12 form-group">
                                                                <label>County</label>
                                                                <input type="text" class="form-control" id="d_county" value="{{ !empty($patient_addresses->d_county) ? $patient_addresses->d_county : '' }}" name="d_county">
                                                            </div>
                                                        </div>

                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Post Code <span class="req-censored">*</span></label>
                                                                <input type="text" class="form-control" id="d_postcode" name="d_postcode" value="{{ !empty($patient_addresses->d_postcode) ? $patient_addresses->d_postcode : '' }}"  required="required">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
{{--                                    <div class="card mt-4">--}}
{{--                                        <div class="card-body">--}}
{{--                                            <div class="form-row">--}}
{{--                                                <div class="col-md-12 col-sm-12 form-group">--}}
{{--                                                    <h5 class="mb-0 ">--}}
{{--                                                        <label for="same_as"><input id="same_as" type="checkbox"> Same as delivery address</label>--}}
{{--                                                    </h5>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
                                </div>
                            </div>

                            <div id="delivery_add_2" class="col-xl-6 col-lg-6 col-md-8">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-header bg-200">
                                            <h5 class="mb-0">Billing Address</h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12">
                                                    <div class="shipping">
                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
{{--                                                                <h5 class="mb-0 ">--}}
                                                                    <label for="same_as"><input id="same_as" type="checkbox"> Same as delivery address</label>
{{--                                                                </h5>--}}
                                                            </div>
                                                        </div>

                                                        <div class="form-row">

                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Address 1 <span class="req-censored">*</span></label>
                                                                <input type="text" class="form-control" id="b_address_1" name="b_address_1" required="required" value="{{ !empty($patient_addresses->b_address_1) ? $patient_addresses->b_address_1 : '' }}">
                                                            </div>
                                                        </div>
                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Address 2</label>
                                                                <input type="text" class="form-control" id="b_address_2" name="b_address_2" value="{{ !empty($patient_addresses->b_address_2) ? $patient_addresses->b_address_2 : '' }}">
                                                            </div>
                                                        </div>

                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Address 3</label>
                                                                <input type="text" class="form-control" id="b_address_3" name="b_address_3" value="{{ !empty($patient_addresses->b_address_3) ? $patient_addresses->b_address_3 : '' }}">
                                                            </div>
                                                        </div>

                                                        <div class="form-row">
                                                            <div class="col-md-6 col-sm-12 form-group">
                                                                <label>City/Town <span class="req-censored">*</span></label>
                                                                <input type="text" class="form-control" id="b_town" name="b_town" required="required" value="{{ !empty($patient_addresses->b_town) ? $patient_addresses->b_town : '' }}">

                                                            </div>
                                                            <div class="col-md-6 col-sm-12 form-group">
                                                                <label>County</label>
                                                                <input type="text" class="form-control" id="b_county" name="b_county" value="{{ !empty($patient_addresses->b_county) ? $patient_addresses->b_county : '' }}">
                                                            </div>
                                                        </div>

                                                        <div class="form-row">
                                                            <div class="col-md-12 col-sm-12 form-group">
                                                                <label>Post Code <span class="req-censored">*</span></label>
                                                                <input type="text" class="form-control" id="b_postcode" name="b_postcode" required="required" value="{{ !empty($patient_addresses->b_postcode) ? $patient_addresses->b_postcode : '' }}">
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div>
                        <div class="row">

                            <div class="col-xl-12 col-lg-12 col-md-12 mt-4">
                                <div class="col-12 ">
                                    <button type="button" name="update_address_btn" id="update_address_btn" class="btn btn-primary float-right"> Update Addresses </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </main>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            // $('#delivery_add').hide();
            // same_as_billing
            var checked = $('#same_as').val();
            $('#same_as').change(function(){
                    checked = $(this).val();
                if( $(this).prop('checked') == true ){
                    $('#delivery_add').hide();
                    // Same
                    $('#b_address_1').val( $('#d_address_1').val() ).trigger('input');
                    $('#b_address_2').val( $('#d_address_2').val() ).trigger('input');
                    $('#b_address_3').val( $('#d_address_3').val() ).trigger('input');

                    $('#b_town').val( $('#d_town').val() ).trigger('input');
                    $('#b_county').val( $('#d_county').val() ).trigger('input');
                    $('#b_postcode').val( $('#d_postcode').val() ).trigger('input');

                } else {
                    $('#delivery_add').show();
                    // Not Same
                    $('#b_address_1').val( '' ).trigger('input');
                    $('#b_address_2').val( '' ).trigger('input');
                    $('#b_address_3').val( '' ).trigger('input');

                    $('#b_town').val( '' ).trigger('input');
                    $('#b_county').val( '' ).trigger('input');
                    $('#b_postcode').val( '' ).trigger('input');
                }
            });

        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {

            $('#update_address_btn').click(function(){

                var validator = $('#update_address_form').validate();
                if(validator.form() != false){
                    // error => false
                    $('#update_address_form')[0].submit();
                } else {
                    // error => true
                } //

            }); // click => #submit_btn

        });
    </script>
@endsection()
