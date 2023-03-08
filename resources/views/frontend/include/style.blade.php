
<!-- jquery-ui CSS -->
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<!-- Style CSS -->
<!-- Animation CSS -->
<link rel="stylesheet" href="{{ asset('new/assets/css/animate.css')}}"> 
<!-- Latest Bootstrap min CSS -->
<link rel="stylesheet" href="{{ asset('new/assets/bootstrap/css/bootstrap.min.css')}}">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet"> 
<!-- Icon Font CSS -->
<link rel="stylesheet" href="{{ asset('new/assets/css/all.min.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/css/ionicons.min.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/css/themify-icons.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/css/linearicons.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/css/flaticon.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/css/simple-line-icons.css')}}">
<!--- owl carousel CSS-->
<link rel="stylesheet" href="{{ asset('new/assets/owlcarousel/css/owl.carousel.min.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/owlcarousel/css/owl.theme.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/owlcarousel/css/owl.theme.default.min.css')}}">
<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="{{ asset('new/assets/css/magnific-popup.css')}}">
<!-- Slick CSS -->
<link rel="stylesheet" href="{{ asset('new/assets/css/slick.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/css/slick-theme.css')}}">
<!-- Style CSS -->
<link rel="stylesheet" href="{{ asset('new/assets/css/style.css')}}">
<link rel="stylesheet" href="{{ asset('new/assets/css/responsive.css')}}">
<link rel="stylesheet" href="{{ asset('assets/css/jquery-ui.css')}}">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" integrity="sha512-f8gN/IhfI+0E9Fc/LKtjVq4ywfhYAVeMGKsECzDUHcFJ5teVwvKTqizm+5a84FINhfrgdvjX8hEJbem2io1iTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
    .error {
        color: red;
    }
    .star_active {
        color: #f1c40f !important;
    }
    .star_in_active {
        color: #474545 !important;
    }
    span.custom-font-size {
        font-size: 11px;
    }
    .clearfix.add_bottom_10 {
        font-size: 8px !important;
    }
    .rating-box {
        font-size: 25px;
    }
</style>

@if(!isset($_COOKIE['acceptedCookie']))
    <link rel="stylesheet" href="{{ asset('/assets/css/cookies.css') }}">
@endif
