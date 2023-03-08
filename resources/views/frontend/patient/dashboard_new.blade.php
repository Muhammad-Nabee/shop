@extends('frontend.master')
@section('title', 'Dashboard')
@section('style')
@stop
@section('content')
<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1>My Account</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active">My Account</li>
                </ol>
            </div>
        </div>
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->
<!-- START SECTION SHOP -->
<div class="section">
	<div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <div class="dashboard_menu">
                    <ul class="nav nav-tabs flex-column" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="dashboard-tab" data-toggle="tab" href="{{url('patient-dashboard')}}" role="tab" aria-controls="dashboard" aria-selected="false"><i class="ti-layout-grid2"></i>Dashboard</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="orders-tab" data-toggle="tab" href="{{url('patient-dashboard')}}" role="tab" aria-controls="orders" aria-selected="false"><i class="ti-shopping-cart-full"></i>My Orders</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="address-tab" data-toggle="tab" href="{{url('patient-profile-settings')}}" role="tab" aria-controls="address" aria-selected="true"><i class="ti-location-pin"></i>Profile</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="account-detail-tab" data-toggle="tab" href="{{url('patient-address')}}" role="tab" aria-controls="account-detail" aria-selected="true"><i class="ti-id-badge"></i>Address</a>
                      </li>
                       <li class="nav-item">
                        <a class="nav-link" id="account-detail-tab" data-toggle="tab" href="{{url('change-password')}}" role="tab" aria-controls="account-detail" aria-selected="true"><i class="fa fa-key" aria-hidden="true"></i>Change Password</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="{{url('logout')}}"><i class="ti-lock"></i>Logout</a>
                      </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9 col-md-8">
                <div class="tab-content dashboard_content">
                  	<div class="tab-pane fade active show" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
                    	<div class="card">
                             @yield('patient-content')
                        </div>
                  	</div>
				</div>
			</div>
		</div>
	</div>
</div>






<!-- END MAIN CONTENT -->

{{-- </div>
    <div class="log-in ptb-45">
        <div class="container">
            <div class="row">

                <!-- Returning Customer Start -->
                <div class="col-md-3 mx-auto">

                        <div class="card">
                          <div class="card-header bg-white">
                                <h5 class="card-title mb-0 ml-2 p-2">Menu</h5>
                          </div>
                          <ul class="list-group list-group-flush">

                            <li  class="list-group-item"><a href="{{url('patient-dashboard')}}" > My Orders </a></li>
                            <li  class="list-group-item"><a href="{{url('patient-profile-settings')}}">Profile</a></li>
                            <li  class="list-group-item"><a href="{{url('patient-address')}}">Address</a></li>
                            <li  class="list-group-item"> <a href="{{url('change-password')}}">Change Password </a></li>
                            <li  class="list-group-item"><a href="{{url('logout')}}">Logout</a></li>


                          </ul>
                        </div>
                </div>
                <!-- Returning Customer End -->

                <!-- Returning Customer Start -->

                <div class="col-md-9 mx-auto">
                    <div class="well">
                        @yield('patient-content')
                    </div>
                </div>

                <!-- Returning Customer End -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div> --}}

@stop
