<?php

namespace App\Http\Controllers;

use App\Classes\Cart;
use App\Http\Traits\CommanTrait;
use App\Models\Coupon;
use App\Models\Country;
use App\Models\DeliveryMethods;
use App\Models\EmailTemplate;
use App\Models\GlobalSetting;
use App\Models\Maf;
use App\Models\Order;
use Illuminate\Support\Facades\Session;
use App\Models\OrderDetails;
use App\Models\Patient;
use App\Models\PatientAddresses;
use App\Models\PatientOrderAddress;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\Auth;
use App\Classes\SquarePaymentGateway;
use Illuminate\Validation\ValidationException;
use App\Models\UserAttempt;

use Throwable;

class CheckoutController extends Controller
{
    use CommanTrait;

    protected $viewPath;

    public function __construct()
    {
        $this->commanData();
        $this->viewPath = 'frontend.checkout.';
    }

    public function auth()
    {
        return view($this->viewPath.'auth');
    }

    public function addresses()
    {

        $cart = session()->get('cart');
        $cart = json_decode(json_encode($cart), true);
        return view($this->viewPath.'addresses', compact('cart'));

    }

    public function storeAddresses(Request $request)
    {

        $request->validate(
            [
                'd_address_1' => ['required'],
                'd_town'      => ['required'],
                'd_postcode'  => ['required'],
                'b_address_1' => ['required'],
                'b_town'      => ['required'],
                'b_postcode'  => ['required'],
                'b_first_name' => ['required'],
                'b_last_name'  => ['required'],
                'd_first_name' => ['required'],
                'd_last_name'  => ['required']
            ],
            [
                'd_address_1.required' => "Delivery address 1 field is required",
                'd_town.required'      => "Delivery town/city field is required",
                'd_postcode.required'  => "Delivery postcode field is required",
                'b_address_1.required' => "Billing address 1 field is required",
                'b_town.required'      => "Billing town/city field is required",
                'b_postcode.required'  => "Billing postcode field is required",
                'b_first_name' => 'Billing First Name Required',
                'b_last_name'  => 'Billing Last Name Required',
                'd_first_name' => 'Delivery First Name Required',
                'd_last_name'  => 'Delivery Last Name Required'

            ]
        );

        $id = empty(auth()->user()->id) ? 0 : auth()->user()->id;
        $pAddress = PatientAddresses::where('patient_id', $id)->first();
        if(!$pAddress)
            (new PatientAddresses())->storeData($request);
        else
            (new PatientAddresses())->updateData($request, $pAddress->hash_id);

        $addresses = $request->except(['_token', 'ajax']);
        $cart = session()->get('cart');
        $cart = new Cart($cart);
        $cart->setAddresses($addresses);
        session()->put('cart', $cart);
        if ((int) $request->get('ajax', 0) == 1)
            return response()->json(['reload' => 1]);

        return redirect('checkout');

    }

    public function checkoutNew(){
        $userId = Auth::id();
        $user=Patient::where('id',$userId)->first();

        $jsonUser = json_decode(json_encode($user), true);
        $cart = Session::get('cart');
        $jsonCart = json_decode(json_encode($cart), true);
        $countries=Country::get();

        return view($this->viewPath.'checkout-new',['cart' => $jsonCart,'userdetail'=>$jsonUser,'countries'=>$countries]);
    }


    public function checkout(Request $request)
    {

        UserAttempt::deleteData($request);
        $cart = new Cart(session()->get('cart'));

        $id = empty(auth()->user()->id) ? 0 : auth()->user()->id;
        $patient_addresses = PatientAddresses::where('patient_id', $id)->first();

        // if (!$patient_addresses)
        //     return redirect('checkout/addresses');

        if (count($cart->addresses)<1) {
            $cart->setAddresses($patient_addresses->toArray());
            session()->put('cart', $cart);
        }

        $cart = json_decode(json_encode($cart), true);

        if(session()->get('td_coupon_code') && !session()->get('is_coupon_failed'))
            $coupon = Coupon::where('coupon_code', session()->get("td_coupon_code"))->where('status', 1)->first();

        if (!empty(auth()->user()->country_id) && auth()->user()->country_id == Patient::UK_COUNTRY) {
            $delivery_methods = DeliveryMethods::where('status', 1)->whereIn('type_id', ['1','2'])->where('delivery_type', 'Local')->get();
            $min_value = GlobalSetting::where('setting_key', 'local_delivery_purchase_limit')->first();
            $is_delivery_free = GlobalSetting::where('setting_key', 'Is_delivery_free_local')->first();
            $free_delivery = DeliveryMethods::where('status', 1)->where('type_id', '3')->where('delivery_type', 'Local')->first();
        } else {
            $delivery_methods = DeliveryMethods::where('status', 1)->whereIn('type_id', ['1'])->where('delivery_type', 'International')->get();
            $min_value = GlobalSetting::where('setting_key', 'International_delivery_purchase_limit')->first();
            $is_delivery_free = GlobalSetting::where('setting_key', 'Is_delivery_free_international')->first();
            $free_delivery = DeliveryMethods::where('status', 1)->where('type_id', '3')->where('delivery_type', 'International')->first();
        }

        return view($this->viewPath.'checkout',
            [
                'cart'              => $cart,
                'delivery_methods'  => $delivery_methods,
                'min_value'         => $min_value,
                'is_delivery_free'  => $is_delivery_free,
                'free_delivery'     => $free_delivery,
                'coupon'            => !empty($coupon) ? $coupon : false,
                'patient_addresses' => $patient_addresses
            ]
        );
    }

