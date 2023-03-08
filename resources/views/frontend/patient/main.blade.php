@extends('frontend.master')
@section('style')
    <link href="https://callthedoc.co.uk/assets/css/jquery.fancybox.css" rel="stylesheet">
@stop
@section('content')
    <div id="mm-0" class="mm-page mm-slideout">
        <div id="page">
            <!-- PAGE CONTENTS -->
            <main class="bg_gray">
                <div class="container margin_60_35">
                    <div class="row small-gutters">
                    <div class="col-md-3 mb-4">
                        <div class="card">
                          <div class="card-header bg-white">
                                <h5 class="card-title mb-0">Menu</h5>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="{{url('patient-dashboard')}}"><i class="ti-shopping-cart-full mr-2"></i> My Orders</a></li>
                            <li class="list-group-item"><a href="{{url('patient-profile-settings')}}"><i class="ti-settings mr-2"></i> Profile Settings</a></li>
                            <li class="list-group-item"><a href="{{url('gp-details')}}"><i class="ti-support mr-2"></i> GP Details</a></li>
                            <li class="list-group-item"><a href="{{url('change-password')}}"><i class="ti-key mr-2"></i> Change Password</a></li>
                            <li class="list-group-item"><a href="{{url('delete-account')}}"><i class="ti-close mr-2"></i> Delete Account </a></li>
                            <li class="list-group-item"><a href="{{url('/logout')}}"><i class="ti-power-off mr-2"></i> Logout  </a></li>
                          </ul>
                        </div>
                    </div>
                    <!-------  Dynamic Content  ----------->
                        @yield('patient-content')
                    <!------   Dynamic Content  ----------->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </main>
        </div>
    </div>
@stop()
@section('scripts')
    <script src="https://callthedoc.co.uk/assets/js/jquery.fancybox.js"></script>
@stop
