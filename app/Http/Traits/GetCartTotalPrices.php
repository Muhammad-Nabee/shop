<?php


namespace App\Http\Traits;


use App\Helpers\CommonHelper;
use App\Models\Coupon;
use App\Models\DeliveryMethods;
use App\Models\Medicine;
use App\Models\MedicineQuantity;
use App\Models\MedicineStrength;
use App\Models\Stock;
use Illuminate\Support\Facades\Session;
use phpDocumentor\Reflection\Utils;

trait GetCartTotalPrices
{
    public function getTotalPrice() {
        $items_total = '0.00';
        $data = [];
        $cart_items = (Session::get("td_cart")) ? Session::get("td_cart") : array() ;

        if (!empty($cart_items)) {
            foreach($cart_items as $key => $product){
                $cat_medicine = @$product['cat_medicine'];
                if(!empty($cat_medicine)){

                    $exploded_cat_medicine = explode('-', $cat_medicine);

                    $medicine_id = $exploded_cat_medicine[0];

                    $strength_id = $exploded_cat_medicine[1];

                    $quantity_id = $exploded_cat_medicine[2];

                    $medicine_price = CommonHelper::getMedicinePricingDetails($medicine_id, $strength_id, $quantity_id);

                    $item_price = ($medicine_price->discount_price && $medicine_price->discount_price != '0.00') ? number_format($medicine_price->discount_price, 2) : number_format($medicine_price->price, 2) ;

                    $item_price = $product['qty'] * $item_price;

                    $med_status = $this->checkMedicineStatus($cat_medicine);
                    if ($med_status == false) {
                        $item_price = 0;
                    }

                    if ($med_status == true) {
                        $med_stock = $this->checkMedicineStock($cat_medicine, $product['qty']);
                        if ($med_stock == false) {
                            $item_price = 0;
                        }
                    }


                    $items_total = $items_total + $item_price;

                }
            }
            if (!empty(Session::get('delivery_method_id'))) {
                $delivery_method = DeliveryMethods::where('id', Session::get('delivery_method_id'))->first();
                $active_method_price = (!empty($delivery_method) ? $delivery_method->price : 0);
            } else {
                $active_method_price = 0;
            }
            $grand_total = $items_total + $active_method_price;

            $data['sub_total'] = $items_total;
            $data['active_method_price'] = $active_method_price;
            $is_coupon_failed = Session::get('is_coupon_failed');
            $td_coupon_code = Session::get('td_coupon_code');
            if (!empty($td_coupon_code) && !$is_coupon_failed) {
                $coupon = Coupon::where('coupon_code', $td_coupon_code)->where('status', 1)->first();
                if ($coupon) {
                    if ($coupon->coupon_type == 'FIXED_PRICE') {
                        $coupon_discount_price = $coupon->discount_value;
                    } elseif ($coupon->coupon_type == 'PERCENTAGE') {
                        $coupon_discount_price = ($coupon->discount_value/ 100) * $grand_total;
                    }

                    $data['coupon_code'] = $coupon['coupon_code'];

                    $data['coupon_discount_price'] = $coupon_discount_price;

                    $data['grand_total'] = $grand_total - $coupon_discount_price;

                    $data['grand_total_coupon'] = $grand_total;
                }

            } else {
                $data['grand_total'] = $grand_total;

                $data['grand_total_coupon'] = $grand_total;
            }

            return $data;

        } else {
            return false;
        }
    }


    public function checkMedicineStock($cat_medicine = '', $qty = '') {
        $process_status = true;
        if (!empty($cat_medicine)) {
            $exploded_cat_medicine = explode('-', $cat_medicine);
            $medicine_id = $exploded_cat_medicine[0];
            $strength_id = $exploded_cat_medicine[1];
            $quantity_id = $exploded_cat_medicine[2];

            // Check For Out of Stock
            $stock_exists = Stock::where('medicine_id', $medicine_id)
                ->where('strength_id', $strength_id)
                ->where('quantity_id', $quantity_id)
                ->first();
            if ($stock_exists) {
                if ($stock_exists->stock_level < 1) {
                    $process_status = false;
                }elseif (!empty($qty) && $stock_exists->stock_level < $qty) {
                    $process_status = false;
                }
            }
        }

        return $process_status;

    }

    public function checkMedicineStatus($cat_medicine = '') {
        if (!empty($cat_medicine)) {

            $process_status = true;
            $exploded_cat_medicine = explode('-', $cat_medicine);
            $medicine_id = $exploded_cat_medicine[0];
            $strength_id = $exploded_cat_medicine[1];
            $quantity_id = $exploded_cat_medicine[2];

            // Check For Medicine
            $medicine_status = $this->checkMedicineStatusWithCategorySection($medicine_id);
            if ($medicine_status == false) {
                $process_status = false;
            }

            // Check for Strength
            if ($strength_id != 0) {
                $medicine_strength_status = $this->checkMedicineStrength($strength_id);
                if ($medicine_strength_status == false) {
                    $process_status = false;
                }
            }

            // Check for Quantity
            $medicine_qty_status = $this->checkMedicineQuantity($quantity_id);
            if ($medicine_qty_status == false) {
                $process_status = false;
            }

            return $process_status;

        } else {
            $cart_items = (Session::get("td_cart")) ? Session::get("td_cart") : array() ;

        }

    }

    public function checkMedicineStrength($strength_id) {
        $process_status = true;
        $strength = MedicineStrength::where('id', $strength_id)->first();
        if (!empty($strength)) {
            if ($strength->status == 0) {
                $process_status = false;
            }
        }
        return $process_status;

    }

    public function checkMedicineQuantity($quantity_id) {
        $process_status = true;
        $qty = MedicineQuantity::where('id', $quantity_id)->first();
        if (!empty($qty)) {
            if ($qty->status == 0) {
                $process_status = false;
            }
        }
        return $process_status;

    }

    public function checkMedicineStatusWithCategorySection($medicine_id = '') {
        $process_status = true;
        if (!empty($medicine_id)) {
            $medicine = Medicine::where('id', $medicine_id)->first();
            if (!empty($medicine)) {
                if ($medicine->status == 0) {
                    $process_status = false;
                }
                if ($medicine->category) {
                    if ($medicine->category->status == 0) {
                        $process_status = false;
                    }
                    if ($medicine->category->section) {
                        if ($medicine->category->section->status == 0) {
                            $process_status = false;
                        }
                    }
                }
            }
        }

        return $process_status;

    }

}
