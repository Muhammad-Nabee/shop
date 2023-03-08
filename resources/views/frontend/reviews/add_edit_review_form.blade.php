 <!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Anil z" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Shopwise is Powerful features and You Can Use The Perfect Build this Template For Any eCommerce Website. The template is built for sell Fashion Products, Shoes, Bags, Cosmetics, Clothes, Sunglasses, Furniture, Kids Products, Electronics, Stationery Products and Sporting Goods.">
<meta name="keywords" content="ecommerce, electronics store, Fashion store, furniture store,  bootstrap 4, clean, minimal, modern, online store, responsive, retail, shopping, ecommerce store">

<!-- SITE TITLE -->
<title>Shopwise - eCommerce Bootstrap 5 HTML Template</title>
<!-- Favicon Icon -->
@include("frontend.include.style")
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


</head>

<body>

<!-- LOADER -->
<div class="preloader">
    <div class="lds-ellipsis">
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>

<div class="main_content">



<!-- START SECTION CONTACT -->
<div class="section pt-0">
	<div class="container">
    	<div class="row">
        	<div class="col-lg-12">
            	<div class="heading_s1">
                	<h2>Review</h2>
                </div>

                <div class="field_form">
 @if(Session::has('message'))
<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
@endif
                    <form method="POST" id="add-edit-review-form">

    <div class="row d-none" id="crud_errors_div_rev">

        <div class="col-md-12">

            <div class="alert alert-danger">

                <!-- Contain Dynamic Errors -->
                <ul class="mb-0" id="crud_errors_ul_rev"></ul>

                <!-- Contain Input File Errors -->
                <ul class="mb-0" id="file_error_ul"></ul>

            </div>

        </div>

    </div>

    @csrf()


    <input type="hidden" id="hash_id" name="hash_id" value="{{ !empty($order_detail->hash_id) ? $order_detail->hash_id : '' }}" />

    <div class="row">

        <div class="col-md-12">
            <div class="rating_submit">
                <div class="form-group">
                    <label class="d-block">Overall Rating <span class="text-red">*</span></label>
                   <span class="rating mb-0" required>
                            <input type="radio" class="rating-input" id="5_star" name="rating" value="5"><label for="5_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="4_star" name="rating" value="4"><label for="4_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="3_star" name="rating" value="3"><label for="3_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="2_star" name="rating" value="2"><label for="2_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="1_star" name="rating" value="1"><label for="1_star" class="rating-star"></label>
                    </span>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <label class="form-label">Your Review</label>
                <textarea class="form-control"  name="rating_text" id="rating_text" style="height: 150px;" placeholder="Write your review here" required></textarea>
            </div>
        </div>

    </div>
    <hr />
    <div class="modal-footer">
       <button class="btn btn-success pull-right" type="button" id="add-edit-review-btn">Submit</button>
       <button class="btn btn-secondary close-mod" data-dismiss="modal" type="button">Close</button>
    </div>




</form>
                </div>
            </div>

        </div>
    </div>
</div>


</div>


<a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a>

<!-- Latest jQuery -->
@include("frontend.include.script")
<script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

