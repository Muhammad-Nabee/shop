<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">

@php
$maf = $product->maf($cart);
@endphp

<div class="modal-header">
    <h5 class="modal-title"> Medical Assessment Form</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<div class="modal-body">
    <form action="javascript:;" id="maf-form" method="post">

        @csrf

        {!! \App\Helpers\CommonHelper::getPageSection('medical-assessment-form-info-text') !!}

        <ul class="alert alert-danger d-none maf-form-errors">
        </ul>

        <input type="hidden" name="qty" value="{{ empty($qty) ? 1 : $qty }}" />
        <input type="hidden" name="item_id" value="{{ $product->id }}" />
        <input type="hidden" name="increment" value="{{ $increment  }}" />

        <!-- RAF Section -->
        <div class="raf-section">

            <!-- Section Heading -->
         {{--    <div class="row raf-section-heading">
                <div class="col-sm-12 col-md-12 col-lg-12 mb-4">
                    Medical Assessment Form
                </div> <!-- ./ Section Heading -->
            </div> --}}

            <!-- Question Row -->
            <div class="row raf-section-questions">

                <div class="col-sm-12 col-md-12 col-lg-12">

                    <p class="raf-question"> Please enter your age? </p>

                    <div class="row">
                        <div class="form-group col-md-6 col-sm-12">
                            <input type="number" class="form-control" id="maf-age" name="age" min="1" value="{{ !empty($maf) ? $maf['age'] : '' }}" />
                        </div>
                    </div>

                </div>

            </div> <!-- ./ Question Row -->

            <!-- Question Row -->
            <div class="row raf-section-questions">

                <div class="col-sm-12 col-md-12 col-lg-12">

                    <p class="raf-question"> What are your symptoms? </p>

                    <div class="row">
                        <div class="form-group col-md-12 col-sm-12">
                            <textarea type="text" class="form-control" id="maf-symptoms" name="symptoms">{{ !empty($maf) ? $maf['symptoms'] : '' }}</textarea>
                        </div>
                    </div>

                </div>

            </div> <!-- ./ Question Row -->

            <!-- Question Row -->
            <div class="row raf-section-questions">

                <div class="col-sm-12 col-md-10 col-lg-10">

                    <p class="raf-question"> Do you have any existing medical conditions? </p>

                    <div class="row">

                        <div class="form-group col-md-12 col-sm-12 {{ !empty($maf) && $maf['condition_status'] == 1 ? '' : 'd-none' }}" id="medicine_raf_medical_conditions_text_div">
                            <label> Insert conditions </label>
                            <textarea class="form-control"
                                      id="medicine_raf_medical_conditions_text"
                                      name="condition" rows="3">{{ !empty($maf) ? $maf['condition'] : '' }}</textarea>
                        </div>

                    </div>

                </div>

                <div class="col-sm-12 col-md-2 col-lg-2">
                    <input type="checkbox" {{ !empty($maf) && $maf['condition_status'] == 1 ? 'checked' : '' }} id="conditions-checkbox" data-toggle="toggle" data-on="Yes" data-off="No" data-size="lg">
                </div>

            </div> <!-- ./ Question Row -->

            <!-- Question Row -->
            <div class="row raf-section-questions mt-2">

                <div class="col-sm-12 col-md-10 col-lg-10">

                    <p class="raf-question"> Do you currently take any medication? </p>

                    <div class="row">

                        <div class="form-group col-md-12 col-sm-12 {{ !empty($maf) && $maf['medicine_status'] == 1 ? '' : 'd-none' }}"
                             id="medicine_raf_currently_taking_any_medication_text_div">

                            <label> Insert medicines </label>
                            <textarea class="form-control" id="medicine_raf_currently_taking_any_medication_text" name="medicine" rows="3">{{ !empty($maf) ? $maf['medicine'] : '' }}</textarea>
                        </div>

                    </div>

                </div>

                <div class="col-sm-12 col-md-2 col-lg-2">
                    <input type="checkbox" {{ !empty($maf) && $maf['medicine_status'] == 1 ? 'checked' : '' }} id="medicine-checkbox" data-toggle="toggle" data-on="Yes" data-off="No" data-size="lg">
                </div>

            </div> <!-- ./ Question Row -->

            <!-- Question Row -->
            <div class="row raf-section-questions mt-2">

                <div class="col-sm-12 col-md-10 col-lg-10">

                    <p class="raf-question">
                        Are you pregnant or breastfeeding?
                    </p>

                    <div class="error-item {{ !empty($maf) && $maf['pregnant_status'] == 1 ? '' : 'd-none' }}" id="medicine_raf_pregnant_or_breastfeeding_ew_error_div">
                        <div class="alert alert-danger">
                            <i class="fa fa-times-circle mr-2"></i> You have to see your GP
                        </div>
                    </div>


                </div>

                <div class="col-sm-12 col-md-2 col-lg-2">
                    <input type="checkbox" {{ !empty($maf) && $maf['pregnant_status'] == 1 ? 'checked' : '' }} id="pregnant-checkbox" data-toggle="toggle" data-on="Yes" data-off="No" data-size="lg">
                </div>
            </div> <!-- ./ Question Row -->

        </div>
        <!-- ./ RAF Section -->

        <div id="submit_raf_action_area">

            <div class="form-group">

                <button type="button" id="submit_raf_btn" class="btn-colour-blue"> Continue </button>

            </div>

        </div>

    </form>