    /**
     * @param $delivery_method_id
     * @return Application|RedirectResponse|Redirector
     */
    public function updateDeliveryMethod($delivery_method_id) {
        if (!empty($delivery_method_id)) {
            session()->put('delivery_method_id', $delivery_method_id);
            session()->flash('raf_success','Delivery method updated successfully.');
        }
        else
            session()->flash('raf_error','Oops! Somethings went wrong, please try again later.');
        return redirect('checkout');
    }

    /**
     * @param Request $request
     * @return Application|RedirectResponse|Redirector
     */


    public function coupon(Request $request)
    {
        $request->validate(['coupon_code' => ['required']]);
        $this->handleCouponCodePost($request->get('coupon_code'));
        return redirect('checkout');
    }

    /**
     * Pass Payment Gateway
     * @param Request $request
     * @return Application|RedirectResponse|Redirector
     */

    public function bypassPaymentProcess(Request $request){

        if (!Auth::check()) {
            return redirect('checkout/auth');
        }
        return view('frontend.payment');
    }




    /**
     * @throws Throwable
     */
    // public function payNow(Request $request)
    // {
    //     // session()->forget('delivery_method_id');
    //     if (!session()->has('delivery_method_id')) {
    //         session()->flash('delivery_method_message', "Please select delivery method to proceed with your order");
    //         return redirect()->back();
    //     }
    //     $noPaymentCheck = GlobalSetting::where('setting_key', GlobalSetting::NO_PAYMENT_KEY)->first();
    //     if ($noPaymentCheck && $noPaymentCheck->setting_value == 1) {
    //         $pgResponse = [
    //             'transaction_id' => 'TEST_BYPASS_PAYMENT',
    //             'receipt_id'     => 'TEST_BYPASS_PAYMENT',
    //             'card_token'     => 'TEST_BYPASS_PAYMENT',
    //             'reference'      => 'TEST_BYPASS_PAYMENT',
    //             'your_consumer_reference' => 'TEST',
    //         ];
    //         $this->saveOrder($request, $pgResponse);
    //         $user = auth()->user();
    //         auth()->guard()->logout();
    //         session()->invalidate();
    //         session()->flush();
    //         session()->regenerateToken();
    //         Auth::guard('web')->login($user);
    //         return redirect('thank-you');
    //     }
    //     return redirect('/'); // TODO redirect to payment page
    // }

    public function payNow(Request $request){

        $request->validate(
            [
            'total_amount' => ['required'],
            'nonce'      => ['required'],
            ],
        );
        $square_payment_gateway = new SquarePaymentGateway();
        $grand_total            = cartPrice();
        $pay_now                = $square_payment_gateway->payNow($request,$grand_total);
        $payment                = $pay_now['data'];
        foreach (json_decode($payment,true) as $key => $value) {
            $transactionId = $value['order_id'];
        }

        if(!empty($transactionId)){

            $payment_method = 'SQUARE';
            $status = '0';
            $payment_gateway_response = [
                'transaction_id' => $transactionId,
                'receipt_id' => 'SQUARE',
                'card_token' => 'SQUARE',
                'reference' => 'SQUARE',
                'your_consumer_reference' => 'SQUARE',
            ];
            $order_save = $this->saveOrder($request,$payment_gateway_response,$payment_method,$grand_total);
            if($order_save){

                $user = auth()->user();
                auth()->guard()->logout();
                session()->invalidate();
                session()->flush();
                session()->regenerateToken();
                Auth::guard('web')->login($user);
                return redirect('thank-you');

            }else{

              throw ValidationException::withMessages(['error' => 'Order not save successfully']);

            }
        }else{

              throw ValidationException::withMessages(['error' => 'Transaction accur issue ,try again']);

        }
    }

