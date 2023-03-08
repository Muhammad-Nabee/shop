$(document).ready(function () {
    // console.clear();

    $.ajax({
        url: "/cart/get",
        type: 'POST',
        beforeSend: function(result) {
            $("#cart-header-nav").html("");
        },
        success: function( response ) {
            $("#cart-header-nav").html(response);
        }
    });

    $(document).on("click", ".add-item-to-cart", function () {
        let itemId = $(this).data("id");

        let qty = $("#product-" + itemId + "-qty").val();


        $.ajax({
            url: "/cart/add",
            type: 'POST',
            data: {
                'item_id': itemId,
                'qty': qty === undefined || qty < 1 ? 1 : qty
            },

            beforeSend: function(result) {
                $("#cart-message").addClass("d-none");
            },
            success: function( response ) {
               window.location.reload();

                // window.scrollTo(0,0);
                // $("#cart-header-nav").html("");
                // $("#cart-header-nav").html(response.view);
                // $("#cart-message").removeClass("d-none");
                // if (response && response.reload && response.reload == 1)

            },
            error: function (errors) {
                if (errors && errors.status && errors.status == 403) {
                    let message = errors.responseJSON && errors.responseJSON.message ? errors.responseJSON.message : "Something went wrong";
                }
            }
        });
    });

    $(document).on("click", ".remove-item-from-cart", function () {
        let itemId = $(this).data("id");
        $.ajax({
            url: "/cart/remove",
            type: 'POST',
            data: {
                'item_id': itemId
            },
            beforeSend: function(result) {
                $("#cart-header-nav").html("");
            },
            success: function( response ) {
                location.reload();
                // $("#cart-header-nav").html(response.view);
            }
        });
    });

})
