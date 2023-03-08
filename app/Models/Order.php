<?php

namespace App\Models;

use App\Classes\Cart;
use Exception;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @method static firstOrNew(array $order_data)
 * @method static where(string $string, string $string1, int $invoice_no)
 */
class Order extends Model
{

    public const STATUS_PENDING   = "P";
    public const STATUS_DISPENSED = "DISPENSED";
    public const STATUS_COMPLETED = "C";
    public const STATUS_DECLINED  = "D";

    public const STATUSES = [
        self::STATUS_PENDING   => "Pending",
        self::STATUS_DISPENSED => "Dispensed",
        self::STATUS_COMPLETED => "Completed",
        self::STATUS_DECLINED  => "Declined"
    ];


    protected $table   = "kod_op_orders";

    protected $fillable = [
        'qty',
        'price',
        'order_reference_no',
        'hash_id',
        'patient_id',
        'delivery_method_id',
        'delivery_method_title',
        'delivery_method_short_desc',
        'delivery_method_type',
        'delivery_method_type_id',
        'coupon_code_id',
        'coupon_code',
        'coupon_title',
        'coupon_type',
        'coupon_type_percent_value',
        'delivery_price_charged',
        'coupon_code_discount_amount',
        'invoice_no',
        'tracking_code',
        'payment_method',
        'transaction_id',
        'receipt_id',
        'card_token',
        'reference',
        'your_consumer_reference',
        'inform_my_gp',
        'status',
        'completed_by_user_id',
        'completed_date',
        'delivery_date',
        'delivered_by_id',
        'created_by_ip',
        'modified_by_ip',
        'txn_cart',
        'first_name',
        'last_name',
        'email',
        'country',
        'address_1',
        'town_city',
        'postcode',
        'mobile_no',
         
    ];


    /**
     * @throws Exception
     */
    public static function storeData($request, array $gateway_response, string $payment_method) {

        $cart = new Cart(session()->get('cart'));

        $coupon = Order::getCouponPrice();
        $delivery_method = Order::getDeliveryMethodDetails(session()->get('delivery_method_id'));
        $coupon_discount_price = null;
        $percent_value = 0;

        if (!empty($coupon)) {
            if ($coupon->coupon_type == 'FIXED_PRICE') {
                $coupon_discount_price = $coupon->discount_value;
                $percent_value = 0;
            } elseif ($coupon->coupon_type == 'PERCENTAGE') {
                $coupon_discount_price = ($coupon->discount_value/ 100) * $cart->discountPrice;
                $percent_value = $coupon->discount_value;
            }
        }

        $userId = !empty(auth()->user()->id) ? auth()->user()->id : 0;

        $order_data = [
            'hash_id'        => generateHashId(),
            'patient_id'     => $userId,
            'order_reference_no' => date('ymd').time().random_int(0, 999),
            'delivery_method_id'    => session()->get('delivery_method_id'),
            'delivery_method_title' => ($delivery_method) ? $delivery_method->title : null,
            'delivery_method_short_desc' => ($delivery_method) ? $delivery_method->description : null,
            'delivery_method_type' => ($delivery_method) ? $delivery_method->delivery_type : null,
            'delivery_method_type_id' => ($delivery_method) ? $delivery_method->type_id : null,
            'delivery_price_charged' => $cart->deliveryFee,
            'coupon_code_id' => ($coupon) ? $coupon->id : null,
            'coupon_code' => ($coupon) ? $coupon->coupon_code : null,
            'coupon_title' => ($coupon) ? $coupon->title : null,
            'coupon_type' => ($coupon) ? $coupon->coupon_type : null,

            'coupon_type_percent_value' => ($percent_value) ?: 0,
            'coupon_code_discount_amount' => ($coupon_discount_price) ?: null,

            'invoice_no' => generateUniqueInvoiceNo(),
            'payment_method' => trim($payment_method),
            'transaction_id' => $gateway_response['transaction_id'],
            'receipt_id' => $gateway_response['receipt_id'],
            'card_token' => $gateway_response['card_token'],
            'reference' => $gateway_response['reference'],
            'your_consumer_reference' => $gateway_response['your_consumer_reference'],
            'inform_my_gp' => $gateway_response['inform_my_gp'],
            'status'          => trim('P'),
            'created_by_ip'   => $request->ip(),
            'qty'             => $cart->totalQty,
            'price'           => $cart->discountPrice,
            'txn_cart'        => json_encode($cart)
        ];
        $create_order = self::firstOrNew( $order_data );
        $create_order->save();

        if($coupon)
            $coupon->update(['usage_total' => $coupon->usage_total + 1]);

        return $create_order;
    }

    public static function couponFromSession() {
        return Order::getCouponPrice();
    }

//    private static function getDeliveryPrice($id) {
//        if (!empty($id)) {
//            $delivery_method = DeliveryMethods::where('id', $id)->first();
//            if ($delivery_method) {
//                return number_format($delivery_method->price, 2);
//            }
//        }
//    }

    private static function getCouponPrice() {
        $is_coupon_failed = session()->get('is_coupon_failed');
        $td_coupon_code = session()->get('td_coupon_code');
        if ($td_coupon_code && !$is_coupon_failed) {
            $coupon = Coupon::where('coupon_code', $td_coupon_code)->where('status', 1)->first();
            if ($coupon) {
                return $coupon;
            }
        }
    }

    /**
     * @param $id
     * @return DeliveryMethods
     */
    private static function getDeliveryMethodDetails($id): DeliveryMethods
    {
        return DeliveryMethods::where('id', $id)->first();
    }

    /**
     * @return HasMany
     */
    public function orderDetails(): HasMany
    {
        return $this->hasMany(OrderDetails::class, 'order_id');
    }

    /**
     * @return HasMany
     */

    public function patientOrderAddress()
    {
        return $this->hasOne(PatientOrderAddress::class, 'order_id');
    }

    /**
     * @return HasMany
     */
    public function maforms(): HasMany
    {
        return $this->hasMany(MedicalAssessmentForm::class, 'order_id', 'id');
    }

}