    /**
     * @throws Throwable
     */
    private function saveOrder(Request $request, array $gateway_response, string $payment_method = 'SAGEPAY')
    {


        if (!empty($gateway_response) && !empty($payment_method)) {
            $gateway_response['inform_my_gp'] = "0";
            $id = !empty(auth()->user()->id) ? auth()->user()->id : 0;
            $patient = Patient::where('id', $id)->first();

            $order_store = Order::storeData($request, $gateway_response, $payment_method);
            if ($order_store) {

                $this->saveOrderDetails($order_store->id);
                $this->savePatientOrderAddress($order_store->id);

                ////////// Start => Send emails //////////

                // 1 - Send email to admin

                $email_template = EmailTemplate::where('id', EmailTemplate::ADMIN_ORDER_RECEIVED)->first();

                $signature = signature();


                $to_email_address       = $this->pharmacy_info->email_address_primary;
                $from_email_address     = $this->pharmacy_info->email_address_secondary;
                $reply_to_email_address = $patient->email;
                $email_from_text        = $this->pharmacy_info->pharmacy_name;

                $email_subject = $email_template->email_subject;
                $email_body = $email_template->email_body;

                $admin_dashboard = '<a href="'.env('WEBSITE_DASHBOARD').'"> dashboard </a>';

                $search_arr = array(
                    '[DASHBOARD]',
                    '[PHARMACY_SIGNATURES]'
                );

                $replace_arr = array(
                    $admin_dashboard,
                    $signature
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

                $email_template = EmailTemplate::where('id', EmailTemplate::CUSTOMER_ORDER_COMPLETED)->first();

                $to_email_address       = $patient->email;
                $from_email_address     = $this->pharmacy_info->email_address_secondary;
                $reply_to_email_address = $this->pharmacy_info->email_address_primary;
                $email_from_text        = $this->pharmacy_info->pharmacy_name;

                $email_subject = $email_template->email_subject;
                $email_body = $email_template->email_body;

                $order_details = OrderDetails::with('product')->where('order_id', $order_store->id)->orderBy('product_id', 'ASC')->get();

                $order_table = $this->getPatientOrderCompleteTable($order_store,$order_details);

                $search_arr = array(
                    '[FIRST_NAME]',
                    '[ORDER_NUMBER]',
                    '[ORDER_DATE]',
                    '[ORDER_TIME]',
                    '[ORDER_TABLE]',
                    '[PHARMACY_SIGNATURES]'
                );

                $replace_arr = array(
                    ucfirst($patient->first_name),
                    $order_store->invoice_no,
                    date('d/m/Y', strtotime($order_store->created_at)),
                    date('g:i A', strtotime($order_store->created_at)),
                    $order_table,
                    $signature
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

                return $order_store;

            }else{

              throw ValidationException::withMessages(['error' => 'Order not save']);

            }

        }else{

            throw ValidationException::withMessages(['error' => 'Payment facing some issue. Please contact support team.']);

        }

    }

    /**
     * @param string $coupon_code
     */
    private function handleCouponCodePost(string $coupon_code = '')
    {
        $coupon_code = ($coupon_code) ? filter_string($coupon_code) : '' ;
        if ($coupon_code) {
            $coupon = Coupon::where('coupon_code', $coupon_code)->where('status', 1)->first();

            $is_coupon_failed = false;
            if (!empty($coupon)) {
                if (!empty($coupon->has_expiry_date)) {
                    $today = date('Y-m-d');
                    $expiry_date = ($coupon->expiry_date_time && $coupon->expiry_date_time != '0000-00-00 00:00:00') ? date('Y-m-d', strtotime($coupon->expiry_date_time)) : '' ;
                    if( $today > $expiry_date )
                        $is_coupon_failed = true;
                }
                else {
                    if ($coupon->usage_limit && ($coupon->usage_limit > 0))
                        $is_coupon_failed = !($coupon->usage_total < $coupon->usage_limit);
                    else
                        $is_coupon_failed = true;
                }
            }
            else
                $is_coupon_failed = true;

            if ($is_coupon_failed == true) {
                session()->put('td_coupon_code', '');
                session()->put('is_coupon_failed', '1');
            } else {
                $cart = new Cart(session()->get('cart'));
                $current_cart_prices = $cart->discountPrice;

                if ($coupon->coupon_type == 'FIXED_PRICE')
                    $coupon_discount_price = $coupon->discount_value;
                else if ($coupon->coupon_type == 'PERCENTAGE')
                    $coupon_discount_price = ($coupon->discount_value/ 100) * $current_cart_prices;

                if(!empty($coupon_discount_price) && $current_cart_prices >= $coupon_discount_price){
                    session()->put('td_coupon_code', $coupon_code);
                    session()->put('is_coupon_failed', '');
                } else {
                    session()->put('td_coupon_policy_failed', '1');
                    session()->put('td_coupon_code', '');
                }
            }
        }
    }

    /**
     * @param $order_id
     */


    private function saveOrderDetails($order_id)
    {
        $cart = new Cart(session()->get('cart'));
        foreach ($cart->items as $cart_item){
            OrderDetails::storeData($cart_item, $order_id);
        }
    }

    /**
     * @param $order_id
     */
    private function savePatientOrderAddress($order_id)
    {
        $id = !empty(auth()->user()->id) ? auth()->user()->id : 0;
        $patient_address = PatientAddresses::where('patient_id', $id)->first();
        if ($patient_address)
            PatientOrderAddress::storeData($patient_address, $order_id);
    }

    /**
     * @throws Throwable
     */
    private function getPatientOrderCompleteTable($order,$order_details)
    {

        return view('frontend.emails.patient_order_completed')->with('order',$order)->with('order_details',$order_details)->render();

    }
}