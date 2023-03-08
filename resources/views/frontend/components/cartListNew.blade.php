
<li class="dropdown cart_dropdown"><a class="nav-link cart_trigger" href="#" data-bs-toggle="dropdown"><i class="linearicons-cart"></i><span class="cart_count">
@if(count($cart['items'])<1)
0
@else
{{count($cart['items'])}}
@endif
</span>
</a>
<div class="cart_box dropdown-menu dropdown-menu-right">
    @if(count($cart['items'])<1)
         <ul class="cart_list">
            <li>No Item</li>
        </ul>
    @else
    <ul class="cart_list">
        @foreach($cart['items'] as $key => $each)
            @php
              $product = $each['item'];
            @endphp
            <li>
                <a href="javascript:;" class="item_remove remove-item-from-cart" data-id="{{ $product['id'] }}"><i class="ion-close"></i></a>
                <a href="#">
            
                @foreach($product['media'] as $media)
                    @if($loop->first)
                        <img src="{{ asset('storage/products/'.$media['media']) }}" alt="{{ $product['title'] }}">
                    @endif
                @endforeach
                {{ $product['title'] }}</a>
                <span class="cart_quantity">{{ $each['qty'].'X' }}<span class="cart_amount"> <span class="price_symbole">AED</span></span>{{ number_format($each['discount_price'], 2) }}</span>
            </li>
        @endforeach
    </ul>
    <div class="cart_footer">
        <p class="cart_total"><strong>Subtotal:</strong> <span class="cart_price"> <span class="price_symbole">AED</span></span>{{ number_format(cartPrice(), 2) }}</p>
        <p class="cart_buttons"><a href="{{url('cart/view')}}" class="btn btn-fill-line btn-radius view-cart">View Cart</a><a href="{{url('checkout-new')}}" class="btn btn-fill-out btn-radius checkout">Checkout</a></p>
    </div>
    @endif
</div>
</li>
