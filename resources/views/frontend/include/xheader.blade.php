<header>
    <!-- Header Top Start Here -->
    <div class="header-top white-bg header-top-two">
        <div class="container">
            <div class="col-sm-12">
                <div class="row justify-content-md-between justify-content-center">
                    <!-- Header Top Left Start -->
                    <div class="header-top-left">
                        <ul>
                            <li><span>Language:</span><a href="#"><img src="{{ asset('assets/img/header/1.jpg')}}" alt="language-selector">English<i class="ion-arrow-down-b"></i></a>
                                <!-- Dropdown Start -->
                                <ul class="ht-dropdown">
                                    <li><a href="#"><img src="{{ asset('assets/img/header/1.jpg')}}" alt="language-selector">English</a></li>
                                    <li><a href="#"><img src="{{ asset('assets/img/header/2.jpg')}}" alt="language-selector">Francis</a></li>
                                </ul>
                                <!-- Dropdown End -->
                            </li>
                            <li><span>Currency:</span><a href="#">USD $<i class="ion-arrow-down-b"></i></a>
                                <!-- Dropdown Start -->
                                <ul class="ht-dropdown">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">Français</a></li>
                                </ul>
                                <!-- Dropdown End -->
                            </li>
                        </ul>
                    </div>
                    <!-- Header Top Left End -->
                    <!-- Header Top Right Start -->
                    <div class="header-top-right">
                        <ul>
                            <li><a href="{{ asset('login') }}">My Account</a></li>
                            <li><a href="{{url('checkout-new')}}">Checkout</a></li>
                            <li><a href="{{ asset('login') }}">Sign in</a></li>
                        </ul>
                    </div>
                    <!-- Header Top Right End -->
                </div>
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Header Top End Here -->
    <!-- Header Middle Start Here -->
    <div class="header-middle white-bg ptb-35">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-12">
                    <div class="logo mb-all-30">
                        <a href="{{url('/')}}">
                            <img src="{{url('storage/pharmacyprofile',$pharmacy_settings->logo_1)}}" alt="logo-image" class="img-fluid" />
                        </a>
                    </div>
                </div>
                <!-- Categorie Search Box Start Here -->
                <div class="col-lg-6 col-md-12">
                    <div class="categorie-search-box">

                         <input type="text" name="search" class="medicine_search" placeholder="Search a product ...">

                        <!-- SEARCH RESULTS -->
                        <div class="td-auto-suggest-div d-none">
                            <div class="text-center p-3 d-none no_record_found_div" id="">
                                <p class="text-danger"> No record found </p>
                            </div>
                            <!-- Div Containing search items response -->
                            <div class="d-none td_search_results_div" id=""></div>
                        </div>
                        <!-- ./ SEARCH RESULTS -->

                    </div>
                </div>
                <!-- Categorie Search Box End Here -->
                <!-- Cart Box Start Here -->
                <div class="col-lg-3 col-md-12">
                    <div class="cart-box mt-all-30">
                        <ul class="d-flex justify-content-lg-end justify-content-center align-items-center">
                            <li><a class="wish-list-item" href="javascript:;"><i class="ion-android-favorite-outline"></i></a></li>

                            <li>
                                <a href="{{url('treatments/my-cart')}}">
                                    <i class="ion-bag"></i>
                                    <span class="total-pro">
                                        <?php echo (!empty(Session::get('td_cart'))) ? count(Session::get('td_cart')) : '0' ?>
                                    </span>
                                    <span class="my-cart">
                                        <span>my cart</span>
                                        <span class="total-price">$ 64.95</span>
                                    </span>
                                </a>
                                @php
                                    $card_items = Session::get('td_cart');
                                    $total = 0;
                                @endphp
                                @if(!empty($card_items))
                                <ul class="ht-dropdown cart-box-width">

                                    <li>

                                    @foreach($card_items as $key => $product)
                                        <?php
                                        $cat_medicine = @$product['cat_medicine'];
                                        if (!empty($cat_medicine)) {
                                        $exploded_cat_medicine = explode('-', $cat_medicine);
                                        $item = array();
                                        $medicine_id = $exploded_cat_medicine[0];
                                        $strength_id = $exploded_cat_medicine[1];
                                        $quantity_id = $exploded_cat_medicine[2];
                                        $medicine_details = CommonHelper::getMedicineDetails($exploded_cat_medicine[0]);
                                        $strength_details = CommonHelper::getMedicineStrengthDetails($exploded_cat_medicine[1]);
                                        $qty_details = CommonHelper::getMedicineQuantityDetails($exploded_cat_medicine[2]);
                                        $medicine_price = CommonHelper::getMedicinePricingDetails($medicine_id, $strength_id, $quantity_id);
                                        $medicine_medias = CommonHelper::getMedicineMediasDetails($medicine_id);

                                        $item_price = ($medicine_price->discount_price && $medicine_price->discount_price != '0.00') ? number_format($medicine_price->discount_price, 2) : number_format($medicine_price->price, 2) ;

                                        $item_price = $product['qty'] * $item_price;

                                        $total = $total + $item_price;

                                        ?>


                                        <!-- Cart Box Start -->
                                        <div class="single-cart-box">
                                            <div class="cart-img">
                                                <a href="javascript:;">
                                                    @if(count($medicine_medias) > 0)
                                                        <img src="{{ url('storage/medicine/'.$medicine_medias[0]->media) }}" alt="cart-image" />
                                                    @endif
                                                </a>
                                                <span class="pro-quantity">{{($qty_details->qty) ? filter_string($qty_details->qty) : ''  }}</span>
                                            </div>
                                            <div class="cart-content">
                                                <h6><a href="javascript:;">{{($medicine_details->title) ? filter_string($medicine_details->title) : ''  }} </a></h6>
                                                <span class="cart-price">27.45</span>
                                                <span>{{(@$strength_details->strength) ? filter_string(@$strength_details->strength) : ''  }}</span>
                                                <span>{{($qty_details->form) ? filter_string($qty_details->form) : ''  }}</span>
                                            </div>
                                            <a class="del-icone action remove-cart-item-head" href="javascript:;"
                                               data-hash-id="{{$key}}"><i class="ion-close"></i></a>
                                        </div>
                                            <?php } ?>
                                    @endforeach
                                    </li>
                                </ul>
                                @else

                                    <ul class="ht-dropdown cart-box-width">

                                        <li> Your cart is empty! </li>
                                    </ul>

                                @endif
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Cart Box End Here -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Header Middle End Here -->
    <!-- Header Bottom Start Here -->
    <div class="header-bottom dark-pink-bg header-bottom-two header-sticky">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-12 ">

                    <nav class="d-none d-lg-block topnavigation">
                        <ul class="header-bottom-list home-style-theree-menu d-flex">

                            <li><a href="{{url('/')}}">Home</a></li>
                            <li><a href="javascript:;">Treatments<i class="fa fa-angle-down"></i></a>
                                <!--  Mega-Menu Start -->

                                @include('frontend.components.treatment_nav')


                                <!-- Mega-Menu End -->
                            </li>

                            @foreach($pharmacy_menus as $menu)
                                @if($menu['position_id'] == 1)
                                    @foreach($menu['pharmacy_menu_links'] as $link)

                                        @php
                                            $target = "";
                                            if($link['reference_type'] == "SERVICE"){

                                              $alink = !empty($link['service']['service_url']) ? @$link['service']['service_url'] : url('/product-details', @$link['service']['slug']);


                                            }

                                            if($link['reference_type'] == "PAGE"){
                                                $alink = route('page', ['slug' => @$link['page']['url_slug'] ]);
                                            }

                                            if($link['reference_type'] == "STATIC_PAGE") {
                                                $alink = "/".@$link['static_page']['url'];
                                            }

                                            if($link['reference_type'] == "URL") {
                                                $alink = @$link['reference_url'];
                                                if($link['new_tab'] == '1') {
                                                    $target =  'target=_blank';
                                                }
                                            }

                                        @endphp

                                        @if(count($link['childs']) > 0 )

                                            <li><a href="{{ @$alink }}" {{ $target }}<i class="fa fa-angle-down"></i> {{ @$link['title']}} </a>
                                                <!-- Home Version Dropdown Start -->
                                                <ul class="ht-dropdown dropdown-style-two">
                                                    @foreach($link['childs'] as $child_link)
                                                        @php

                                                            $target = "";
                                                            if($child_link['reference_type'] == "SERVICE"){

                                                                   $child_sub_link = !empty($child_link['service']['service_url']) ? $child_link['service']['service_url'] : url('/product-details', $child_link['service']['slug']);

                                                              }
                                                              if($child_link['reference_type'] == "PAGE"){

                                                                  $child_sub_link = route('page', ['url_slug' => $child_link['page']['url_slug'] ]);

                                                              }

                                                              if($child_link['reference_type'] == "STATIC_PAGE"){

                                                                  $child_sub_link = "/".$child_link['static_page']['url'];

                                                              }

                                                              if($child_link['reference_type'] == "URL"){

                                                                  $child_sub_link = $child_link['reference_url'];

                                                                  if($link['new_tab'] == 'Y'){

                                                                      $target = 'target=_blank';
                                                                  }

                                                              }

                                                        @endphp
                                                    <li><a href="{{ $child_sub_link }}" {{ $target }}>{{ $child_link['title'] }}</a></li>

                                                    @endforeach

                                                </ul>
                                                <!-- Home Version Dropdown End -->
                                            </li>


                                        @else

                                            <li><a href="{{ $alink }}" {{ $target }}>{{ $link['title'] }}</a></li>

                                        @endif


                                    @endforeach
                                @endif
                            @endforeach


                        </ul>
                    </nav>


                    <div class="mobile-menu menu-style-two menu-style-three d-block d-lg-none" data-menu="Menu">
                        <nav>
                            <ul>
                                <li><a href="{{url('/')}}">Home</a></li>

                                @foreach($pharmacy_menus as $menu)
                                    @if($menu['position_id'] == 1)
                                        @foreach($menu['pharmacy_menu_links'] as $link)

                                            @php
                                                $target = "";
                                                if($link['reference_type'] == "SERVICE"){

                                                  $alink = !empty($link['service']['service_url']) ? @$link['service']['service_url'] : url('/product-details', @$link['service']['slug']);


                                                }

                                                if($link['reference_type'] == "PAGE"){
                                                    $alink = route('page', ['slug' => @$link['page']['url_slug'] ]);
                                                }

                                                if($link['reference_type'] == "STATIC_PAGE") {
                                                    $alink = "/".@$link['static_page']['url'];
                                                }

                                                if($link['reference_type'] == "URL") {
                                                    $alink = @$link['reference_url'];
                                                    if($link['new_tab'] == '1') {
                                                        $target =  'target=_blank';
                                                    }
                                                }

                                            @endphp

                                            @if(count($link['childs']) > 0 )

                                                <li><a href="{{ @$alink }}" {{ $target }}>
                                                    {{ @$link['title']}}</a>
                                                    <!-- Home Version Dropdown Start -->
                                                    <ul>

                                                        @foreach($link['childs'] as $child_link)
                                                            @php

                                                                $target = "";
                                                                if($child_link['reference_type'] == "SERVICE"){

                                                                       $child_sub_link = !empty($child_link['service']['service_url']) ? $child_link['service']['service_url'] : url('/product-details', $child_link['service']['slug']);

                                                                  }
                                                                  if($child_link['reference_type'] == "PAGE"){

                                                                      $child_sub_link = route('page', ['url_slug' => $child_link['page']['url_slug'] ]);

                                                                  }

                                                                  if($child_link['reference_type'] == "STATIC_PAGE"){

                                                                      $child_sub_link = "/".$child_link['static_page']['url'];

                                                                  }

                                                                  if($child_link['reference_type'] == "URL"){

                                                                      $child_sub_link = $child_link['reference_url'];

                                                                      if($link['new_tab'] == 'Y'){

                                                                          $target = 'target=_blank';
                                                                      }

                                                                  }

                                                            @endphp
                                                            <li><a href="{{ $child_sub_link }}" {{ $target }}>{{ $child_link['title'] }}</a></li>

                                                        @endforeach

                                                    </ul>
                                                    <!-- Home Version Dropdown End -->
                                                </li>

                                            @else

                                                <li><a href="{{ $alink }}" {{ $target }}>{{ $link['title'] }}</a></li>

                                            @endif


                                        @endforeach
                                    @endif
                                @endforeach

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Header Bottom End Here -->
    <!-- Mobile Vertical Menu Start Here -->
    <div class="container d-block d-lg-none">
        <div class="vertical-menu mt-30">
            <span class="categorie-title mobile-categorei-menu">all Categories <i class="fa fa-angle-down"></i></span>
            <nav>
                <div id="cate-mobile-toggle" class="category-menu sidebar-menu sidbar-style mobile-categorei-menu-list menu-hidden ">
                    <ul>
                        <li class="has-sub"><a href="#">Electronics</a>
                            <ul class="category-sub">
                                <li><a href="shop.html">Cords and Cables</a></li>
                                <li><a href="shop.html">gps accessories</a></li>
                                <li><a href="shop.html">Microphones</a></li>
                                <li><a href="shop.html">Wireless Transmitters</a></li>
                            </ul>
                            <!-- category submenu end-->
                        </li>
                        <li class="has-sub"><a href="#">Fashion</a>
                            <ul class="category-sub">
                                <li><a href="shop.html">Fashion one</a></li>
                                <li><a href="shop.html">Fashion two</a></li>
                                <li><a href="shop.html">Fashion three</a></li>
                                <li><a href="shop.html">Fashion Four</a></li>
                            </ul>
                            <!-- category submenu end-->
                        </li>
                        <li class="has-sub"><a href="#">Home & Kitchen</a>
                            <ul class="category-sub">
                                <li><a href="shop.html">kithen one</a></li>
                                <li><a href="shop.html">kithen two</a></li>
                                <li><a href="shop.html">kithen three</a></li>
                                <li><a href="shop.html">kithen four</a></li>
                            </ul>
                            <!-- category submenu end-->
                        </li>
                        <li class="has-sub"><a href="#">Phones & Tablets</a>
                            <ul class="category-sub">
                                <li><a href="shop.html">phone one</a></li>
                                <li><a href="shop.html">Tablet two</a></li>
                                <li><a href="shop.html">Tablet three</a></li>
                                <li><a href="shop.html">phone four</a></li>
                            </ul>
                            <!-- category submenu end-->
                        </li>
                        <li class="has-sub"><a href="#">TV & Video</a>
                            <ul class="category-sub">
                                <li><a href="shop.html">smart tv</a></li>
                                <li><a href="shop.html">real video</a></li>
                                <li><a href="shop.html">Microphones</a></li>
                                <li><a href="shop.html">Wireless Transmitters</a></li>
                            </ul>
                            <!-- category submenu end-->
                        </li>
                        <li><a href="#">Beauty</a> </li>
                        <li><a href="#">Sport & tourisim</a></li>
                        <li><a href="#">Meat & Seafood</a></li>
                    </ul>
                </div>
                <!-- category-menu-end -->
            </nav>
        </div>
    </div>
    <!-- Mobile Vertical Menu Start End -->
