
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Ansonika">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Site Title -->
    <title> @yield('title') </title>
    <meta name="description" content="@yield('description')">
    <meta name="keywords" content="@yield('keywords')">
    <!--favicon -->
    <link rel="shortcut icon" href="@if(!empty($pharmacy_settings)){{ url('storage/pharmacyprofile',$pharmacy_settings->favicon) }} @endif">
    <script>
     var SURL = '';
    </script>
    @include('frontend.include.style')
    @yield('style')

</head>
<body id="body">
    <div class="wrapper">
        @include('frontend.include.header')

        @yield('content')
        <!------------------------   End Content Section  -------------->
        @include("frontend.include.footer")
        <!-- COMMON SCRIPTS -->

            <div class="modal fade online-pharmacy-shop-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" id="model-content-div">
                    </div>
                </div>
            </div>

    </div>

    @include("frontend.include.script")
    <script src="{{ asset('assets/js/system/alert-message.js') }}"></script>
    @yield('scripts')

    <div class="modal" id="general_bootstrap_ajax_popup">
        <div class="modal-dialog modal-md" id="mc-popup-dialog">
              <div class="modal-content">

                  <!-- Modal Header -->
                  <div class="modal-header">
                      <h4 class="modal-title" id="general_bootstrap_ajax_popup_heading"></h4>
                      <button type="button" class="close general_bootstrap_ajax_popup_close_btn close-mod"
                              data-dismiss="modal">&times;</button>
                  </div>

                  <!-- Modal body -->
                  <div class="modal-body" id="general_bootstrap_ajax_popup_body">

                      <div class="row d-none" id="crud_errors_div">

                          <div class="col-md-12">

                              <div class="alert alert-danger">

                                  <!-- Contain Dynamic Errors -->
                                  <ul class="mb-0" id="crud_errors_ul"></ul>

                                  <!-- Contain Input File Errors -->
                                  <ul class="mb-0" id="file_error_ul"></ul>

                              </div>

                          </div>

                      </div>
                      <!-- Contain Dynamic Contents -->
                      <div id="crud_contents"></div>

                  </div>

              </div>
        </div>
    </div>

    <script type="text/javascript">
    $(document).ready(function(){


    $('.medicine_search').keyup(function(e){


        // Accepts all the keys except [ upkey and downkey ]
        if( e.keyCode != 13 && e.keyCode != 38 && e.keyCode != 40 ){

            // Search query string
            var search_query = $(this).val();
            var _this = this;

            var my_id = $(_this).attr("id");

            if(search_query.length >= 2){

                $('.td-auto-suggest-div').removeClass('d-none');

                $.ajax({

                    type: "POST",
                    url: "{{url('search-products')}}",
                    data: {'search_query' : search_query},
                    headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    beforeSend : function(result){
                        //$("#overlay").removeClass("hidden");
                    },

                    success: function(response){
                        if(response != 'empty'){
                            $('.no_record_found_div').addClass('d-none');
                            $('.td_search_results_div').removeClass('d-none');
                            $('.td_search_results_div').html(response);
                        } else {
                            $('.no_record_found_div').removeClass('d-none');
                            $('.td_search_results_div').addClass('d-none');
                            $('.td_search_results_div').html('');
                        } // if(response != 'empty')
                    } // success

                });

            } else {

                $('.td-auto-suggest-div').addClass('d-none');

            } // if(search_query.length >= 2)

        } else { // if keys up or down

            if( e.keyCode == 13){ // enter

                $(".selected").trigger("click");

            } // if( e.keyCode == 13 && $('.vaccination_suggessions li').hasClass("selected") == true )

            if (e.keyCode == 38) { // up Arrow key
                var selected = $(".selected");
                $(".vaccination_suggessions li").removeClass("selected");
                if (selected.prev().length == 0) {
                    selected.siblings().last().addClass("selected");
                } else {
                    selected.prev().addClass("selected");
                }
            }
            if (e.keyCode == 40) { // Down Arrow key

                var selected = $(".selected");
                $(".vaccination_suggessions li").removeClass("selected");

                if (selected.next().length == 0){
                    selected.siblings().first().addClass("selected");
                } else {
                    selected.next().addClass("selected");
                } // if (selected.next().length == 0)

            } // if( e.keyCode == 13 && $('.vaccination_suggessions li').hasClass("selected") == true )

        } // if keys up or down

    }); // End - .VACCINATION SEARCH

}); // ready
</script>
  <script>
      function mcShowErrorsGet(xhr, status, error){

          if (xhr.status === 500) {
              $.each(xhr.responseJSON.errors, function(key, item) {
                  globalError(item);
              });
          }

      } // function mcShowErrors(xhr, status, error)

      function mcShowErrorsPost(xhr, status, error){

          if (xhr.status === 500) {

              $.each(xhr.responseJSON.errors, function(key, item) {
                  globalError(item);
              });

          }else{

              $('#crud_errors_div').removeClass('d-none');

              $.each(xhr.responseJSON.errors, function(key, item) {

                  // alert(item);
                  var new_html = '<li> '+ item +' </li>';
                  $('#crud_errors_ul').append(new_html);

              });
          }

      } // function mcShowErrors(xhr, status, error)

      $("#alert-success").fadeTo(6000, 500).slideUp(900, function(){
          $("#alert-success").slideUp(500);
      });
      $("#alert-success-email").fadeTo(6000, 500).slideUp(900, function(){
          $("#alert-success-email").slideUp(500);
      });
      $("#alert-danger").fadeTo(6000, 500).slideUp(900, function(){
          $("#alert-danger").slideUp(500);
      });
      $("#alert-warn").fadeTo(6000, 500).slideUp(900, function(){
          $("#alert-warn").slideUp(500);
      });
      $("#alert-warn-email").fadeTo(6000, 500).slideUp(900, function(){
          $("#alert-warn-email").slideUp(500);
      });

  </script>

    <script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit" type="text/javascript"></script>

    @if(!isset($_COOKIE['acceptedCookie']))
        @include('frontend.components.cookies')
    @endif

</body>
</html>
