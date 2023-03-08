@extends('frontend.master')

@section('title', @$product->seoSetting->meta_title)
@section('keywords', @$product->seoSetting->meta_keywords)
@section('description', @$product->seoSetting->meta_description)

@section('content')

    <!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="page-title">
                    <h1>Product Detail</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    @foreach($breadcrumbs as $key => $breadcrumb)
                        <li class="breadcrumb-item">
                         <a href="{{url('chemist',$breadcrumb->seo_url_slug)}}">{{ $breadcrumb->title }}</a>
                       </li>
                    @endforeach
                    <li class="breadcrumb-item active"> {{ $product->title }}</li>
                </ol>
            </div>
        </div>
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION SHOP -->
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 mb-4 mb-md-0">
              <div class="product-image">
                    <div class="product_img_box">
                        <img id="product_img" src='{{ asset('storage/products/'.$product->media[0]->media) }}' data-zoom-image="{{ asset('storage/products/'.$product->media[0]->media) }}" alt="product_img1" />
                        <a href="#" class="product_img_zoom" title="Zoom">
                            <span class="linearicons-zoom-in"></span>
                        </a>
                    </div>
                    <div id="pr_item_gallery" class="product_gallery_item slick_slider" data-slides-to-show="4" data-slides-to-scroll="1" data-infinite="false">

                        @if(count($product->media) > 0)
                            @foreach($product->media as $media)
                                {{--       <div id="thumb{{$loop->index}}" class="tab-pane fade show {{$loop->first ? 'active' :'' }}">
                                    <a data-fancybox="images" href="{{ asset('storage/products/'.$media->media) }}">
                                        <img src="{{ asset('storage/products/'.$media->media) }}" class="product-custom-image" alt="{{ @$product->seoSetting->meta_title }}">
                                    </a>
                                </div>
                                --}}
                                <div class="item">
                                    <a href="#" class="product_gallery_item {{$loop->first ? 'active' :'' }}" data-image="{{ asset('storage/products/'.$media->media) }}" data-zoom-image="{{ asset('storage/products/'.$media->media) }}">
                                        <img src="{{ asset('storage/products/'.$media->media) }}" alt="product_small_img1" alt="{{ @$product->seoSetting->meta_title }}"/>
                                    </a>
                                </div>
                            @endforeach
                        @endif

               {{--          <div class="item">
                            <a href="#" class="product_gallery_item active" data-image="assets/images/product_img1.jpg" data-zoom-image="assets/images/product_zoom_img1.jpg">
                                <img src="assets/images/product_small_img1.jpg" alt="product_small_img1" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="product_gallery_item" data-image="assets/images/product_img1-2.jpg" data-zoom-image="assets/images/product_zoom_img2.jpg">
                                <img src="assets/images/product_small_img2.jpg" alt="product_small_img2" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="product_gallery_item" data-image="assets/images/product_img1-3.jpg" data-zoom-image="assets/images/product_zoom_img3.jpg">
                                <img src="assets/images/product_small_img3.jpg" alt="product_small_img3" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="product_gallery_item" data-image="assets/images/product_img1-4.jpg" data-zoom-image="assets/images/product_zoom_img4.jpg">
                                <img src="assets/images/product_small_img4.jpg" alt="product_small_img4" />
                            </a>
                        </div> --}}
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="pr_detail">
                    <div class="product_description">
                        <h4 class="product_title">{{ $product->title }}</h4>
                        <div class="product_price">
                            @if($product->price != $product->discount_price)
                               <del>AED{{ $product->discount_price }}</del>
                            @ENDIF
                            <span class="price">AED{{ $product->price }}</span>
                            @if($product->price != $product->discount_price)
                                <div class="on_sale"> <span>save {{ round($product->save_percent) }}%</span>
                                </div>
                            @endif
                        </div>
                        <div class="rating_wrap">
                        <?php $countReview = count($product->reviews);  ?>
                        <?php
                            $review_avg = reviewCalculate($product);
                            $review_avg = $review_avg * 20;
                        ?>

                        <div class="rating">
                            <div class="product_rate" style="width:{{$review_avg}}%"></div>
                        </div>
                        <span class="rating_num">({{$countReview}})</span>
                        </div>
                        <div class="pr_desc">
                             @foreach($product->descriptions as $description)
                            <p>{!!$product->description!!}.</p>
                            @endforeach
                        </div>
                     {{--    <div class="product_sort_info">
                            <ul>
                                <li><i class="linearicons-shield-check"></i> 1 Year AL Jazeera Brand Warranty</li>
                                <li><i class="linearicons-sync"></i> 30 Day Return Policy</li>
                                <li><i class="linearicons-bag-dollar"></i> Cash on Delivery available</li>
                            </ul>
                        </div> --}}
                     {{--    <div class="pr_switch_wrap">
                            <span class="switch_lable">Color</span>
                            <div class="product_color_switch">
                                <span class="active" data-color="#87554B"></span>
                                <span data-color="#333333"></span>
                                <span data-color="#DA323F"></span>
                            </div>
                        </div>
                        <div class="pr_switch_wrap">
                            <span class="switch_lable">Size</span>
                            <div class="product_size_switch">
                                <span>xs</span>
                                <span>s</span>
                                <span>m</span>
                                <span>l</span>
                                <span>xl</span>
                            </div>
                        </div> --}}
                    </div>
                    <hr />
                    <div class="cart_extra">
                        <div class="cart-product-quantity">
                            <div class="quantity">
                                <input type="button" value="-" class="minus">
                                <input type="text" name="quantity" value="1" title="Qty" class="qty" size="50" id="product-{{ $product->id }}-qty">
                                <input type="button" value="+" class="plus">
                            </div>
                        </div>
                        <div class="cart_btn">
                            <button class="btn btn-fill-out btn-addtocart add-item-to-cart" data-id="{{ $product->id }}"  type="button"><i class="icon-basket-loaded"></i> Add to cart</button>
                         {{--    <a class="add_compare" href="#"><i class="icon-shuffle"></i></a>
                            <a class="add_wishlist" href="#"><i class="icon-heart"></i></a> --}}
                        </div>
                    </div>
                    <hr />
                    <ul class="product-meta">
                         @if(!empty($regNo->sku)) <li>SKU: : {{ $regNo->sku }} </a></li> @endif
                    </ul>

                    <div class="product_share">
                        <span>Share:</span>
                        <ul class="social_icons">
                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                            <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
            <div class="row">

        </div>
        <div class="row">
            <div class="col-12">
                <div class="large_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="tab-style3">
                    <ul class="nav nav-tabs" role="tablist">

                     @foreach($product->descriptions as $description)
                        <li class="nav-item">
                            <a class="nav-link {{ $loop->first ? 'active' : '' }}" id="Description-tab{{ $loop->index }}" data-bs-toggle="tab" href="#Description{{ $loop->index }}" role="tab" aria-controls="Description" aria-selected="true">{{ $description->title }}</a>
                        </li>
                      @endforeach
                    
                       @if(count($product->reviews) > 0)
                          <li class="nav-item">
                              <a class="nav-link {{ count($product->descriptions)<1 ? 'active' : '' }}" id="Reviews-tab" data-bs-toggle="tab" href="#Reviews" role="tab" aria-controls="Reviews" aria-selected="false">Reviews ({{count($product->reviews)}})</a>
                           </li>
                        @endif
                    </ul>
                    <div class="tab-content shop_info_tab">
                        @foreach($product->descriptions as $description)
                          <div class="tab-pane fade {{ $loop->first ? 'show active' : '' }}" id="Description{{ $loop->index }}" role="tabpanel" aria-labelledby="Description-tab">
                             {!! $description->description !!}
                          </div>
                        @endforeach
                        @if(count($product->reviews) > 0)
                         @foreach ($reviews as $reviewsname)
                            <div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews-tab">

                                <div class="comments">
                                    @foreach ($reviews as $custreviews )


                                    <ul class="list_none comment_list mt-4">
                                        <li>

                                            <div class="comment_block">

                                                <div class="rating_wrap">
                                                    <div class="rating">
                                 @for($i = 1; $i <= 5; $i++)
                                <i class="fa fa-star {{($i <=$custreviews->rating) ? 'star_active' : 'star_in_active'}}"></i>
                            @endfor
                                                        <div class="product_rate" style="width:%{{$custreviews->rating}}"></div>
                                                    </div>
                                                </div>
                                                <p class="customer_meta">
                                                    <span class="review_author">{{$custreviews->reviewPatient->first_name}} {{$custreviews->reviewPatient->last_name}}</span>
                                                    <span class="comment-date">{{date('d-m-Y', strtotime($custreviews->created_at));}}</span>
                                                </p>
                                                <div class="description">
                                                    {{$custreviews->rating_text}}
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                     @endforeach
                                </div>

                            </div>
                        @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="small_divider"></div>
                <div class="divider"></div>
                <div class="medium_divider"></div>
            </div>
        </div>
        @if(count($relatedProducts)>0)
            <div class="row">
                <div class="col-12">
                    <div class="heading_s1">
                        <h3>Releted Products</h3>
                    </div>
                    <div class="releted_product_slider carousel_slider owl-carousel owl-theme" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                    @foreach($relatedProducts as $product)
                        <div class="item">
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



                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:{{$product}}%"></div>
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
        @endif
    </div>
</div>
<!-- END SECTION SHOP -->
</div>
@stop
@section('scripts')
@stop