</header>

<script type="text/javascript">
$(document).ready(function(){

    $('.medicine_search').keyup(function(e){

        alert('ddd');

        // Accepts all the keys except [ upkey and downkey ]
        if( e.keyCode != 13 && e.keyCode != 38 && e.keyCode != 40 ){

            // Search query string
            var search_query = $(this).val();
            var _this = this;

            var my_id = $(_this).attr("id");

            if(search_query.length >= 2){

                $('.td-auto-suggest-div').removeClass('d-none');

                $.ajax({

                    type: "POST",
                    url: "{{url('treatments/search-medicine')}}",
                    data: {'search_query' : search_query},
                    headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    beforeSend : function(result){
                        //$("#overlay").removeClass("hidden");
                    },

                    success: function(response){
                        if(response != 'empty'){
                            $('.no_record_found_div').addClass('d-none');
                            $('.td_search_results_div').removeClass('d-none');
                            $('.td_search_results_div').html(response);
                        } else {
                            $('.no_record_found_div').removeClass('d-none');
                            $('.td_search_results_div').addClass('d-none');
                            $('.td_search_results_div').html('');
                        } // if(response != 'empty')
                    } // success

                });

            } else {

                $('.td-auto-suggest-div').addClass('d-none');

            } // if(search_query.length >= 2)

        } else { // if keys up or down

            if( e.keyCode == 13){ // enter

                $(".selected").trigger("click");

            } // if( e.keyCode == 13 && $('.vaccination_suggessions li').hasClass("selected") == true )

            if (e.keyCode == 38) { // up Arrow key
                var selected = $(".selected");
                $(".vaccination_suggessions li").removeClass("selected");
                if (selected.prev().length == 0) {
                    selected.siblings().last().addClass("selected");
                } else {
                    selected.prev().addClass("selected");
                }
            }
            if (e.keyCode == 40) { // Down Arrow key

                var selected = $(".selected");
                $(".vaccination_suggessions li").removeClass("selected");

                if (selected.next().length == 0){
                    selected.siblings().first().addClass("selected");
                } else {
                    selected.next().addClass("selected");
                } // if (selected.next().length == 0)

            } // if( e.keyCode == 13 && $('.vaccination_suggessions li').hasClass("selected") == true )

        } // if keys up or down

    }); // End - .VACCINATION SEARCH

}); // ready

