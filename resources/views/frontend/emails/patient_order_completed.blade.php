<table border="1" width="100%" cellpadding="5" style="border-collapse: collapse !important;">
    <tr>
        <th width="70%" align="left"><strong>Medicine Title </strong> </th>
        <th width="10%"><strong>Qty </strong> </th>
        <th width="20%" align="right"><strong>Price (&pound;) </strong> </th>
    </tr>

    <?php
    $savedCart = [];
    if(!empty($order->txn_cart)) {
        $savedCart = json_decode($order->txn_cart, 1);
    }
    $grand_total = ($savedCart["discountPrice"] - $savedCart["couponFree"]) + $savedCart["deliveryFee"];
    ?>

    @foreach($order_details as $order_detail)
        <tr>
            <td>
                <p>
                    {{$order_detail->product ? ucfirst(filter_string($order_detail->product->title)) : '' }}
                </p>
                @if(!empty($order_detail->offer_text))
                    <?php
                    $offer = json_decode($order_detail->offer_text, 1);
                    ?>
                    @if(!empty($offer) && is_array($offer))
                        <p>
                            <strong>Offer: </strong>
                            <small>
                                {{ @$offer["name"] }}
                                @if($offer["type"] === \App\Models\Offer::TYPE_PERCENT) ({{ round($offer["off"], 1). '% off' }}) @endif
                                @if($offer["type"] === \App\Models\Offer::TYPE_PRICE) ({{ '£'.round($offer["off"], 1). ' off' }}) @endif
                            </small>
                        </p>
                    @endif
                @endif
            </td>
            <td align="center">
                {{ucfirst(filter_string($order_detail->qty))}}
            </td>
            <td align="right">
              {{ucfirst(filter_string($order_detail->qty))}} x {{number_format($order_detail->active_price,2)}}
            </td>
        </tr>
    @endforeach

    @if(!empty($order->delivery_method_title) && $order->delivery_method_title)

        <tr>
            <td colspan="2" align="right">
                <strong><?php echo (!empty($order->delivery_method_title)) ? filter_string($order->delivery_method_title) : ''; ?></strong><br>
                <small><?php echo (!empty($order->delivery_method_short_desc)) ? filter_string($order->delivery_method_short_desc) : ''; ?></small>
            </td>
            <td align="right">
                &pound;<?php echo (!empty($order->delivery_method_title)) ? number_format(trim($order->delivery_price_charged), 2) : ''; ?>
            </td>
        </tr>
    @endif

    @if(!empty($order) && !empty($order->coupon_code_id))
        <tr>
            <td colspan="3" align="right"> <strong> Coupon Code </strong> </td>
            <td colspan="2" align="left"> -&pound;{{ number_format($savedCart["couponFree"], 2) }} {{ $order->coupon_type === "FIXED_PRICE" ? "" : "(".$order->coupon_type_percent_value."%)" }}</td>
        </tr>
    @endif



    <tr>

        <td align="right" colspan="2"><strong>Total: </strong> </td>
        <td class="grey-bg" align="right">
             <strong> &pound;<?php echo number_format($grand_total, 2); ?> </strong>
        </td>

    </tr>

</table>