<script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script type="text/javascript">

    $(document).ready(function(){


        // $("label").click(function(){
        //     $(this).parent().find("label").css({"color": "#005b8f"});
        //     $(this).css({"color": "#f1c40f"});
        //     $(this).nextAll().css({"color": "#f1c40f"});
        // });

        $("label").click(function(){
            $(this).parent().find("label").css({"color": "#D8D8D8"});
            $(this).css({"color": "#7ED321"});
            $(this).nextAll().css({"color": "#7ED321"});
        });

        $('.close-mod').click(function (){
            $('#general_bootstrap_ajax_popup').modal('hide');
        });


        // Save
        $('#add-edit-review-btn').click(function(){

            // var validator = $('#add-edit-review-form').validate();
            // if(validator.form() != false){
            //     // error => false
            //     // $('#register_form')[0].submit();
            // } else {
            //     return false
            //     // error => true
            // } //

            var hash_id = $('#hash_id').val();

            var request_type = (hash_id != '') ? 'POST' : 'POST' ;


            var request_data = new FormData(document.getElementById("add-edit-review-form"));

            $.ajax({

                type: request_type,

                url: '{{url('submit-review')}}',

                processData: false,

                contentType: false,

                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },

                data: request_data,

                beforeSend: function(result) {

                    $("#loader").show();
                    $("#add-edit-review-btn").attr("disabled", true);
                    $('#add-edit-review-btn').html('Loading..');

                    $('#crud_errors_div_rev').addClass('d-none');
                    $('#crud_errors_ul_rev').html('');

                },
                success: function(response) {

                    $("#add-edit-review-btn").attr("disabled", false);
                    $('#add-edit-review-btn').html('Submit');
                    $("#loading").css("display","none");
                    // swal(response);
                    location.reload();
                    $('#loader').delay(2000).hide(100);


                },

                error: function(xhr, status, error) {
                    $('#loader').delay(2000).hide(100);
                    $("#add-edit-review-btn").attr("disabled", false);
                    $('#add-edit-review-btn').html('Submit');
                    mcShowErrorsPost(xhr, status, error);
                }

                // success

            }); // $.ajax

        }); // click => #add-edit-banner-btn

        function mcShowErrorsPost(xhr, status, error){

            if (xhr.status === 500) {

                $.each(xhr.responseJSON.errors, function(key, item) {
                    globalError(item);
                });

            }else{

                $('#crud_errors_div_rev').removeClass('d-none');

                $.each(xhr.responseJSON.errors, function(key, item) {

                    // alert(item);
                    var new_html = '<li> '+ item +' </li>';
                    $('#crud_errors_ul_rev').append(new_html);

                });
            }

        } // function mcShowErrors(xhr, status, error)
    }); // .ready

</script>
</body>
</html>








<style>
    .star_active {
        color: #f1c40f !important;
    }
    /*============================================================================================*/
    /* LEAVE REVIEW PAGE */
    /*============================================================================================*/
    .box_general.write_review {
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        box-shadow: none;
        background-color: #f4f4f4;
        padding-bottom: 25px;
    }
    .box_general.write_review h1 {
        font-size: 28px;
        font-size: 1.75rem;
    }

    .rating {
        display: inline-block;
        position: relative;
    }

    .rating-input {
        display: none;
    }

    .rating:hover .rating-star:hover,
    .rating:hover .rating-star:hover ~ .rating-star,
    .rating-input:checked ~ .rating-star {
        background-position: 0 0;
    }

    .rating-star,
    .rating:hover .rating-star {
        cursor: pointer;
        float: right;
        display: block;
        margin-right: 3px;
        width: 37px;
        height: 37px;
        background: url({{ asset('assets/img/stars.svg')}}) 0 -38px;
    }

    input[type=file] {
        background-color: #fff;
        border: 1px solid #dddddd;
        padding: 5px;
        height: auto;
        color: #999;
        border-radius: 3px;
    }

    .latest_review > h4 {
        font-weight: 500;
        font-size: 21px;
        font-size: 1.3125rem;
        margin-bottom: 20px;
    }
    .latest_review .review_listing {
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        box-shadow: none;
    }
    .grid_item .rating {
        display: block;
        margin-bottom: 0;
    }

    .rating {
        color: #ccc;
        margin-bottom: 15px;
        display: inline-block;
    }
    .rating i.voted {
        color: #fec348;
    }
    .rating i:before {
        margin: 2px;
    }
    .rating em a {
        display: inline-block;
        color: #999;
        margin-left: 10px;
        text-decoration: underline;
        display: inline-block;
    }
    .rating em a:hover {
        color: #004dda;
    }



}
</style>







