@extends('frontend.master') @section('title', 'Signin') @section('style')
<link href="{{ asset('assets/css/td_styles.css')}}" rel="stylesheet">
<style>
.reg-censored {
	color: red !important;
}
</style> @endsection @section('content')
<div class="breadcrumb_section bg_gray page-title-mini">
	<div class="container">
		<!-- STRART CONTAINER -->
		<div class="row align-items-center">
			<div class="col-md-6">
				<div class="page-title">
					<h1>Register</h1> </div>
			</div>
			<div class="col-md-6">
				<ol class="breadcrumb justify-content-md-end">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item"><a href="#">Pages</a></li>
					<li class="breadcrumb-item active">Register</li>
				</ol>
			</div>
		</div>
	</div>
	<!-- END CONTAINER-->
</div>
<!-- START MAIN CONTENT -->
<div class="main_content">
	<!-- START LOGIN SECTION -->
	<div class="login_register_wrap section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-6 col-md-10">
					 @include("frontend.components.messages")
					<div class="login_wrap">
						<div class="padding_eight_all bg-white">
							<div class="heading_s1">
							<h3>Create an Account</h3> </div>
							<form action="{{url('patients/register-process')}}" class="prevent_enter_key" id="register_form" method="post" accept-charset="utf-8"> @csrf
								@csrf
                                <div class="form-group mb-3">
									<input type="text" required="" class="form-control" value="{{old('first_name')}}" name="first_name" placeholder="First Name" id="first_name" required>
								</div>
								<div class="form-group mb-3">
									<input type="text" name="last_name" id="last_name" placeholder="Enter last name" value="{{old('last_name')}}" class="form-control" required>
								 </div>
								<div class="form-group mb-3">
									<input type="email" class="form-control" name="email" value="{{old('email')}}" placeholder="Enter your email" id="email_address_2" value="" required>
								</div>
                                <div class="form-group mb-3">
                                <input type="text" class="form-control" name="address_1" value="{{old('address_1')}}" required="" placeholder="Address *">

								 </div>
                                 <div class="form-group mb-3">
                                <input type="text" class="form-control" name="town_city" value="{{old('town_city')}}" required="" placeholder="City / Town *">
								 </div>
                                 <div class="form-group mb-3">
                                <input class="form-control" required type="text" name="postcode" value="{{old('postcode')}}" placeholder="Postcode / ZIP *">
								 </div>
                                <div class="form-group mb-3">
                                <input class="form-control" required type="text" name="mobile_no" value="{{old('mobile_no')}}" placeholder="Mobile No *">
								 </div>


								<div class="form-group mb-3">
									<input type="password" class="form-control" placeholder="password" id="password" name="password" required pattern="^^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[A-Za-z0-9$%@*&amp;£-]{8,20}$" data-fv-regexp-message="Password must be between 8 to 20 characters with atleast one uppercase, one lowercase and one digit. Allowed characters (Alphabet, Numbers, $%@*&amp;£-)" maxlength="20">
									<p> <small>Digits, alphabets and one capital letter.</small> </p> </div>

								<div class="form-group mb-3">
									<input class="form-control" required="" type="password" name="password_confirmation" placeholder="Confirm Password"> </div>
	                                <?php
		                                $recaptcha_attempt  = globalSettings('recaptcha_attempt');
		                                $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
	                                ?>
	                                @if(attemptCount() > $recaptcha_attempt)
	                                    <div class="form-group">
	                                        @include("frontend.components.re_captcha")
	                                    </div>
	                                @endif
								<div class="form-group mb-3 mt-3">
                                    <input type="hidden" name="is_op_process" value="1" readonly="readonly">
									<button type="submit" class="btn btn-fill-out btn-block">Register</button>
								</div>
							</form>
							<div class="different_login"> <span> or</span> </div>
						{{-- 	<ul class="btn-login list_none text-center">
								<li><a href="#" class="btn btn-facebook"><i class="ion-social-facebook"></i>Facebook</a></li>
							<li><a href="#" class="btn btn-google"><i class="ion-social-googleplus"></i>Google</a></li>
							</ul> --}}
							<div class="form-note text-center">Already have an account? <a href="{{route('customr-login')}}">Log in</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END LOGIN SECTION -->
</div>
<!-- END Main SECTION -->@endsection
