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
