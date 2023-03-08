@extends('frontend.master')
@section('title', 'Addresses')
@section('style')
@stop
@section('content')

    <div class="log-in ptb-45">
        <div class="container">
            <form action="{{ asset('checkout/addresses') }}" id="update_address_form" method="post">
                @csrf
                <div class="row">
                    <!-- Returning Customer Start -->

                    <?php
                        $address['d_address_1'] = array_key_exists('d_address_1', $cart['addresses']) ? $cart['addresses']['d_address_1'] : "";
                        $address['d_address_2'] = array_key_exists('d_address_2', $cart['addresses']) ? $cart['addresses']['d_address_2'] : "";
                        $address['d_address_3'] = array_key_exists('d_address_3', $cart['addresses']) ? $cart['addresses']['d_address_3'] : "";
                        $address['d_town']      = array_key_exists('d_town', $cart['addresses']) ? $cart['addresses']['d_town'] : "";
                        $address['d_county']    = array_key_exists('d_county', $cart['addresses']) ? $cart['addresses']['d_county'] : "";
                        $address['d_postcode']  = array_key_exists('d_postcode', $cart['addresses']) ? $cart['addresses']['d_postcode'] : "";

                        $address['b_address_1'] = array_key_exists('b_address_1', $cart['addresses']) ? $cart['addresses']['b_address_1'] : "";
                        $address['b_address_2'] = array_key_exists('b_address_2', $cart['addresses']) ? $cart['addresses']['b_address_2'] : "";
                        $address['b_address_3'] = array_key_exists('b_address_3', $cart['addresses']) ? $cart['addresses']['b_address_3'] : "";
                        $address['b_town']      = array_key_exists('b_town', $cart['addresses']) ? $cart['addresses']['b_town'] : "";
                        $address['b_county']    = array_key_exists('b_county', $cart['addresses']) ? $cart['addresses']['b_county'] : "";
                        $address['b_postcode']  = array_key_exists('b_postcode', $cart['addresses']) ? $cart['addresses']['b_postcode'] : "";

                        $address['d_first_name']  = array_key_exists('d_first_name', $cart['addresses']) ? $cart['addresses']['d_first_name'] : "";
                        $address['d_last_name']  = array_key_exists('d_last_name', $cart['addresses']) ? $cart['addresses']['d_last_name'] : "";
                        $address['b_first_name']  = array_key_exists('d_first_name', $cart['addresses']) ? $cart['addresses']['b_first_name'] : "";
                        $address['b_last_name']  = array_key_exists('d_last_name', $cart['addresses']) ? $cart['addresses']['b_last_name'] : "";
                    ?>

                    <div class="col-md-8 mx-auto">
                        @include('frontend.include.message')
                    </div>

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
                                  <div class="col-md-12">
                                <div class="form-group">
                                    <label>Delivery First Name <span class="red">*</span></label>
                                    <input type="text" name="d_first_name" placeholder="" value="{{ $address['d_first_name'] }}" id="d_first_name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Delivery Last Name <span class="red">*</span></label>
                                    <input type="text" name="d_last_name" placeholder="" value="{{ $address['d_last_name'] }}" id="d_last_name" class="form-control" required>
                                </div>
                            </div>
                                    <div class="col-md-12 col-sm-12 form-group">
                                        <label>Address 1 <span class="req-censored">*</span></label>
                                        <input type="text" value="{{ $address['d_address_1'] }}" class="form-control" id="d_address_1" name="d_address_1" required="required">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-12 col-sm-12 form-group">
                                        <label>Address 2</label>
                                        <input type="text" class="form-control" id="d_address_2" value="{{ $address['d_address_2'] }}" name="d_address_2">
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-12 col-sm-12 form-group">
                                        <label>Address 3</label>
                                        <input type="text" class="form-control" id="d_address_3" value="{{ $address['d_address_3'] }}" name="d_address_3">
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-6 col-sm-12 form-group">
                                        <label>City/Town <span class="req-censored">*</span></label>
                                        <input type="text" class="form-control" id="d_town" name="d_town" value="{{ $address['d_town'] }}" required="required">

                                    </div>
                                    <div class="col-md-6 col-sm-12 form-group">
                                        <label>County</label>
                                        <input type="text" class="form-control" id="d_county" value="{{ $address['d_county'] }}" name="d_county">
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-12 col-sm-12 form-group">
                                        <label>Post Code <span class="req-censored">*</span></label>
                                        <input type="text" class="form-control" id="d_postcode" name="d_postcode" value="{{ $address['d_postcode'] }}" required="required">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
                    <!-- Returning Customer End -->

