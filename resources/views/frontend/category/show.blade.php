@extends('frontend.master')

@section('title', !empty($category->meta_title) ? ucwords($category->meta_title) : ucwords($category->title))
@section('description',!empty($category->meta_description) ? $category->meta_description : $category->title)
@section('keywords',!empty($category->meta_keywords) ? $category->meta_keywords : $category->title)

@section('content')
<!-- START SECTION SHOP -->
<div class="section">
	<div class="container">
    	<div class="row">
			<div class="col-lg-9">
            	<div class="row align-items-center mb-4 pb-1">
                    <div class="col-12">
                        <div class="product_header">
                            <div class="product_header_left">
                                <div class="custom_select">

                                    <select id="product-sorting"  class="form-control form-control-sm">
                                   <option value="{{ asset('products/'.$category->seo_url_slug)}}">Default sorting</option>
                                     <option value="{{ asset('products/'.$category->seo_url_slug.'?sortTitle=ASC') }}" @if($sort_title == 'ASC') selected @endif>Name, A to Z</option>
                                    <option value="{{ asset('products/'.$category->seo_url_slug.'?sortTitle=DESC') }}" @if($sort_title == 'DESC') selected @endif>Name, Z to A</option>
                                    <option value="{{ asset('products/'.$category->seo_url_slug.'?sortPrice=low') }}" @if($sort_price == 'low') selected @endif>Price low to high</option>
                                    <option value="{{ asset('products/'.$category->seo_url_slug.'?sortPrice=high') }}" @if($sort_price == 'high') selected @endif>Price high to low</option>
                                    </select>

                                </div>
                            </div>
                            <div class="product_header_right">
                            	<div class="products_view">
                                    <a href="javascript:Void(0);" class="shorting_icon grid"><i class="ti-view-grid"></i></a>
                                    <a href="javascript:Void(0);" class="shorting_icon list active"><i class="ti-layout-list-thumb"></i></a>
                                </div>
                                <div class="custom_select">

                                    <select id="select_id" class="form-control form-control-sm">
                                        <option  value="{{''}}">Showing</option>
                                       <option id="first" value="{{ asset('products/'.$category->seo_url_slug.'?pageSize=10')}}" @if($pageSize == '10') selected @endif>10</option>
                                        <option id="second" value="{{ asset('products/'.$category->seo_url_slug.'?pageSize=20') }}"@if($pageSize == '20') selected @endif >20</option>
                                        <option id="third" value="{{ asset('products/'.$category->seo_url_slug.'?pageSize=30') }}"@if($pageSize == '30') selected @endif>30</option>
                                        <option id="fourth" value="{{ asset('products/'.$category->seo_url_slug.'?pageSize=50') }}"@if($pageSize == '50') selected @endif>50</option>
                                    </select>
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row shop_container list">
                     @foreach($products as $product)
                    <div class="col-md-4 col-6">

                        <div class="product">

                            <div class="product_img">
                               <a href="{{ $product->seo_url_slug }}">
                                   @foreach($product->media as $media)

                                    @if($loop->first)

                                        <img class="primary-img" src="{{ asset('storage/products/'.$media->media) }}" alt="{{ $product->title }}">
                                    @endif
                                    @if($loop->index == 1)
                                        <img class="secondary-img" src="{{ asset('storage/products/'.$media->media) }}" alt="{{ $product->title }}" />
                                    @endif
                                @endforeach
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><a href="javascript:;"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>

                            </div>
                            <div class="product_info">

                                <h6 class="product_title"><a href="{{ $product->seo_url_slug }}">{{ $product->title }}</a></h6>
                                <div class="product_price">
                                    <span class="price">AED:{{ $product->discount_price }}
                                    </span>
                                    @if($product->price != $product->discount_price)
                                        <del class="prev-price">AED:{{ $product->price }}</del>
                                    @endif
                                </div>
                                <div class="rating_wrap">
                                    <?php
                                    $review_avg = reviewCalculate($product);

                                    ?>
                                    <div class="rating">
                                     @for($i = 1; $i <= 5; $i++)
                                    <i class="rating" {{($i <= $review_avg) ? 'star_active' : 'star_in_active'}}"></i>
                                        @endfor

                                    </div>

                                    <span class="rating_num"> ({{($review_avg)}})</span>
                                </div>
                                <div class="pr_desc" style="max-height: none !important;">
                                    <p>{!!Illuminate\Support\Str::limit($product->description, 491, $end='........') !!}</p>
                                     {{-- <p>{!!$product->description!!}</p> --}}

                                </div>

                                <div class="list_product_action_box">
                                    <ul class="list_none pr_action_btn">
                                         @if($product->stock_level < 1)
                                    <p>
                                        <span class="in-stock">
                                            <span class="text-danger">Out of Stock</span>
                                        </span>
                                    </p>
                                @else
                                       <div class="actions-primary">
                                         <li class="add-to-cart"><a href="javascript:;" title="{{ $product->title }}" data-id="{{ $product->id }}" class="add-item-to-cart" data-original-title="Add to Cart" <i class="icon-basket-loaded"></i>Add To Cart</a></li>
                                       </div>
                                       @endif


                                    </ul>
                                </div>
                            </div>

                        </div>

                    </div>
                     @endforeach

                </div>


                <div class="row">
                    <div class="col-12">
                        <ul class="pagination mt-3 justify-content-center pagination_style1">
                        {{$products->links('pagination::bootstrap-4')}}

                        </ul>
                    </div>
                </div>

        	</div>



            <div class="col-lg-3 order-lg-first mt-4 pt-2 mt-lg-0 pt-lg-0">
            	<div class="sidebar">
                	<div class="widget">
                        <h5 class="widget_title">Categories</h5>
                        <ul class="widget_categories">
                    @foreach($breadcrumbs as $key => $breadcrumb)
                       <li
                       @if(count($breadcrumbs) == ++$key) class="active" @endif
                       >
                      <li><a href="{{$breadcrumb->seo_url_slug}}"><span class="categories_name">{{ $breadcrumb->title }}</span><span class="categories_num">({{ $countCategory}})</span></a></li>

                       </li>

                    @endforeach


                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->


@stop

@section('scripts')

    <script>
//sorting
 $(document).on('change', '#product-sorting', function () {

        let val = $(this).val();
          if (val != '')
          {
              location.replace(val);
          }

});

//showing pages  10 to 50
 $(document).on('change', '#select_id', function () {
  let current_url = $(this).val();

if (current_url != '')
{
 location.replace(current_url);
}
else
{
     window.location.href=('{{ asset('products/'.$category->seo_url_slug)}}');
}





 });

// function myFunction() {
// // var x = document.getElementById("select_id").value;
// //  $current_url={!! json_encode(Request::fullUrl()) !!}+x;
// //  $current_url={!! json_encode(url()->full()) !!}+x;
// //var current_url={!! json_encode(url()->current()) !!}+'?pageSize='+x;
// var x = document.getElementById("select_id").value;
// var current_url={!! json_encode(url()->current()) !!}+'?pageSize='+x;
// location.replace(current_url);



// }
function sortingFunction()
{
    var x = document.getElementById("product-sorting").value;
    var x = document.getElementById("#select_id").value;
}
</script>
@stop
