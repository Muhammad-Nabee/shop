<?php

namespace App\Http\Controllers;

use App\Helpers\CommonHelper;
use App\Http\Traits\GetCartTotalPrices;
use App\Models\Coupon;
use App\Models\DeliveryMethods;
use App\Models\FilledRaf;
use App\Models\GlobalSetting;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\PatientAddresses;
use App\Models\PatientOrderAddress;
use App\Models\Stock;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

use App\Http\Traits\CommanTrait;
use App\Models\Patient;
use App\Models\EmailTemplate;

class OrdersController extends Controller
{
    use GetCartTotalPrices, CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }

    public function reCheckMedicineStatus() {
        // Check for Medicine, Section, Category, Strength and Quantity
        $cart_data = (Session::get("td_cart")) ? Session::get("td_cart") : array() ;
        $proceed = true;
        if (!empty($cart_data)) {
            foreach ($cart_data as $key => $cart_item) {

                if ($cart_item && isset($cart_item['cat_medicine'])) {
                    $cat_medicine = $cart_item['cat_medicine'];
                    $qty = $cart_item['qty'];
                    $medicine_proceed_status = $this->checkMedicineStatus($cat_medicine);
                    if ($medicine_proceed_status == false) {
                        $proceed = false;
                        $cart_data[$key]['process'] = '0';
                        Session::put("td_cart", $cart_data);
                    }

                    $medicine_proceed_out_of_stock_status = $this->checkMedicineStock($cat_medicine, $qty);
                    if ($medicine_proceed_status == true) {
                        if ($medicine_proceed_out_of_stock_status == false) {
                            $proceed = false;
                            $cart_data[$key]['process'] = '0';
                            Session::put("td_cart", $cart_data);
                        }
                    }
                    if ($medicine_proceed_status == true && $medicine_proceed_out_of_stock_status == true) {

                        $cart_data[$key]['process'] = '1';
                        Session::put("td_cart", $cart_data);

                    }

                }
            }
        }
        $html_data = [];

        if ($proceed == false) {

            $show_modal = true;

            if(Session::get('td_coupon_code') && !Session::get('is_coupon_failed')) {

                $coupon = Coupon::where('coupon_code', Session::get("td_coupon_code"))->where('status', 1)->first();
            }

            if (Auth::user()->country_id == '231') {
                // UK
                $delivery_methods = DeliveryMethods::where('status', 1)->whereIn('type_id', ['1','2'])->where('delivery_type', 'Local')->get();
                $min_value = GlobalSetting::where('setting_key', 'local_delivery_purchase_limit')->first();
                $is_delivery_free = GlobalSetting::where('setting_key', 'Is_delivery_free_local')->first();
                $free_delivery = DeliveryMethods::where('status', 1)->where('type_id', '3')->where('delivery_type', 'Local')->first();
            } else {
                $delivery_methods = DeliveryMethods::where('status', 1)->where('type_id', '1')->where('delivery_type', 'International')->get();
                $min_value = GlobalSetting::where('setting_key', 'International_delivery_purchase_limit')->first();
                $is_delivery_free = GlobalSetting::where('setting_key', 'Is_delivery_free_international')->first();
                $free_delivery = DeliveryMethods::where('status', 1)->where('type_id', '3')->where('delivery_type', 'International')->first();
            }


            $html_data = view('frontend.re_check_cart')
                ->with('coupon', @$coupon)
                ->with('min_value', $min_value)
                ->with('free_delivery', $free_delivery)
                ->with('is_delivery_free', $is_delivery_free)
                ->with('delivery_methods', $delivery_methods)
                ->render();
        } else {
            $show_modal = false;
        }
        return response()->json(['html_data' => $html_data, 'show_modal' => $show_modal]);

    }

    public function bypassPaymentProcess(Request $request) {
        if (!Auth::check()) {
            return redirect('treatments/signin');
        }

//        return $request;

        $good_to_go = true;

        $coupon = Order::couponFromSession();
        // Check For Coupon Code Again
        if ($coupon) {
            $good_to_go = $this->isCouponCodeValid($coupon->coupon_code);
        }

        if ($good_to_go) {
            $payment_gateway_response = [
                'transaction_id' => 'TEST_BYPASS_PAYMENT',
                'receipt_id' => 'TEST_BYPASS_PAYMENT',
                'card_token' => 'TEST_BYPASS_PAYMENT',
                'reference' => 'TEST_BYPASS_PAYMENT',
                'your_consumer_reference' => 'TEST',
            ];

            $this->saveOrder($request, $payment_gateway_response, 'SAGEPAY');

            // return 'success...';

            Session::forget(['td_cart', 'delivery_method_id', 'inform_my_gp', 'is_coupon_failed', 'td_coupon_code', 'td_coupon_policy_failed']);
            return redirect('thank-you');
        } else {
            Session::put('td_coupon_code', '');
            Session::put('is_coupon_failed', '1');
            Session::flash('raf_error','Coupon code is not valid');
            return redirect()->back();
        }

    }

    private function saveOrder($request, $gateway_response = '', $payment_method = '') {

        if (!empty($gateway_response) && !empty($payment_method)) {

            $cart_data = Session::get('td_cart');
            if (!empty($cart_data)) {

                $inform_my_gp = (Session::get('inform_my_gp')) ? Session::get('inform_my_gp') : '0';
                $gateway_response['inform_my_gp'] = $inform_my_gp;

                $current_cart_prices = $this->getTotalPrice();

                // Get loggedin patient details
                $patient = Patient::where('id', Auth::user()->id)->first();

                $order_store = Order::storeData($request, $gateway_response, $payment_method, $current_cart_prices);
                if ($order_store) {

                    // Save Order Details
                    $this->saveOrderDetails($cart_data, $order_store->id);

                    // Save RAF
                    $this->saveRAFProcess($cart_data, $order_store->id);

                    // Save Patient Order Addresses
                    $this->savePatientOrderAddress($order_store->id);

                    ////////// Start => Send emails //////////

                    // 1 - Send email to admin

                    $email_template = EmailTemplate::where('id', 9)->first();

                    $to_email_address = $this->pharmacy_info->email_address_primary;
                    $from_email_address = $this->pharmacy_info->email_address_secondary;
                    $reply_to_email_address = $patient->email;
                    $email_from_text = "Online Doctor";

                    $email_subject = $email_template->email_subject;
                    $email_body = $email_template->email_body;

                    $admin_dashboard = '<a href="https://admin01.0-1pharmatests.co.uk"> dashboard </a>';

                    $search_arr = array(
                        '[DASHBOARD]',
                    );

                    $replace_arr = array(
                        $admin_dashboard
                    );

                    $email_body = str_replace($search_arr, $replace_arr, $email_body);

                    $attachment_arr = array();

                    $this->send_email_ses(
                        $to_email_address,
                        $from_email_address,
                        $reply_to_email_address,
                        $email_from_text,
                        $email_subject,
                        $email_body,
                        $attachment_arr
                    );

                    // 2 - Send email to customer

                    $email_template = EmailTemplate::where('id', 10)->first();

                    $to_email_address = $patient->email;
                    $from_email_address = $this->pharmacy_info->email_address_secondary;
                    $reply_to_email_address = $this->pharmacy_info->email_address_primary;
                    $email_from_text = "Online Doctor";

                    $email_subject = $email_template->email_subject;
                    $email_body = $email_template->email_body;

                    $admin_dashboard = '<a href="https://admin01.0-1pharmatests.co.uk"> dashboard </a>';

                    $order_table = $this->getPatientOrderCompleteTable();

                    $search_arr = array(
                        '[FIRST_NAME]',
                        '[LAST_NAME]',
                        '[ORDER_NUMBER]',
                        '[ORDER_DATE]',
                        '[ORDER_TIME]',
                        '[ORDER_TABLE]',
                    );

                    $replace_arr = array(
                        $patient->first_name,
                        $patient->last_name,
                        $order_store->invoice_no,
                        date('d/m/Y', strtotime($order_store->created_at)),
                        date('g:i A', strtotime($order_store->created_at)),
                        $order_table
                    );

                    $email_body = str_replace($search_arr, $replace_arr, $email_body);

                    $attachment_arr = array();

                    $this->send_email_ses(
                        $to_email_address,
                        $from_email_address,
                        $reply_to_email_address,
                        $email_from_text,
                        $email_subject,
                        $email_body,
                        $attachment_arr
                    );

                    /////////// End => Send emails ///////////

                }

            } else {
                return redirect('/')->send();
            }
        } else {
            return redirect('/')->send();
        }

        return true;

    }

    private function getPatientOrderCompleteTable() {
        return view('frontend.emails.patient_order_completed')->render();
    }

    private function saveRAFProcess($cart_data, $order_id) {

        if ($cart_data) {
            foreach ($cart_data as $key => $cart_item) {
                if($cart_item && isset($cart_item['cat_medicine'])){
                    $cat_medicine_exploded = explode('-', $cart_item['cat_medicine']);
                    foreach ($cart_item['cat_raf'] as $raf_key => $raf_value) {
                        $raf_create = [
                            'hash_id' => generateHashId(),
                            'order_id' => trim($order_id),
                            'med_cat_id' => trim($key),
                            'medicine_id' => trim($cat_medicine_exploded[0]),
                            'strength_id' => trim($cat_medicine_exploded[1]),
                            'quantity_id' => trim($cat_medicine_exploded[2]),
                            'raf_id' => trim($cart_item['cat_raf']['raf_id']),
                            'raf_key' => $raf_key,
                            'raf_value' => $this->checkIfRafValueArray($raf_value),
                        ];

                        if($raf_key != 'raf_id' && $raf_key != 'category_id' && $raf_key != 'i_agree') {
                            $raf_saved = FilledRaf::create($raf_create);
                        }
                    }
                }
            }
        }

    }

    private function checkIfRafValueArray($raf_value) {

        if( is_array($raf_value) ){
            $raf_new_value = implode(',', $raf_value);
        } else {
            $raf_new_value = $raf_value;
        }
        return $raf_new_value;
    }

    private function savePatientOrderAddress($order_id) {

        $patient_address = PatientAddresses::where('patient_id', Auth::user()->id)->first();
        if ($patient_address) {
            PatientOrderAddress::storeData($patient_address, $order_id);
        }
    }

    private function saveOrderDetails($cart_data, $order_id) {

        if ($cart_data) {
            foreach ($cart_data as $key => $cart_item) {
                if ($cart_item && isset($cart_item['cat_medicine'])) {
                    if ($cart_item['process'] == '1') {
                        $cat_medicine_exploded = explode('-', $cart_item['cat_medicine']);
                        $medicine_id = $cat_medicine_exploded[0];
                        $strength_id = $cat_medicine_exploded[1];
                        $quantity_id = $cat_medicine_exploded[2];
                        $medicine_price = CommonHelper::getMedicinePricingDetails($medicine_id, $strength_id, $quantity_id);
                        $medicine_price_charged = ($medicine_price->discount_price && $medicine_price->discount_price != '0.00') ? number_format($medicine_price->discount_price, 2) : number_format($medicine_price->price, 2);
                        $saved_order_details = OrderDetails::storeData($cart_item, $cat_medicine_exploded, $order_id, $medicine_price_charged);
                        if ($saved_order_details) {
                            $med_stock = Stock::where('medicine_id', $medicine_id)
                                ->where('strength_id', $strength_id)
                                ->where('quantity_id', $quantity_id)
                                ->first();
                            if ($med_stock) {
                                $new_stock_val = $med_stock->stock_level - $cart_item['qty'];
                                $new_stock_val = ($new_stock_val >= 0) ? $new_stock_val : '0';
                                $med_stock->update(
                                    [
                                        'stock_level' => $new_stock_val
                                    ]
                                );
                            }
                        }
                    }
                }
            }
        }

    }

    private function isCouponCodeValid($coupon_code = ''){
        $coupon_code = ($coupon_code) ? filter_string($coupon_code) : '' ;
        if ($coupon_code) {

            $coupon = Coupon::where('coupon_code', $coupon_code)->where('status', 1)->first();
            $is_coupon_failed = false;
            if (!empty($coupon)) {

                if ($coupon->has_expiry_date) {

                    $today = date('Y-m-d');
                    $expiry_date = ($coupon->expiry_date_time && $coupon->expiry_date_time != '0000-00-00 00:00:00') ? date('Y-m-d', strtotime($coupon->expiry_date_time)) : '' ;
                    if( $today > $expiry_date ){
                        $is_coupon_failed = true;
                    }

                } else {

                    if ($coupon->usage_limit && ($coupon->usage_limit > 0)) {
                        $is_coupon_failed = ($coupon->usage_total < $coupon->usage_limit) ? false : true ;
                    } else {
                        $is_coupon_failed = true;
                    }
                }


            } else {
                $is_coupon_failed = true;
            }

            if ($is_coupon_failed == true) {
                return false;
            } else {
                return true;
            }
        }
        return true;
    }

    public function thankYou(){
        return view('frontend.thank_you');
    }
}
