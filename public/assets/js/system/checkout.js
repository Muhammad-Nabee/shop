$(document).on("change", ".qty-change", function () {
    let itemId = $(this).data("id");
    let qty = $(this).val();
    $.ajax({
        url: "/cart/add",
        type: 'POST',
        data: {
            'item_id': itemId,
            'qty': qty === undefined || qty < 1 ? 1 : qty,
            'increment': 0
        },
        beforeSend: function(result) {
            // $("#cart-header-nav").html("");
        },
        success: function( response ) {
            if (response.questionnaire && response.questionnaire == 1) {
                $("#model-content-div").empty();
                $("#model-content-div").html(response.view);
                $(".online-pharmacy-shop-modal").modal({
                    backdrop: 'static',
                    keyboard: false,
                    show: true
                });
            }
            else {
                location.reload();
                $("#cart-header-nav").html("");
                $("#cart-header-nav").html(response.view);
            }
        },
        error: function (errors) {
            if (errors && errors.status && errors.status == 403) {
                let message = errors.responseJSON && errors.responseJSON.message ? errors.responseJSON.message : "Something went wrong";
                alert(message)
            }

        }
    });
});

$(document).on("click", ".edit-buyer-details", function () {
    let type = $(this).data("type");
    $("#exampleModalLongTitle").text(toTitleCase(`Update ${type} Address`));
    switch (type) {
        case 'delivery':
            $("#delivery-address").removeClass("d-none");
            $("#billing-address").addClass("d-none");
            break;
        case 'billing':
            $("#delivery-address").addClass("d-none");
            $("#billing-address").removeClass("d-none");
            break;
    }
    $("#checkout-address-modal").modal("show");
});

$(document).on("submit", "#edit-address-form", function (event) {
    event.preventDefault();
    let formData = new FormData(document.getElementById("edit-address-form"));
    let action = $(this).attr("action");
    $.ajax({
        type: "POST",
        url: action,
        processData: false,
        contentType: false,
        data: formData,
        beforeSend: function(result) {
            $("#form-validation").empty();
            $("#form-validation").addClass("d-none");
        },
        success: function(response) {
            if (response && response.reload && response.reload == 1)
                location.reload();
        },

        error: function(xhr, status, error) {
            $("#form-validation").removeClass("d-none");
            let new_html = "";
            $.each(xhr.responseJSON.errors, function(key, item) {
                new_html += '<li> '+ item +' </li>';
            });
            $('#form-validation').append(new_html);
        }

    }); // $.ajax

});

function toTitleCase(str) {
    return str.replace(/\w\S*/g, function(txt){
        return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
    });
}
