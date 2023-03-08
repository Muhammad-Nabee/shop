@if(!isset($_COOKIE['acceptedCookie']))

    <div class="cookie-message" id="cookie_info">

        <div class="pull-left btn-block cookie_info_bar">

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-5">
                    <p>
                        This website uses cookies to ensure you get the best experience on our website.
                        <a href="{{ asset('/page/cookie-policy') }}"> More info</a>
                    </p>
                </div>

                <div class="col-md-1">
                    <form action="{{ route('accept.cookies') }}" method="post" id="accept-cookies">
                        @csrf
                        <button type="submit" class="btn btn-success" style="cursor: pointer;">Okay</button>
                    </form>
                </div>
            </div>

        </div>

    </div>

    <script>
        $('#accept-cookies').on('submit',
            function (event) {
                event.preventDefault();
                if(event.keyCode == 13) {
                    return false;
                }

                let url      = $(this).attr('action');
                let method   = $(this).attr('method');
                let formData = new FormData(this);

                $.ajax({

                    type: method,
                    url: url,
                    processData: false,
                    contentType: false,
                    data: formData,

                    beforeSend: function(result) {
                        $('#cookie_info').css("display","none");
                    },

                    success: function(response) {},

                    error: function(xhr, status, error) {}
                }); // $.ajax

            }
        );

    </script>

@endif

