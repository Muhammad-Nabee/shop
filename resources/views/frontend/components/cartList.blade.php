<a href="#">
    <i class="ion-bag"></i>
    <span class="total-pro">{{ $cart['totalQty'] }}</span>
    <span class="my-cart">
            <span>my cart</span>
            <span class="total-price">£{{ number_format(cartPrice(), 2) }}</span>
        </span>
</a>
<ul class="ht-dropdown cart-box-width">
    @if(count($cart['items'])<1)
        <li>No Item</li>
    @else
        <li>
            <!-- Cart Box Start -->
            @foreach($cart['items'] as $key => $each)
                @php
                  $product = $each['item'];
                @endphp
                <div class="single-cart-box">
                    <div class="cart-img">
                        <a href="{{ $product['seo_url_slug'] }}">
                            @foreach($product['media'] as $media)
                                @if($loop->first)
                                    <img src="{{ asset('storage/products/'.$media['media']) }}" alt="{{ $product['title'] }}">
                                @endif
                            @endforeach
                        </a>
                        <span class="pro-quantity">{{ $each['qty'].'X' }}</span>
                    </div>
                    <div class="cart-content">
                        <h6><a href="{{ $product['seo_url_slug'] }}">{{ $product['title'] }} </a></h6>
                        <span class="cart-price">£{{ number_format($each['discount_price'], 2) }}</span>
                    </div>
                    <a class="del-icone remove-item-from-cart" href="javascript:;" data-id="{{ $product['id'] }}"><i class="ion-close"></i></a>
                </div>
            @endforeach

            <div class="cart-footer">
                <ul class="price-content">
                    <li>Subtotal <span>£{{ number_format($cart['discountPrice'], 2) }}</span></li>
                    @if($cart["couponFree"] > 0)
                    <li>Coupon <span class="text-danger">- £{{ number_format($cart["couponFree"], 2) }}</span></li>
                    @endif
                    <li>Delivery <span>£{{ number_format($cart["deliveryFee"], 2) }}</span></li>
                    <li>Total <span>£{{ number_format(cartPrice(), 2) }}</span></li>
                </ul>
                <div class="cart-actions text-center">
                    <a class="cart-checkout" href="{{ asset('checkout') }}">View Cart</a>
                    <a class="cart-checkout" href="{{ asset('checkout') }}">Checkout</a>
                </div>
            </div>
            <!-- Cart Footer Inner End -->
        </li>
    @endif
</ul>
