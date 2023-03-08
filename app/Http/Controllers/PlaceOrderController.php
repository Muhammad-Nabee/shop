<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classes\Cart;
use App\Http\Requests\PlaceOrderRequest;
use App\Models\Maf;
use App\Models\Order;
use Illuminate\Support\Facades\Session;
use App\Models\OrderDetails;
use App\Models\Patient;
use App\Models\PatientAddresses;
use App\Models\PatientOrderAddress;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Http\RedirectResponse;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\Auth;
use App\Classes\SquarePaymentGateway;
use App\Models\Product;
use Illuminate\Validation\ValidationException;
use App\Models\UserAttempt;
class PlaceOrderController extends Controller
{


    public function placeOrder(PlaceOrderRequest $request)
    {

        $totalPrice = 0;
        $totalquantity = 0;


        $cart = Session::get('cart');

        $jsonCart = json_decode(json_encode($cart) , true);

        if (!empty($jsonCart))
        {
            foreach ($jsonCart['items'] as $key => $each)
            {
                $product = $each['item'];

                $totalquantity += $each['qty'];
                $totalPrice += $product['discount_price'] * $each['qty'];
            }

            $orders_data = [

            'first_name' => $request->b_first_name, 'last_name' => $request->b_last_name, 'email' => $request->b_email, 'country' => $request->b_country, 'address_1' => $request->b_address_1, 'town_city' => $request->b_town_city, 'b_postcode' => $request->b_postcode, 'mobile_no' => $request->b_mobile_no, 'patient_id' =>$request->user_id, //user id
            'price' => $totalPrice, //total price
            'qty' => $totalquantity, //total qantity
            'hash_id' => generateHashId() ,

            ];


            $order = Order::create($orders_data); // kod_op_orders
            $customerAdress=[
                'b_first_name' => $request->b_first_name, 'b_last_name' => $request->b_last_name, 'b_email' => $request->b_email, 'b_country' => $request->b_country, 'b_address_1' => $request->b_address_1, 'b_town' => $request->b_town_city, 'b_postcode' => $request->b_postcode, 'b_mobile_no' => $request->b_mobile_no, 'patient_id' =>$request->user_id,
                'd_first_name' => $request->d_first_name, 'd_last_name' => $request->d_last_name, 'd_address_1' => $request->d_address_1, 'd_email' => $request->b_email, 'd_country' => $request->d_country, 'd_town' => $request->d_town_city, 'd_postcode' => $request->d_postcode, 'd_mobile_no' => $request->b_mobile_no, 'hash_id' => generateHashId() ,
            ];
            PatientAddresses::create($customerAdress);

            $Products_items = [];
            foreach ($jsonCart['items'] as $key => $each)
            {
                $product = $each['item'];
                $product = Product::where('id', $product['id'])->first();
                $Products_items[] = ['hash_id' => generateHashId() , 'order_id' => $order->id, 'product_id' => $product->id, 'qty' => $each['qty'], 'price_charged' => ($each['qty']) * ($product['discount_price']) ,
                ];

            }

            OrderDetails::insert($Products_items); // kod_op_order_details
            $ship_adress = ['hash_id' => generateHashId() , 'order_id' => $order->id, 'b_first_name' => $request->d_first_name, 'b_last_name' => $request->d_last_name, 'email' => $request->email, 'd_address_1' => $request->d_address_1, 'd_country' => $request->d_country, 'd_town' => $request->d_town_city, 'd_postcode' => $request->d_postcode,
            'd_first_name' => $request->b_first_name, 'd_last_name' => $request->b_last_name, 'email' => $request->b_email, 'b_country' => $request->b_country, 'b_address_1' => $request->b_ddress_1, 'b_town' => $request->b_town_city, 'b_postcode' => $request->b_postcode, 'mobile_no'=> $request->b_mobile_no,

            ];


            $shiping_adress=PatientOrderAddress::create($ship_adress); //kod_patients_orders_addresses
            if(!empty($shiping_adress))
            {
             session()->put('cart', []); //session empty
              return redirect()->route('place-orders-succes')->with('message','succses');

            }
            else{
               return redirect()->back();
            }


        }

    }

}