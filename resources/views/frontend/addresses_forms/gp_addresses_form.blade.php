<form method="POST" id="edit-addr-form">
    @csrf
    <div class="">
        <input type="hidden" id="hash_id" name="hash_id" value="{{ !empty($patient_addresses->hash_id) ? $patient_addresses->hash_id : '' }}" />
        <input type="hidden" name="type" value="gp" />
        <div class="form-group">
            <label>Address 1*</label>
            <input type="text" class="form-control" id="address_1" name="address_1" required="required" value="{{ !empty($patient_addresses->address_1) ? $patient_addresses->address_1 : '' }}" />
        </div>

        <div class="form-group">
            <label>Address 2</label>
            <input type="text" class="form-control" id="address_2" name="address_2" value="{{ !empty($patient_addresses->address_2) ? $patient_addresses->address_2 : '' }}" />
        </div>

        <div class="form-group">
            <label>Address 3</label>
            <input type="text" class="form-control" id="address_3" name="address_3" value="{{ !empty($patient_addresses->address_3) ? $patient_addresses->address_3 : '' }}" />
        </div>

        <div class="form-group">
            <label>City/Town*</label>
            <input type="text" class="form-control" id="town_city" name="town_city" required="required" value="{{ !empty($patient_addresses->town_city) ? $patient_addresses->town_city : '' }}" />
        </div>

        <div class="form-group">
            <label>State/County</label>
            <input type="text" class="form-control" id="county" name="county" value="{{ !empty($patient_addresses->county) ? $patient_addresses->county : '' }}"/>
        </div>

        <div class="form-group">
            <label>Post Code*</label>
            <input type="text" class="form-control" id="postcode" name="postcode" required="required" value="{{ !empty($patient_addresses->postcode) ? $patient_addresses->postcode : '' }}" />
        </div>

        <div class="form-group">
            <button type="button" class="btn btn-success pull-right" id="edit-addr-btn"> Update </button>
            <button type="button" class="btn btn-danger close-mod" id="cancel-btn" data-dismiss="modal">Close</button>
        </div>

    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

<script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
<script type="text/javascript">

    $(document).ready(function(){

        $('.close-mod').on( "click", function() {
            $.magnificPopup.close();
        });

        // Save
        $('#edit-addr-btn').click(function(){


            var validator = $('#edit-addr-form').validate();
            if(validator.form() != false){
                // error => false
                // $('#register_form')[0].submit();
            } else {
                return false
                // error => true
            } //

            var request_type = 'POST' ;

            var request_data = new FormData(document.getElementById("edit-addr-form"));

            $.ajax({

                type: request_type,

                url: "{{ url('treatments/update-instant-addresses') }}",

                processData: false,

                contentType: false,

                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },

                data: request_data,

                beforeSend: function(result) {
                    $("#edit-addr-btn").attr("disabled", true);
                    $('#edit-addr-btn').html('Loading..');

                    $('#crud_errors_div').addClass('d-none');
                    $('#crud_errors_ul').html('');

                },
                success: function(response) {

                    $("#edit-addr-btn").attr("disabled", false);
                    $('#edit-addr-btn').html('Update');
                    location.reload();
                },

                error: function(xhr, status, error) {
                    $("#edit-addr-btn").attr("disabled", false);
                    $('#edit-addr-btn').html('Update');
                    mcShowErrorsPost(xhr, status, error)
                }

                // success

            }); // $.ajax

        }); // click => #add-edit-banner-btn

        // $('#cancel-btn').click(function () {
        //     var esc = $.Event("keydown", { keyCode: 27 });
        //     $("#body").trigger(esc);
        // });


    }); // .ready

</script>
