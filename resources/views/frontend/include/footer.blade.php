<!-- START FOOTER -->
<footer class="footer_dark">
  <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12">
               <div class="widget">
                    <h6 class="widget_title">Contact info</h6>
                    <ul class="contact_info contact_info_light">
                        <li>
                            <i class="ti-location-pin"></i>
                            <p>@if(!empty($pharmacy_info)){{ addressWithComma($pharmacy_info) }} @endif</p>
                        </li>
                        <li>
                            <i class="ti-email"></i>
                            <a href="mailto:@if(!empty($pharmacy_info)){{$pharmacy_info->email_address_primary}}@endif">@if(!empty($pharmacy_info)){{$pharmacy_info->email_address_primary}}@endif</a>
                        </li>
                        <li>
                            <i class="ti-mobile"></i>
                            <p>@if(!empty($pharmacy_info)){{$pharmacy_info->contact_number_p}} @endif</p>
                        </li>
                    </ul>
                </div>
                <div class="widget">
                    <ul class="social_icons rounded_social">
                        @if(!empty($pharmacy_info->facebook_url))
                            <li><a href="{{ $pharmacy_info->facebook_url }}" class="sc_facebook"><i class="ion-social-facebook"></i></a></li>
                        @endif
                        @if(!empty($pharmacy_info->instagram_url))
                            <li><a href="{{ $pharmacy_info->instagram_url }}" class="sc_instagram"><i class="ion-social-instagram-outline"></i></a></li>
                        @endif
                        @if(!empty($pharmacy_info->linkedin_url))
                              <li><a href="{{ $pharmacy_info->linkedin_url }}"><i class="bx bxl-linkedin"></i></a></li>
                        @endif
                        @if(!empty($pharmacy_info->twitter_url))
                            <li><a href="{{ $pharmacy_info->twitter_url }}"><i class="bx bxl-twitter"></i></a></li>
                        @endif
                        @if(!empty($pharmacy_info->youtube_url))
                            <li><a href="{{ $pharmacy_info->youtube_url }}" class="sc_youtube"><i class="ion-social-youtube-outline"></i></a></li>
                        @endif
                    </ul>
                </div>
            </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                  <div class="widget">
                        <h6 class="widget_title">Useful Links</h6>
                        <ul class="widget_links">
                         @foreach($pharmacy_menus as $menu)
                            @if($menu['position_id'] == 2)
                                @foreach($menu['pharmacy_menu_links'] as $link)
                                    @php
                                        $target = "";
                                        if($link['reference_type'] == "SERVICE"){
                                            $alink = route('service_details_page', ['url_slug' => $link['service']['slug'] ]);
                                        }
                                        if($link['reference_type'] == "PAGE"){
                                            $alink = route('page', ['slug' => $link['page']['url_slug'] ]);
                                        }
                                        if($link['reference_type'] == "STATIC_PAGE") {
                                            $alink = "/".$link['static_page']['url'];
                                        }
                                        if($link['reference_type'] == "URL") {
                                            $alink = $link['reference_url'];
                                            if($link['new_tab'] == '1') {
                                                $target = 'target=_blank';
                                            }
                                        }
                                    @endphp
                                    <li class="">
                                        <a href="{{ $alink }}" {{ $target }}> {{ $link['title'] }}</a>
                                    </li>
                                @endforeach
                            @endif
                        @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                  <div class="widget">
                        <h6 class="widget_title">My Account</h6>
                        <ul class="widget_links">
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Discount</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Orders History</a></li>
                            <li><a href="#">Order Tracking</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                  <div class="widget">
                        <h6 class="widget_title">Subscribe Our Newsletter</h6>
                        <p>If you want to get an email from us every time we have a new special offer, then sign up here!</p>
                        <div class="newsletter_form rounded_input">
                            <form>
                                <input type="text" required="" class="form-control" placeholder="Enter Email Address">
                                <button type="submit" class="btn-send" name="submit" value="Submit"><i class="icon-envelope-letter"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom_footer border-top-tran">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="mb-md-0 text-center text-md-start">&copy; Copyright {{date('Y')}} <strong><span>{{($pharmacy_info) ? $pharmacy_info->pharmacy_name : ''}}</span></strong>. All Rights Reserved</p>
                </div>
                <div class="col-md-6">
                    <ul class="footer_payment text-center text-md-end">
                        <li><a href="#"><img src="{{asset('new/assets/images/visa.png')}}" alt="visa"></a></li>
                        <li><a href="#"><img src="{{asset('new/assets/images/discover.png')}}" alt="discover"></a></li>
                        <li><a href="#"><img src="{{asset('new/assets/images/master_card.png')}}" alt="master_card"></a></li>
                        <li><a href="#"><img src="{{asset('new/assets/images/paypal.png')}}" alt="paypal"></a></li>
                        <li><a href="#"><img src="{{asset('new/assets/images/amarican_express.png')}}" alt="amarican_express"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- END FOOTER -->
