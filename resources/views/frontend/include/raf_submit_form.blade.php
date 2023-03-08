 <script>

      $('#raf_submit_btn').click(function(){
        // Step 1 => Validate required fields
        var response = validate_raf();
        // alert(response);
        if(response == 'success'){
          if( $('#i_agree').prop('checked') == false ){
            $('#i_agree_err_msg').removeClass('d-none');
          } else if( $('#i_agree').prop('checked') == true ){
            $('#i_agree_err_msg').addClass('d-none');
            // alert('Going to submit!');
            $('#raf_frm')[0].submit();
          } // if( $('#i_agree').prop('checked') == false )
        } // if(response == 'success')
      }); // click => raf_submit_btn

      $('#i_agree').change(function(){
        if( $(this).prop('checked') == true ){
          $('#i_agree_err_msg').addClass('d-none');
        } else {
          $('#i_agree_err_msg').removeClass('d-none');
        } // if( $(this).prop('checked') == true )
      }); // change => i_agree

      ///////////// SAXENDA RAF FUNCTIONS //////////
      $('#special_case_raf_submit_btn').click(function(){
        // Step 1 => Validate required fields
        var response = validate_raf();
        if(response == true){
          $('#special_case_raf_frm')[0].submit();
        } // if(response == 'success')
      }); // click => special_case_raf_submit_btn

  </script>