// Auto Select Destination
function auto_select_vaccination(data, el){

    var obj = JSON.parse(decodeURI(data));

    // trash suggessions
    jQuery('#'+el).nextAll('#vaccination_suggessions').html('');
    jQuery('#'+el).parent().nextAll('#vaccination_suggessions').html('');

    var vaccination_name = obj.parent_name;
    var vaccination_id = obj.id;

    // place values
    jQuery('#'+el).val('');

    // var selected_vaccination = '<li> '+vaccination_name+' <a href="javascript:;" onClick="remove_vaccination_vacc(this);"><i class="fa fa-close"></i></a> <input type="hidden" name="vaccine_arr[]" id="vaccine_'+vaccination_id+'" class="vaccine_arr" value="'+vaccination_id+'" readonly="" /> </li>';
    var selected_vaccination = '<li class="mt-2 mr-2">'+
                                  vaccination_name+''+
                                  '<span class="float-right">'+
                                   '<a href="javascript:;" onClick="remove_vaccination_vacc(this);"><i class="icofont icofont-close"></i></a>'+
                                  '</span>'+
                                  '<input type="hidden" name="vaccine_arr[]" id="vaccine_'+vaccination_id+'" class="vaccine_arr" value="'+vaccination_id+'" readonly="" />'+
                                '</li>';

    jQuery('#multi_vaccination').append(selected_vaccination);

    $('#medicine_search').parent().removeClass('has-error');
    $('#medicine_search').parent().find('small').addClass('hidden');

} // function auto_select_vaccination(data)

function stripslashes(str) {
    return (str + '').replace(/(?:\\[rn])+/g, "", function (s, n1) {
        switch (n1) {
        case '\\':
            return '\\';
        case '0':
            return '\u0000';
        case '':
            return '';
        default:
            return n1;
        }
    });
}//end stripslashes(str)
</script>