<!-- Returning Customer Start -->
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

                                <label for="same_as"><input id="same_as" type="checkbox"> Same as delivery address</label>

                            </div>
                        </div>

                        <div class="form-row">

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Billing First Name <span class="red">*</span></label>
                                    <input type="text" name="b_first_name" placeholder="" value="{{ $address['b_first_name'] }}" id="b_first_name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Billing Last Name <span class="red">*</span></label>
                                    <input type="text" name="b_last_name" placeholder="" value="{{ $address['b_last_name'] }}" id="b_last_name" class="form-control" required>
                                </div>
                            </div>

                            <div class="col-md-12 col-sm-12 form-group">
                                <label>Address 1 <span class="req-censored">*</span></label>
                                <input type="text" class="form-control" id="b_address_1" name="b_address_1" required="required" value="{{ $address['b_address_1'] }}">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 col-sm-12 form-group">
                                <label>Address 2</label>
                                <input type="text" class="form-control" id="b_address_2" name="b_address_2" value="{{ $address['b_address_2'] }}">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-md-12 col-sm-12 form-group">
                                <label>Address 3</label>
                                <input type="text" class="form-control" id="b_address_3" name="b_address_3" value="{{ $address['b_address_3'] }}">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-md-6 col-sm-12 form-group">
                                <label>City/Town <span class="req-censored">*</span></label>
                                <input type="text" class="form-control" id="b_town" name="b_town" required="required" value="{{ $address['b_town'] }}">

                            </div>
                            <div class="col-md-6 col-sm-12 form-group">
                                <label>County</label>
                                <input type="text" class="form-control" id="b_county" name="b_county" value="{{ $address['b_county'] }}">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-md-12 col-sm-12 form-group">
                                <label>Post Code <span class="req-censored">*</span></label>
                                <input type="text" class="form-control" id="b_postcode" name="b_postcode" required="required" value="{{ $address['b_postcode'] }}">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>

</div>
</div>
<!-- Returning Customer End -->
                </div>
                <!-- Row End -->

                <div class="row">

                    <div class="col-xl-12 col-lg-12 col-md-12 mt-4">
                        <div class="col-12 ">
                            <button type="button" name="update_address_btn" id="update_address_btn" class="btn btn-primary float-right"> Update Addresses </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- Container End -->
    </div>

@stop

@section('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
            let checked = $('#same_as').val();
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

                    $('#b_first_name').val( $('#d_first_name').val() ).trigger('input');
                    $('#b_last_name').val( $('#d_last_name').val() ).trigger('input');

                } else {
                    $('#delivery_add').show();
                    // Not Same
                    $('#b_address_1').val( '' ).trigger('input');
                    $('#b_address_2').val( '' ).trigger('input');
                    $('#b_address_3').val( '' ).trigger('input');

                    $('#b_town').val( '' ).trigger('input');
                    $('#b_county').val( '' ).trigger('input');
                    $('#b_postcode').val( '' ).trigger('input');
                    $('#b_first_name').val( '' ).trigger('input');
                    $('#b_last_name').val( '' ).trigger('input');
                }
            });

        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#update_address_btn').click(function(){
                let validator = $('#update_address_form').validate();

                if(validator.form() != false)
                    $('#update_address_form')[0].submit();
            });
        });
    </script>

@stop
