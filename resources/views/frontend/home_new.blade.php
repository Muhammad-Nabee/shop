@extends('frontend.master_new')
@section('title', 'Home')
@section('content')

<!-- START SECTION BANNER -->
<div class="banner_section slide_wrap shop_banner_slider staggered-animation-wrap">
    <div id="carouselExampleControls" class="carousel slide carousel-fade light_arrow" data-bs-ride="carousel">
        <div class="carousel-inner">

       @foreach($banners as $banner)
            <div class="carousel-item @if($loop->index == 0) active @endif background_bg" data-img-src="{{url('storage/banner/'.$banner->image)}}">
                <div class="banner_slide_content banner_content_inner">
                  <div class="container">
                      <div class="row">
                            <div class="col-lg-6 col-md-8 col-sm-9 col-10">
                                <div class="banner_content2">
                                  {!! $banner->description !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach

         {{--    <div class="carousel-item background_bg" data-img-src="{{asset('new/assets/images/banner7.jpg')}}">
                <div class="banner_slide_content banner_content_inner">
                  <div class="container">
                      <div class="row">
                            <div class="col-lg-6 col-md-8 col-sm-9 col-10">
                                <div class="banner_content2">
                                    <h5 class="mb-2 mb-sm-3 staggered-animation font-weight-light" data-animation="fadeInDown" data-animation-delay="0.2s">Get up to 50% off Today Only!</h5>
                                    <h2 class="staggered-animation" data-animation="fadeInDown" data-animation-delay="0.3s">Wooden  Chair Collection</h2>
                                    <a class="btn btn-border-fill btn-radius staggered-animation text-uppercase" href="shop-left-sidebar.html" data-animation="fadeInUp" data-animation-delay="0.4s">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="carousel-item background_bg" data-img-src="{{asset('new/assets/images/banner9.jpg')}}">
                <div class="banner_slide_content banner_content_inner">
                  <div class="container">
                      <div class="row">
                            <div class="col-lg-6 col-md-8 col-sm-9 col-10">
                                <div class="banner_content2">
                                    <h5 class="mb-2 mb-sm-3 staggered-animation font-weight-light" data-animation="fadeInDown" data-animation-delay="0.2s">Taking your Viewing Experience to Next Level</h5>
                                    <h2 class="staggered-animation" data-animation="fadeInDown" data-animation-delay="0.3s">Living Room Collection</h2>
                                    <a class="btn btn-border-fill btn-radius staggered-animation text-uppercase" href="shop-left-sidebar.html" data-animation="fadeInUp" data-animation-delay="0.4s">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}
        </div>
        <ol class="carousel-indicators indicators_style2">
            <li data-bs-target="#carouselExampleControls" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#carouselExampleControls" data-bs-slide-to="1"></li>
            <li data-bs-target="#carouselExampleControls" data-bs-slide-to="2"></li>
        </ol>
    </div>
</div>
<!-- END SECTION BANNER -->

<!-- END MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION SHIPPING INFO -->
<div class="section small_pb">
    <div class="container">
        <div class="row g-0">
            <div class="col-lg-3 col-sm-6"> 
                <div class="icon_box icon_box_style3">
                    <div class="icon">
                        <i class="flaticon-shipped"></i>
                    </div>
                    <div class="icon_box_content">
                        <h6>Free Delivery</h6>
                        <p>Worldwide</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6"> 
                <div class="icon_box icon_box_style3">
                    <div class="icon">
                        <i class="flaticon-money-back"></i>
                    </div>
                    <div class="icon_box_content">
                        <h6>Money Returns</h6>
                        <p>30 Days money return</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6"> 
                <div class="icon_box icon_box_style3">
                    <div class="icon">
                        <i class="flaticon-support"></i>
                    </div>
                    <div class="icon_box_content">
                        <h6>27/4 Online Support</h6>
                        <p>Customer Support</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6"> 
                <div class="icon_box icon_box_style3">
                    <div class="icon">
                        <i class="flaticon-lock"></i>
                    </div>
                    <div class="icon_box_content">
                        <h6>Payment Security</h6>
                        <p>Safe Payment</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- START SECTION SHIPPING INFO -->

<!-- START SECTION SHOP -->
<div class="section small_pt pb_20">
  <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="heading_s3 text-center">
                <h2>Exclusive Products</h2>
            </div>
            <div class="small_divider clearfix"></div>
        </div>
    </div>
        <div class="row shop_container">
             @foreach($featuredProducts as $product)
                <div class="col-lg-3 col-md-4 col-6">
                    <div class="product_box text-center">
                        <div class="product_img">
                        @foreach($product->media as $media)
                            @if($loop->first)
                                <a href="shop-product-detail.html">
                                    <img src="{{ asset('storage/products/'.$media->media) }}" alt="furniture_img2">
                                </a>
                            @endif
                         @endforeach
                        </div>
                        <div class="product_info">
                            <h6 class="product_title"><a href="{{ $product->seo_url_slug }}">{{ $product->title }}</a></h6>
                            <div class="product_price">
                                <span class="price">AED {{ $product->discount_price }}</span>
                                @if($product->price != $product->discount_price)
                                    <del class="prev-price">AED {{ $product->price }}</del>
                                @endif
                            </div>
                            <?php
                                $countReview = count($product->reviews);  
                                $review_avg = reviewCalculate($product);
                            ?>
                            <div class="rating_wrap">
                                <div class="rating">
                                    <div class="product_rate" style="width:{{$review_avg*20}}%"></div>
                                </div>
                                <span class="rating_num">({{$countReview}})</span>
                            </div>
                            {{--         
                             <div class="pr_desc">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                            </div> --}}

                            <div class="add-to-cart">
                                @if($product->stock_level < 1)
                                    <a href="javascript:;" class="btn btn-fill-out btn-radius"><i class="icon-basket-loaded"></i>Out of Stock</a>
                                @else
                                    <a href="javascript:;" class="btn btn-fill-out btn-radius add-item-to-cart" data-id="{{ $product->id }}"><i class="icon-basket-loaded"></i>Add to cart </a>
                                @endif
                            </div>

                        </div>
                    </div>
                </div>
              @endforeach()
        </div> 
    </div>
</div>
<!-- END SECTION SHOP -->

<!-- START SECTION BANNER --> 
<div class="section pb_20 small_pt">
  <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="heading_s3 text-center">
                    <h2>Top Categories</h2>
                </div>
                <div class="small_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
            @foreach($pageCategories as $pCategory)
                <div class="col-md-4">
                  <div class="single_banner">
                      <img src="{{ asset('storage/category/'.$pCategory->image_1) }}" alt="furniture_banner1">
                        <div class="fb_info">
                             <a href="{{ route('category', ['slug' => $pCategory->seo_url_slug]) }}" class="single_bn_link">
                              <h5 class="single_bn_title1">{{ $pCategory->title }}</h5>
                            </a>
                            {{--<a href="{{ route('category', ['slug' => $pCategory->seo_url_slug]) }}" class="single_bn_link">Shop Now</a>
                             --}}                       
                         </div>
                    </div>
                </div>
            @endforeach()
            {{--     @foreach($pageCategories as $pCategory)
                @if($loop->index == 2)
                <div class="col-md-7">
                  <div class="single_banner">
                      <img src="{{ asset('storage/category/'.$pCategory->image_1) }}" alt="furniture_banner2">
                        <div class="fb_info2">
                            <h3 class="single_bn_title">{{ $pCategory->title }}</h3>
                            <a href="{{ route('category', ['slug' => $pCategory->seo_url_slug]) }}" class="single_bn_link">Shop Now</a>
                        </div>
                    </div>
                </div>
                @endif
            @endforeach() --}}
        </div>
    </div>
</div>
<!-- END SECTION BANNER -->

<!-- START SECTION SHOP -->
{{-- <div class="section small_pt pb_20">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
                <div class="heading_s3 text-center">
                    <h2>Trending items</h2>
                </div>
                <div class="small_divider clearfix"></div>
            </div>
    </div>
        <div class="row">
          <div class="col-md-12">
              <div class="product_slider carousel_slider owl-carousel owl-theme nav_style4" data-loop="true" data-dots="false" data-nav="true" data-margin="30" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                    <div class="item">
                        <div class="product_box text-center">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="new/assets/images/furniture_img1.jpg" alt="furniture_img1">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">enim expedita sed</a></h6>
                                <div class="product_price">
                                    <span class="price">$45.00</span>
                                    <del>$55.25</del>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:80%"></div>
                                    </div>
                                    <span class="rating_num">(21)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="add-to-cart">
                                    <a href="#" class="btn btn-fill-out btn-radius"><i class="icon-basket-loaded"></i> Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="product_box text-center">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="new/assets/images/furniture_img2.jpg" alt="furniture_img2">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">adipisci officia libero</a></h6>
                                <div class="product_price">
                                    <span class="price">$55.00</span>
                                    <del>$95.00</del>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:68%"></div>
                                    </div>
                                    <span class="rating_num">(15)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="add-to-cart">
                                    <a href="#" class="btn btn-fill-out btn-radius"><i class="icon-basket-loaded"></i> Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="product_box text-center">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="new/assets/images/furniture_img3.jpg" alt="furniture_img3">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">Internet tend to repeat</a></h6>
                                <div class="product_price">
                                    <span class="price">$68.00</span>
                                    <del>$99.00</del>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:87%"></div>
                                    </div>
                                    <span class="rating_num">(25)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="add-to-cart">
                                    <a href="#" class="btn btn-fill-out btn-radius"><i class="icon-basket-loaded"></i> Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="product_box text-center">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="new/assets/images/furniture_img4.jpg" alt="furniture_img4">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">Many desktop publishing</a></h6>
                                <div class="product_price">
                                    <span class="price">$69.00</span>
                                    <del>$89.00</del>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:70%"></div>
                                    </div>
                                    <span class="rating_num">(22)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="add-to-cart">
                                    <a href="#" class="btn btn-fill-out btn-radius"><i class="icon-basket-loaded"></i> Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="product_box text-center">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="new/assets/images/furniture_img5.jpg" alt="furniture_img5">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">injected humour repetition</a></h6>
                                <div class="product_price">
                                    <span class="price">$45.00</span>
                                    <del>$55.25</del>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:80%"></div>
                                    </div>
                                    <span class="rating_num">(21)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="add-to-cart">
                                    <a href="#" class="btn btn-fill-out btn-radius"><i class="icon-basket-loaded"></i> Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="product_box text-center">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="new/assets/images/furniture_img6.jpg" alt="furniture_img6">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">randomised humour words</a></h6>
                                <div class="product_price">
                                    <span class="price">$55.00</span>
                                    <del>$95.00</del>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:68%"></div>
                                    </div>
                                    <span class="rating_num">(15)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="add-to-cart">
                                    <a href="#" class="btn btn-fill-out btn-radius"><i class="icon-basket-loaded"></i> Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
</div> --}}
<!-- END SECTION SHOP -->

<!-- START SECTION INSTAGRAM IMAGE -->
{{-- <div class="section small_pt small_pb">
  <div class="container-fluid p-0">
        <div class="row g-0">
          <div class="col-12">
              
              <div class="follow_box">
                    <i class="ti-instagram"></i>
                    <h3>instagram</h3>
                    <span>@shoppingzone</span>
                </div>
              <div class="client_logo carousel_slider owl-carousel owl-theme" data-dots="false" data-margin="0" data-loop="true" data-autoplay="true" data-responsive='{"0":{"items": "2"}, "480":{"items": "3"}, "767":{"items": "4"}, "991":{"items": "6"}}'>
                  <div class="item">
                      <div class="instafeed_box">
                          <a href="#">
                                <img src="new/assets/images/furniture_insta1.jpg" alt="furniture_insta1"/>
                            </a>
                        </div>
                    </div>
                    <div class="item">
                        <div class="instafeed_box">
                          <a href="#">
                                <img src="new/assets/images/furniture_insta2.jpg" alt="furniture_insta2"/>
                            </a>
                        </div>
                    </div>
                    <div class="item">
                        <div class="instafeed_box">
                          <a href="#">
                                <img src="new/assets/images/furniture_insta3.jpg" alt="furniture_insta3"/>
                            </a>
                        </div>
                    </div>
                    <div class="item">
                        <div class="instafeed_box">
                          <a href="#">
                                <img src="new/assets/images/furniture_insta4.jpg" alt="furniture_insta4"/>
                            </a>
                        </div>
                    </div>
                    <div class="item">
                        <div class="instafeed_box">
                          <a href="#">
                                <img src="new/assets/images/furniture_insta5.jpg" alt="furniture_insta5"/>
                            </a>
                        </div>
                    </div>
                    <div class="item">
                        <div class="instafeed_box">
                          <a href="#">
                                <img src="new/assets/images/furniture_insta6.jpg" alt="furniture_insta6"/>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<!-- END SECTION INSTAGRAM IMAGE --> 

<!-- START SECTION CLIENT LOGO -->
<div class="section small_pt">
  <div class="container">
        <div class="row">
          <div class="col-12">
              <div class="client_logo carousel_slider owl-carousel owl-theme" data-dots="false" data-margin="30" data-loop="true" data-autoplay="true" data-responsive='{"0":{"items": "2"}, "480":{"items": "3"}, "767":{"items": "4"}, "991":{"items": "5"}}'>
               @foreach($brands as $brand)
                <div class="item">
                  <div class="cl_logo">
                      <img src="{{ asset('storage/brands/'.$brand->logo) }}" alt="cl_logo"/>
                    </div>
                </div>
                @endforeach()
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION CLIENT LOGO -->

</div>

@stop


