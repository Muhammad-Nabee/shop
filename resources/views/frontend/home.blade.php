@extends('frontend.master')
@section('title', 'Home')
@section('content')


    
    <div class="main-page-banner ptb-30">

    <div class="container">

          @if (Session::has('news-success'))
                <div class="alert alert-success alert-dismissible fade show" id="alert-success" role="alert">
                    <span>{!! Session::get('news-success') !!}</span>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            @if (Session::has('news-failure'))
                <div class="alert alert-warning alert-dismissible fade show" id="alert-danger" role="alert">
                    <span>{!! Session::get('news-failure') !!}</span>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

        <div class="row">
            <!-- Slider Area Start Here -->
            <div class="col-xl-9 col-lg-12">
                <div class="slider-wrapper theme-default">
                    <!-- Slider Background  Image Start-->
                    <div id="slider" class="nivoSlider">
                        @foreach($banners as $banner)
                            <a href="javascript:;"><img src="{{url('storage/banner/'.$banner->image)}}" data-thumb="{{url('storage/banner/'.$banner->image)}}" alt="" title="#htmlcaption{{ $loop->index }}" />
                            </a>
                        @endforeach
                    </div>
                    <div class="slider-progress"></div>
                </div>
            </div>
            <!-- Slider Area End Here -->
            <!-- Right Slider Banner Start Here -->
            <div class="col-xl-3 col-lg-12">
                <div class="right-sider-banner">
                    @foreach($bannerCategories as $bannerCategory)
                        <div class="single-banner">
                            <a href="{{ route('category', ['slug' => $bannerCategory->seo_url_slug])}}">
                                <img src="{{ asset('storage/category/'.$bannerCategory->image_1)}}" alt="{{ $bannerCategory->title }}">
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
            <!-- Right Slider Banner End Here -->
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>

    <div class="support-area pb-45">
    <div class="container">
        <div class="col-sm-12">
            <div class="row justify-content-md-between justify-content-sm-start">
                <div class="single-support d-flex align-items-center">
                    <div class="support-icon">
                        <i class="ion-android-time"></i>
                    </div>
                    <div class="support-desc">
                        <h6>Mon - Fri / {{ $pharmacy_opening_hour->mon_open_time.' - '.$pharmacy_opening_hour->fri_close_time }}</h6>
                        <span>Working Days/Hours!</span>
                    </div>
                </div>
                @if(!empty($pharmacy_info->contact_number_p))
                    <div class="single-support d-flex align-items-center">
                        <div class="support-icon">
                            <i class="ion-iphone"></i>
                        </div>
                        <div class="support-desc">
                            <h6>{{ $pharmacy_info->contact_number_p }}</h6>
                            <span>Free support line!</span>
                        </div>
                    </div>
                @endif
                @if(!empty($pharmacy_info->email_address_primary))
                <div class="single-support d-flex align-items-center">
                    <div class="support-icon">
                        <i class="ion-ios-email-outline"></i>
                    </div>
                    <div class="support-desc">
                        <h6>{{ $pharmacy_info->email_address_primary }}</h6>
                        <span>Orders Support!</span>
                    </div>
                </div>
                @endif
            </div>
            <!-- Row End -->
        </div>
    </div>
    <!-- Container End -->
</div>

<div class="hot-deal-products pb-45">
<div class="container">
    <!-- Post Title Start -->
    <div class="post-title">
        <h2>Featured products</h2>
    </div>
    <!-- Post Title End -->

    <div class="row">

        @foreach($featuredProducts as $product)

            <div class="col-md-3 mb-3">

                <div class="card">

                    <div class="card-body">
                        <a href="{{ $product->seo_url_slug }}" class="text-normal">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    @foreach($product->media as $media)
                                        @if($loop->first)
                                            <img src="{{ asset('storage/products/'.$media->media) }}" class="img-fluid featured-image" alt="{{ @$product->seoSetting->meta_title }}" />
                                            @break
                                        @endif
                                    @endforeach
                                </div>

                                <div class="col-md-12 text-center mt-3 mb-3">
                                    <div class="prod-details-text">{{ $product->title }}</div>
                                </div>

                                <div class="col-md-12 text-center">
                                    <p>
                                        <span class="price">£{{ $product->discount_price }}</span>
                                        @if($product->price != $product->discount_price)
                                            <del class="prev-price">£{{ $product->price }}</del>
                                        @endif
                                    </p>
                                    <div class="product-rating">
                                        <?php $review_avg = reviewCalculate($product); ?>
                                        @for($i = 1; $i <= 5; $i++)
                                            <i class="fa fa-star {{($i <= $review_avg) ? 'star_active' : 'star_in_active'}}"></i>
                                        @endfor
                                    </div>

                                </div>
                            </div>
                        </a>
                        <div class="row">
                            <div class="col-md-12 text-center mt-4 mb-3">
                                @if($product->stock_level < 1)
                                    <p>
                                        <span class="in-stock">
                                            <span class="text-danger">Out of Stock</span>
                                        </span>
                                    </p>
                                @else
                                    <a href="javascript:;" class="btn-outline-pink add-item-to-cart" data-id="{{ $product->id }}"><i class="fa fa-cart-plus mr-2"></i>Add to cart </a>
                                @endif
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        @endforeach

    </div>



</div>
<!-- Container End -->
</div>


    <div class="multiple-banner multi-banner-style-two pb-45">
        <div class="container">
            <div class="row">
            @php
                $specialCateg = \App\Models\ProductCategory::find(\App\Models\ProductCategory::PAGE_BANNER);
            @endphp

            <!-- Single Banner Start -->
                <div class="col-md-4">
                    @foreach($pageCategories as $pCategory)
                        @if($loop->index < 2)
                           <div class="single-banner mb-30">
                               <a href="{{ route('category', ['slug' => $pCategory->seo_url_slug]) }}"><img src="{{ asset('storage/category/'.$pCategory->image_1) }}" alt="{{ $pCategory->title }}">
                                </a>
                            </div>
                        @endif
                    @endforeach
                </div>

                @if(!empty($specialCateg))
                    <div class="col-md-4">
                        <!-- Single Banner Start -->
                        <div class="single-banner mt-sm-30">
                            <a href="{{ route('category', ['slug' => $specialCateg->seo_url_slug]) }}"><img src="{{ asset('storage/category/'.$specialCateg->image_1) }}" alt="{{ $specialCateg->title }}"></a>
                        </div>
                        <!-- Single Banner End -->
                    </div>
                @endif

                <div class="col-md-4">
                    @foreach($pageCategories as $pCategory)
                        @if($loop->index > 1)
                            <div class="single-banner mb-30">
                                <a href="{{ route('category', ['slug' => $pCategory->seo_url_slug]) }}"><img src="{{ asset('storage/category/'.$pCategory->image_1) }}" alt="{{ $pCategory->title }}"></a>
                            </div>
                        @endif
                    @endforeach
                </div>

            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>

    <div class="main-brand-banner pb-45">
        <div class="container">
            <!-- Brand Banner Start -->
            <div class="brand-banner owl-carousel">
                @foreach($brands as $brand)
                    <div class="single-brand">
                        <a href="javascript:;"><img class="img-fluid brand-image" src="{{ asset('storage/brands/'.$brand->logo) }}" alt="brand-image"></a>
                    </div>
                @endforeach
            </div>
            <!-- Brand Banner End -->
        </div>
        <!-- Container End -->
    </div>

@stop


