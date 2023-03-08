@extends('frontend.master')

@section('title', @$product->seoSetting->meta_title)
@section('keywords', @$product->seoSetting->meta_keywords)
@section('description', @$product->seoSetting->meta_description)

@section('content')
    <style>
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
    <style type="text/css">
        .hv{
            background-color: #ab8e66!important;
            color:#fff;
        }
        .hv a{

            color:#fff;
        }

        .hv:hover{
            background-color: #122717!important;
            color:#fff;
        }
        .hv:hover a{
            color:#ffffff!important;
        }
        .breadcramp{

        }
        .mt-30{
            margin-top: 100px;
        }

        div.toption{

            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0,0,0,.125);
            border-radius: .25rem;

        }
        div.toption .card-header{
            background-color: rgb(171, 142, 102);
            color: #fff;
        }
        div.toption .card-body{
            text-align: center;
        }
        div.toption .card-body img{
            height: 120px;
            margin: 15px 0px 15px 0px;
        }
        div.toption .card-body p.shortdescription{
            min-height: 45px;
        }
        div.toption .card-body a{
            margin: 10px 0px 10px 0px;
        }

        .medicine-reviews .fa{
            color: #fdad2c;
        }

        /* field set */
        .dosagediv{
            border: 1px solid rgba(0,0,0,.125);
            border-radius: .25rem;
            overflow:auto;
            padding: 15px 15px;
        }
        /* end field set */


        /*Medicine Navigation Tab */
        .meddescriptionnav{

        }
        .meddescriptionnav .nav-link{
            color: #ab8e66;
        }
        .tab-content{
            border: 1px solid rgba(0,0,0,.125);
            border-top: none;
            padding: 25px 25px;
        }

        .btn-outline-dark-active {
            color: #fff;
            background-color: #212529;
            border-color: #212529;
        }
    </style>
    <!-- Breadcrumb Start -->
    <div class="breadcrumb-area mt-40">
        <div class="container">
            <div class="breadcrumb">
                <ul class="d-flex align-items-center">
                    <li><a href="{{ asset('/') }}">Home</a></li>
                    {{--        <li><a href="{{ route('category', ['slug' => $category->seo_url_slug]) }}">{{ $category->title }}</a></li> --}}
                    @foreach($breadcrumbs as $key => $breadcrumb)
                        <li>
                         <a href="{{url('chemist',$breadcrumb->seo_url_slug)}}">{{ $breadcrumb->title }}</a>
                       </li>
                    @endforeach
                    <li class="active">
                        <a href="javascript:;">
                         {{ $product->title }}
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>

    <!-- Hidden Field Start -->
    <input type="hidden" id="product_id" name="product_id" value="{{ $product->hash_id }}" placeholder="">
    <input type="hidden" name="paginate_number" id="paginate_number" value="0" placeholder="">

    <!-- Hidden Field End   -->
    <!-- Breadcrumb End -->
    <!-- Product Thumbnail Start -->
    <div class="main-product-thumbnail ptb-45">
        <div class="container">

            <div class="thumb-bg">
                <div class="row">
                    <!-- Main Thumbnail Image Start -->
                    <div class="col-lg-5 mb-all-40 pt-4">
                        <!-- Thumbnail Large Image start -->
                        <div class="tab-content">
                            @if(count($product->media) > 0)
                                @foreach($product->media as $media)
                                <div id="thumb{{$loop->index}}" class="tab-pane fade show {{$loop->first ? 'active' :'' }}">
                                    <a data-fancybox="images" href="{{ asset('storage/products/'.$media->media) }}">
                                        <img src="{{ asset('storage/products/'.$media->media) }}" class="product-custom-image" alt="{{ @$product->seoSetting->meta_title }}">
                                    </a>
                                </div>
                                @endforeach
                            @endif
                        </div>
                        <!-- Thumbnail Large Image End -->
                        <!-- Thumbnail Image End -->
                        <div class="product-thumbnail mt-3">
                            <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                @foreach($product->media as $media)
                                <a class="active" data-toggle="tab" href="#thumb{{$loop->index}}">
                                    <img src="{{ asset('storage/products/'.$media->media) }}" alt="{{ @$product->seoSetting->meta_title }}"></a>
                                @endforeach
                            </div>
                        </div>
                        <!-- Thumbnail image end -->
                    </div>
                    <!-- Main Thumbnail Image End -->
                    <!-- Thumbnail Description Start -->
                    <div class="col-lg-7 pt-4">
                        <div class="thubnail-desc fix">

                            <h3 class="product-header">{{ $product->title }}</h3>
                            @php
                                $regNo = $product->regNo;
                            @endphp

                            @if(!empty($regNo))
                            <div class="rating-feedback">
                                @if(!empty($regNo->sku)) SKU : {{ $regNo->sku }} @endif @if(!empty($regNo->pip_code)) | PIP-Code : {{ $regNo->pip_code }} @endif @if(!empty($regNo->ean)) | EAN : {{ $regNo->ean }} @endif
                            </div>
                            @endif

                            <div class="rating-summary fix mtb-10">
                                <div class="product-rating">
                                    @for($i = 1; $i <= 5; $i++)
                                        <i class="fa fa-star {{($i <= $review_avg) ? 'star_active' : 'star_in_active'}}"></i>
                                    @endfor
                                    <?php $countReview = count($product->reviews);  ?>
                                         <a id="review-link" href="#review">
                                             <span>{{$countReview . ($countReview == 1 ? " review" : " reviews") }}</span>
                                         </a>
                                </div>

                            </div>
                            <div class="pro-price mtb-30">
                                <p class="d-flex align-items-center">
                                    @if($product->price != $product->discount_price)
                                        <span class="prev-price">£{{ $product->price }}</span>
                                    @endif

                                    <span class="price">£{{ $product->discount_price }}</span>

                                    @if($product->price != $product->discount_price)
                                        <span class="saving-price">save {{ round($product->save_percent) }}%</span>
                                    @endif
                                </p>
                            </div>
                            <p class="mb-20 pro-desc-details">{!! strip_tags($product->description) !!}</p>
                            @if($product->stock_level > 0)
                            <div class="box-quantity d-flex">

                                <form action="#">
                                    <select class="form-control" id="product-{{ $product->id }}-qty">
                                        <?php $allowed = empty($product->quantity_allowe_to_buy) ? 1 : $product->quantity_allowe_to_buy; ?>
                                        @for($i = 1; $i<=$allowed; $i++)
                                            <option value="{{$i}}">{{$i}}</option>
                                        @endfor
                                    </select>
                                </form>
                                <div class="actions-primary ml-2">
                                    <a href="javascript:" title="Add To Cart" class="add-item-to-cart" data-id="{{ $product->id }}" data-original-title="Add to Cart">Add To Cart</a>
                                </div>
                            </div>
                            @endif

                            <div class="pro-ref mt-15">
                                <p>
                                    <span class="in-stock">
                                        @if($product->stock_level > 0)
                                        <i class="ion-checkmark-round"></i>
                                      IN STOCK
                                        @else
                                        <span class="text-danger">Out of Stock</span>
                                        @endif
                                    </span>
                                </p>
                            </div>

                            <div class="socila-sharing mt-25">
                                <ul class="d-flex">
                                    <li>share</li>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-policy mt-20">

                            </div>
                        </div>
                    </div>
                    <!-- Thumbnail Description End -->
                </div>
                <!-- Row End -->
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Product Thumbnail End -->
    <!-- Product Thumbnail Description Start -->
    <div class="thumnail-desc pb-45">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="main-thumb-desc nav tabs-area" role="tablist">
                        @foreach($product->descriptions as $description)
                            <li><a class="{{ $loop->first ? 'active' : '' }}" id="tab-link-{{ $loop->index }}" data-toggle="tab" href="#description{{ $loop->index }}">{{ $description->title }}</a></li>
                        @endforeach
                        @if(count($product->reviews) > 0)

                        <li><a class="{{ count($product->descriptions)<1 ? 'active' : '' }}" id="review-tab" data-toggle="tab" href="#review">Reviews</a></li>
                        @endif
                    </ul>
                    <!-- Product Thumbnail Tab Content Start -->
                    <div class="tab-content thumb-content border-default">
                        @foreach($product->descriptions as $description)
                        <div id="description{{ $loop->index }}" class="tab-pane fade {{ $loop->first ? 'show active' : '' }}">
                            {!! $description->description !!}
                        </div>
                        @endforeach
                    @if(count($product->reviews) > 0)
                       <div id="review" class="tab-pane fade {{ count($product->descriptions)<1 ? ' show active' : '' }}">
                        <!-- Reviews Start -->
                            <div class="review" >
                                <h3 class="mt-0">Customer Reviews ({{ empty($countReview) ? 0 : $countReview }})</h3>

                                <div id="reviews"></div>
                                @if(count($product->reviews) > 0)
                                    <p>
                                        <button type="submit" class="btn btn-info" id="load-more-review"> Load More....</button>
                                    </p>
                                @endif
                            </div>
                       </div>
                    @endif

                    <!-- Product Thumbnail Tab Content End -->

                </div>
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Product Thumbnail Description End -->
    @if(count($relatedProducts)>0)
    <!-- Realted Products Start Here -->
        <div class="second-featured-products related-pro mt-5 pb-45">
            <div class="container">
                <!-- Post Title Start -->
                <div class="post-title">
                    <h2>Related products</h2>
                </div>
                <!-- Post Title End -->
                <!-- New Pro Tow Activation Start -->
                <div class="featured-pro-active owl-carousel">
                    <!-- Single Product Start -->
                    @foreach($relatedProducts as $product)
                        <div class="single-product">
                            <!-- Product Image Start -->
                            <div class="pro-img">
                                <a href="{{ $product->seo_url_slug }}">
                                    @foreach($product->media as $media)
                                        @if($loop->first)
                                            <img class="primary-img" src="{{ asset('storage/products/'.$media->media) }}" alt="single-product">
                                        @endif
                                    @endforeach
                                </a>
                                <span class="sticker-new">new</span>
                            </div>
                            <!-- Product Image End -->
                            <!-- Product Content Start -->
                            <div class="pro-content">
                                <div class="pro-info">
                                    <h4><a href="{{ $product->seo_url_slug }}">{{ $product->title }}</a></h4>
                                    <div class="product-rating">
                                    <?php
                                        $review_avg = reviewCalculate($product);
                                    ?>
                                    @for($i = 1; $i <= 5; $i++)
                                        <i class="fa fa-star fa-lg {{($i <= $review_avg) ? 'star_active' : 'star_in_active'}}"></i>
                                    @endfor
                                    </div>
                                    <p>
                                        <span class="price">£{{ $product->discount_price }}</span>
                                        @if($product->price != $product->discount_price)
                                            <del class="prev-price">£{{ $product->price }}</del>
                                        @endif
                                    </p>
                                </div>
                                <div class="pro-actions">
                                    <div class="actions-primary">
                                        <a href="javascript:;" data-id="{{ $product->id }}" class="add-item-to-cart" title="Add to Cart">Add To Cart</a>
                                    </div>
                                    <div class="actions-secondary">
                                        <a href="{{ $product->seo_url_slug }}" title="Details"><i class="fa fa-signal"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- Product Content End -->
                        </div>
                    @endforeach
                    {{ $prod->links() }}



                </div>
                <!-- New Pro Tow Activation End -->
            </div>
            <!-- Container End -->
        </div>
    <!-- Realated Products End Here -->
    @endif
@stop

@section('scripts')
    @include('frontend.components.review_js')

    <script>
        $(document).ready(function(){
            $('#review-link').click(function(){
                let totalDescriptionCount = {{ count($product->descriptions) }};
                for (let i= 0; i<= totalDescriptionCount; i++) {
                    $("#tab-link-"+i).removeClass("active");
                    $("#description"+i).removeClass("active").removeClass("show");
                    $("#review-tab").addClass("active ");
                    $("#review").addClass("active ").addClass("show");
                }
            });
        });
    </script>

@stop
