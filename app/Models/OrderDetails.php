<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Maf;
use Illuminate\Support\Facades\Log;

/**
 * @method static firstOrNew(array $create)
 */
class OrderDetails extends Model
{
    protected $table   = "kod_op_order_details";

    protected $fillable = [
        'hash_id',
        'order_id',
        'active_price',
        'product_id',
        'qty',
        'price_charged',
        'raf_read_status',
        'status',
        'agree_to_terms_and_conditions',
        'approved_declined_note',
        'approved_declined_date',
        'approved_declined_by_user_id',
        'dosage',
        'dosage_label',
        'user_rating',
        'user_rating_text',
        'review_status',
        'review_date_time',
        'is_reviewed',
        "offer_text",
        'created_by_ip',
        'modified_by_ip',
    ];

    public function product() {
        return $this->hasOne(Product::class, 'id', 'product_id');
    }

    /**
     * @param $cart_item
     * @param int $order_id
     * @return OrderDetails
     */

    public static function storeData($cart_item, int $order_id): OrderDetails
    {
        $cart_item = json_decode(json_encode($cart_item), true);
        $product = Product::find($cart_item['item']['id']);
        $product->updateQty($cart_item['qty']);
        $offer = null;
        //Log::info(json_encode($cart_item));
        if (!empty($cart_item["hasOffer"])) {
            $offerRow = Offer::find($cart_item["hasOffer"]);
            $offer = json_encode($offerRow);
        }
        $create_order_details = self::create(
            [
                'hash_id' => generateHashId(),
                'order_id' => $order_id,
                'product_id' => $cart_item['item']['id'],
                'offer_text' => $offer,
                'qty' => $cart_item['qty'],
                'active_price' => $product->new_price,
                'status' => trim('P'),
                'agree_to_terms_and_conditions' => '1',
                'price_charged' => $cart_item['discount_price'],
            ]
        );

        if (array_key_exists('maf', $cart_item['item'])){
            Maf::storeData($cart_item['item'],$create_order_details->id);
        }

        return $create_order_details;

    }
}
