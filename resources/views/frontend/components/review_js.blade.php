<script type="text/javascript">
      $(document).ready(function(){
         let product_id = $('#product_id').val();
         getReview(product_id,0);
        //  $.ajax({
        //     type: "get",
        //     url: "{{url('get-reviews')}}",
        //     // processData: false,
        //     // contentType: false,
        //     headers: {
        //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //     },
        //     data:{product_id:product_id,paginate_number:0},
        //     beforeSend: function(result) {
        //     },
        //     success: function(response) {
        //        $('#reviews').html(response.html_data);
        //     }, // success
        //     error: function(xhr, status, error) {

        //     }
        // }); // $.ajax
      });
  </script>

  <script type="text/javascript">
        $(document).ready(function(){
          $('#load-more-review').click(function(){
            let paginate_number = $('#paginate_number').val();
            paginate_number=parseInt(paginate_number)+1
            let product_id = $('#product_id').val();
            getReview(product_id,paginate_number);
          });
        });
        function getReview(product_id,paginate_number){
         $.ajax({
            type: "get",
            url: "{{url('get-reviews')}}",
            // processData: false,
            // contentType: false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data:{product_id:product_id,'paginate_number':paginate_number},
            beforeSend: function(result) {
            },
            success: function(response) {
              $("#paginate_number").val(paginate_number);
              $("#reviews").append(response.html_data);
              if(response.next_review_count < 1){
                 $("#load-more-review").css("display", "none");
              }
            }, // success
            error: function(xhr, status, error) {
            }
          }); // $.ajax
        }

    </script>