</div>


<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
<script>
    $(document).on("change", "#pregnant-checkbox", function () {
        if (document.getElementById('pregnant-checkbox').checked) {
            $("#medicine_raf_pregnant_or_breastfeeding_ew_error_div").removeClass("d-none");
            $("#submit_raf_btn").addClass("d-none");
        }
        else {
            $("#medicine_raf_pregnant_or_breastfeeding_ew_error_div").addClass("d-none");
            $("#submit_raf_btn").removeClass("d-none");
        }
    });

    $(document).on("change", "#conditions-checkbox", function () {
        if (document.getElementById('conditions-checkbox').checked) {
            $("#medicine_raf_medical_conditions_text_div").removeClass("d-none");
        }
        else {
            $("#medicine_raf_medical_conditions_text_div").addClass("d-none");
        }
    });

    $(document).on("change", "#medicine-checkbox", function () {
        if (document.getElementById('medicine-checkbox').checked) {
            $("#medicine_raf_currently_taking_any_medication_text_div").removeClass("d-none");
        }
        else {
            $("#medicine_raf_currently_taking_any_medication_text_div").addClass("d-none");
        }
    });

    $(document).on("click", "#submit_raf_btn", function (event) {
        event.stopImmediatePropagation();
        event.preventDefault();
        let formData = new FormData(document.getElementById("maf-form"));
        formData.append('pregnant_status', document.getElementById('pregnant-checkbox').checked ? "1" : "0");
        formData.append('condition_status', document.getElementById('conditions-checkbox').checked ? "1" : "0");
        formData.append('medicine_status', document.getElementById('medicine-checkbox').checked ? "1" : "0");
        console.log('submit');
        $.ajax({
            url: "/cart/add-with-form",
            type: 'POST',
            processData: false,
            contentType: false,
            data: formData,
            beforeSend: function(result) {
                $(".maf-form-errors").empty();
                $('.maf-form-errors').addClass("d-none");
            },
            success: function( response ) {
                $("#cart-header-nav").html(response.view);
                $("#model-content-div").empty();
                $(".online-pharmacy-shop-modal").modal("hide");

                console.log(response)
                 location.reload();

                if (response && response.reload && response.reload == 1)
                    location.reload();
            },
            error: function (xhr) {
                let new_html = "";
                $.each(xhr.responseJSON.errors, function(key, item) {
                    new_html += '<li> '+ item +' </li>';

                });
                $('.maf-form-errors').html(new_html)
                $('.maf-form-errors').removeClass("d-none");
            }
        });
    })
</script>

