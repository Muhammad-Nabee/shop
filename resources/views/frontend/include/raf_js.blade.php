  <script type="text/javascript">
        
        $(document).ready(function(){

            $('input[type="radio"]').change(function(){

                var _this = this;

                var name = $(this).attr('name');
                var value = $(this).val();

                var error_type  = $(this).attr('data-error-type');
                var data_action = $(this).attr('data-action');
                let category_id = $('#category_id').val();
                
                $.ajax({

                      headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                      },
                      type: "POST",
                      url: "{{ url('treatments/save-raf-option') }}",
                      data: {'raf_for_category_id' : category_id, 'name' : name, 'value' : value},

                      beforeSend : function(result){
                          //$("#overlay").removeClass("hidden");
                      },
                      success: function(response){

                        $(_this).parent().parent().parent().parent().find('.td-required-message').addClass('d-none');

                            if(error_type == 'error'){

                                if(data_action == 'show'){

                                    $(_this).parent().parent().parent().parent().find('.td-error-message').removeClass('d-none');

                                } else if(data_action == 'hide'){

                                    $(_this).parent().parent().parent().parent().find('.td-error-message').addClass('d-none');

                                } // if(data_action == 'show')

                            } else if(error_type == 'warning'){

                                if(data_action == 'show'){

                                    $(_this).parent().parent().parent().parent().find('.td-warning-message').removeClass('d-none');

                                } else if(data_action == 'hide'){

                                    $(_this).parent().parent().parent().parent().find('.td-warning-message').addClass('d-none');

                                } // if(data_action == 'show')

                            } else if(error_type == 'subq'){

                              var sub_q_name = $(_this).attr('data-subq-name');
                              
                              if(data_action == 'show'){

                                $('#'+sub_q_name+'_row').removeClass('d-none');

                                 ///////////////////// SHOW => RESET SUB QUESTION STATUS /////////////////////
                                
                                 $('#'+sub_q_name+'_row').find('input[name="'+sub_q_name+'"]').addClass('required-question');
                                 $('#'+sub_q_name+'_row').find('input[name="'+sub_q_name+'"]:checked').trigger('change');
                                 $('#'+sub_q_name+'_row').find('.req-msg-div').addClass('td-required-message');

                                 // alert( $('#'+sub_q_name+'_row').find('input[name="'+sub_q_name+'"]:checked').val() );
                                 ///////////////////// SHOW => RESET SUB QUESTION STATUS /////////////////////

                              } else if(data_action == 'hide'){

                                 $('#'+sub_q_name+'_row').addClass('d-none');

                                 ///////////////////// HIDE => RESET SUB QUESTION STATUS /////////////////////
                              
                                 $('#'+sub_q_name+'_row').find('.error-item').addClass('d-none');
                                 $('#'+sub_q_name+'_row').find('input[name="'+sub_q_name+'"]').removeClass('required-question');

                                 // alert( $('input[name="'+name+'"]:checked').val() );
                                 ///////////////////// HIDE => RESET SUB QUESTION STATUS /////////////////////
                                 
                              } // if(data_action == 'show')

                        } // if( error_type == 'error' )

                      } // success

                }); // $.ajax

            }); // click => question-item-radio

        }); // ready


        // Start => function validate_raf()
        function validate_raf(){

            var required_question_arr = [];

            $(".required-question").each(function(k, el) {
                required_question_arr.push( $(el).attr('name') );
            });

            $(required_question_arr).each(function(key, val) {
                if( $( 'input[name="'+val+'"]:checked' ).val() != undefined ){
                    // checked
                    $( 'input[name="'+val+'"]' ).parent().parent().parent().parent().find('.td-required-message').addClass('d-none');
                } else {
                    // Not checked
                    // console.log( $( 'input[name="'+val+'"]' ).attr('id') );
                    $( 'input[name="'+val+'"]' ).parent().parent().parent().parent().find('.td-required-message').removeClass('d-none');
                } // if( $( 'input[name="'+val+'"]:checked' ).val() != undefined )
            }); // each

            var first_error_item_object;

            $(".error-item").each(function(k, el) {
                if( $(el).hasClass('d-none') == false ){
                    first_error_item_object = $(el).attr('id');
                    return false;
                } // if( $(el).hasClass('d-none') == false )
            });

            $.scrollTo($('#'+first_error_item_object).parent().parent().parent().parent(), 1000);

            // alert(first_error_item_object);

            if(first_error_item_object == undefined){
                return 'success';
            } else {
                return 'error';
            } // if(first_error_item_object == undefined)
            
        } // End => function validate_raf()

 </script>