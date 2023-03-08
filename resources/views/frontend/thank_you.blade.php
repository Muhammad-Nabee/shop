@extends('frontend.master')
@section('title', 'Thank You')
@section('style')
    <link href="{{ asset('assets/theme_assets/css/checkout.css')}}" rel="stylesheet">
@endsection
@section('content')
      <div class="main-page-banner ptb-45">
        <div class="container">
            <div class="row">
                    <div class="col-md-8 mt-6 offset-2">
                        {!! getPageSection('order-completed-message') !!}
                    </div>
            </div>

        </div>
        <!-- Container End -->
</div>
   {{--  <div id="mm-0" class="mm-page mm-slideout">
        <div id="page">

            <!-- PAGE CONTENTS -->
            <main class="bg_gray">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-5">
                            <div id="confirm">
                                <div class="icon icon--order-success svg add_bottom_15">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="72" height="72">
                                        <g fill="none" stroke="#8EC343" stroke-width="2">
                                            <circle cx="36" cy="36" r="35" style="stroke-dasharray:240px, 240px; stroke-dashoffset: 480px;"></circle>
                                            <path d="M17.417,37.778l9.93,9.909l25.444-25.393" style="stroke-dasharray:50px, 50px; stroke-dashoffset: 0px;"></path>
                                        </g>
                                    </svg>
                                </div>
                                <h2>Order completed!</h2>
                                <p>You will receive a confirmation email soon!</p>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->

            </main>
            <!--/main-->
        </div>
    </div> --}}

@endsection()
