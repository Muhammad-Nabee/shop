<?php

namespace App\Http\Controllers;

use App\Classes\Cart;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rule;
use Illuminate\View\View;
use App\Http\Traits\CommanTrait;

class CartController extends Controller
{
    /**
     * @param Request $request
     * @return Application|Factory|View
     */

    use CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }

    public function getCart(Request $request)
    {

        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $jsonCart = json_decode(json_encode($cart), true);
        if (strtoupper($request->method()) === "GET")
            return $jsonCart;
        return view('frontend.components.cartListNew', [ 'cart' => $jsonCart ]);

    }

    public function viewCart(){

       $cart = Session::get('cart');

       $jsonCart = json_decode(json_encode($cart), true);


       return view('frontend.checkout.view-cart',['cart' => $jsonCart]);


    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function addToCart(Request $request): JsonResponse
    {
    //    dd($request->all());
        $request->validate(
            [
                'item_id' => ['required', Rule::exists('kod_products', 'id')->where('status', 1)],
                'qty'     => ['required', 'numeric', 'min:1', 'max:20']
            ]
        );

        $item = Product::where('id', $request->get('item_id'))->with(['category','media'])->first();

        // $cart = new Cart($oldCart);
        // if (($item->type === Product::TYPE_POM || $item->type === Product::TYPE_POM_GSM) && !array_key_exists($item->id, $cart->items)) {
        //     $jsonCart = json_decode(json_encode($cart), true);
        //     $view = view('frontend.components.medicalAssessmentForm', ['product' => $item, 'cart' =>  $jsonCart, 'qty' => $request->get('qty', 1), 'increment' => $request->get('increment', 1)]);
        //     return response()->json(['questionnaire' => 1, 'view' => $view.'']);
        // }

        $oldCart = Session::get('cart');

        $cart = new Cart($oldCart);

        if (!$cart->checkLimit($request->get('item_id'), $request->get('qty'), $request->get('increment', 1)))
            return response()->json([
                'message' => "You can't purchase more than ".$item->quantity_allowe_to_buy.' items of '.$item->title
            ], 403);

        $cart->add($item, $item->id, $request->get('qty', 1));
   
        session()->put('cart', $cart);
        $jsonCart = json_decode(json_encode($cart), true);
        $view = view('frontend.components.cartList', ['cart' => $jsonCart ]);
        return response()->json(['questionnaire' => 0, 'view' => $view.'' ]);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function addToCartWithForm(Request $request): JsonResponse
    {
        $request->validate([
            'item_id'  => ['required', Rule::exists('kod_products', 'id')->where('status', 1)],
            'qty'      => ['required', 'numeric', 'min:1', 'max:20'],
            'age'      => ['required', 'numeric'],
            'symptoms' => ['required', 'max:255'],
            'pregnant_status'  => ['required', 'in:0,1'],
            'condition_status' => ['required', 'in:0,1'],
            'medicine_status'  => ['required', 'in:0,1'],
            'condition' => [$request->get('condition_status', 0) == 0 ? 'nullable' : 'required', 'max:255'],
            'medicine'  => [$request->get('medicine_status', 0)  == 0 ? 'nullable' : 'required', 'max:255']
        ]);

        $maf = $request->except(['_token', 'item_id', 'qty']);
        $item = Product::where('id', $request->get('item_id'))->with(['category','media'])->first();
        $item->maf = $maf;
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $cart->add($item, $item->id, $request->get('qty', 1), $request->get('increment', 1));
        session()->put('cart', $cart);
        $jsonCart = json_decode(json_encode($cart), true);
        $view = view('frontend.components.cartList', ['cart' => $jsonCart ]);
        $reload = $request->input('increment', 1) == 1 ? 0 : 1;

        return response()->json(['questionnaire' => 0, 'view' => $view.'', 'reload' => $reload ]);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function removeFromCart(Request $request): JsonResponse
    {
        $request->validate(
            [
                'item_id' => ['required', Rule::exists('kod_products', 'id')->where('status', 1)]
            ]
        );
        $item = Product::where('id', $request->get('item_id'))->with(['category','media'])->first();
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $cart->remove($item, $item->id);
        session()->put('cart', $cart);
        $jsonCart = json_decode(json_encode($cart), true);
        $view = view('frontend.components.cartList', ['cart' => $jsonCart ]);
        return response()->json(['view' => $view.'' ]);
    }

    /**
     * @param Request $request
     * @return RedirectResponse
     */
    public function removeItemCompletely(Request $request): RedirectResponse
    {
        $request->validate(
            [
                'item_id' => ['required', Rule::exists('kod_products', 'id')->where('status', 1)]
            ]
        );
        $item = Product::where('id', $request->get('item_id'))->with(['category','media'])->first();
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $cart->removeCompletely($item, $item->id);
        session()->put('cart', $cart);
        session()->flash('message', $item->title." is removed from cart");
        return redirect()->back();
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function clearCart(Request $request): JsonResponse
    {
        $cart = new Cart(null);
        session()->put('cart', $cart);
        $jsonCart = json_decode(json_encode($cart), true);
        $view = view('frontend.components.cartList', ['cart' => $jsonCart ]);
        return response()->json(['view' => $view.'' ]);
    }
}