{{-- </head>
<body>

 @if(Session::has('message'))
<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
@endif
<form method="POST" id="add-edit-review-form">

    <div class="row d-none" id="crud_errors_div_rev">

        <div class="col-md-12">

            <div class="alert alert-danger">

                <!-- Contain Dynamic Errors -->
                <ul class="mb-0" id="crud_errors_ul_rev"></ul>

                <!-- Contain Input File Errors -->
                <ul class="mb-0" id="file_error_ul"></ul>

            </div>

        </div>

    </div>

    @csrf()


    <input type="hidden" id="hash_id" name="hash_id" value="{{ !empty($order_detail->hash_id) ? $order_detail->hash_id : '' }}" />

    <div class="row">

        <div class="col-md-12">
            <div class="rating_submit">
                <div class="form-group">
                    <label class="d-block">Overall Rating <span class="text-red">*</span></label>
                   <span class="rating mb-0">
                            <input type="radio" class="rating-input" id="5_star" name="rating" value="5"><label for="5_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="4_star" name="rating" value="4"><label for="4_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="3_star" name="rating" value="3"><label for="3_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="2_star" name="rating" value="2"><label for="2_star" class="rating-star"></label>
                            <input type="radio" class="rating-input" id="1_star" name="rating" value="1"><label for="1_star" class="rating-star"></label>
                    </span>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <label class="form-label">Your Review</label>
                <textarea class="form-control" required name="rating_text" id="rating_text" style="height: 150px;" placeholder="Write your review here"></textarea>
            </div>
        </div>

    </div>
    <hr />
    <div class="modal-footer">
       <button class="btn btn-success pull-right" type="button" id="add-edit-review-btn">Submit</button>
       <button class="btn btn-secondary close-mod" data-dismiss="modal" type="button">Close</button>
    </div>




</form>

<script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>

<script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script type="text/javascript">

    $(document).ready(function(){


        // $("label").click(function(){
        //     $(this).parent().find("label").css({"color": "#005b8f"});
        //     $(this).css({"color": "#f1c40f"});
        //     $(this).nextAll().css({"color": "#f1c40f"});
        // });

        $("label").click(function(){
            $(this).parent().find("label").css({"color": "#D8D8D8"});
            $(this).css({"color": "#7ED321"});
            $(this).nextAll().css({"color": "#7ED321"});
        });

        $('.close-mod').click(function (){
            $('#general_bootstrap_ajax_popup').modal('hide');
        });


        // Save
        $('#add-edit-review-btn').click(function(){

            // var validator = $('#add-edit-review-form').validate();
            // if(validator.form() != false){
            //     // error => false
            //     // $('#register_form')[0].submit();
            // } else {
            //     return false
            //     // error => true
            // } //

            var hash_id = $('#hash_id').val();

            var request_type = (hash_id != '') ? 'POST' : 'POST' ;


            var request_data = new FormData(document.getElementById("add-edit-review-form"));

            $.ajax({

                type: request_type,

                url: '{{url('submit-review')}}',

                processData: false,

                contentType: false,

                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },

                data: request_data,

                beforeSend: function(result) {

                    $("#loader").show();
                    $("#add-edit-review-btn").attr("disabled", true);
                    $('#add-edit-review-btn').html('Loading..');

                    $('#crud_errors_div_rev').addClass('d-none');
                    $('#crud_errors_ul_rev').html('');

                },
                success: function(response) {

                    $("#add-edit-review-btn").attr("disabled", false);
                    $('#add-edit-review-btn').html('Submit');
                    $("#loading").css("display","none");
                    // swal(response);
                    location.reload();
                    $('#loader').delay(2000).hide(100);


                },

                error: function(xhr, status, error) {
                    $('#loader').delay(2000).hide(100);
                    $("#add-edit-review-btn").attr("disabled", false);
                    $('#add-edit-review-btn').html('Submit');
                    mcShowErrorsPost(xhr, status, error);
                }

                // success

            }); // $.ajax

        }); // click => #add-edit-banner-btn

        function mcShowErrorsPost(xhr, status, error){

            if (xhr.status === 500) {

                $.each(xhr.responseJSON.errors, function(key, item) {
                    globalError(item);
                });

            }else{

                $('#crud_errors_div_rev').removeClass('d-none');

                $.each(xhr.responseJSON.errors, function(key, item) {

                    // alert(item);
                    var new_html = '<li> '+ item +' </li>';
                    $('#crud_errors_ul_rev').append(new_html);

                });
            }

        } // function mcShowErrors(xhr, status, error)
    }); // .ready

</script> --}}

