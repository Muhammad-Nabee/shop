<?php

namespace App\Http\Controllers;

use App\Models\ProductReviews;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class ProductReviewController extends Controller
{


    public function getReviewForm($order_detail_hash_id) {

        $order_detail = OrderDetails::where('hash_id', $order_detail_hash_id)->first();

        return view('frontend.reviews.add_edit_review_form')->with('order_detail',$order_detail)->render();

    }

    public function submitReview(Request $request) {

        $this->validate($request,[
            'rating' => 'required|min:1|max:5',
            'rating_text' => 'required',
        ]);
        $order_detail = OrderDetails::where('hash_id', $request->hash_id)->first();
        if ($order_detail) {
            $check_review = ProductReviews::where('order_id', $order_detail->order_id)
                ->where('product_id', $order_detail->product_id)
                ->where('patient_id', Auth::user()->id)
                ->first();
            if ($check_review) {

                Session::flash('message', 'Review already exists!');
                 return response()->success('Review already exists!!');
            }
        }

        $stored = ProductReviews::storeData($request, $order_detail);

        if($stored){

            if ($order_detail) {
                $order_detail->update(
                    [
                        'is_reviewed' => '1'
                    ]
                );
            }
              Session::flash('message', 'Review added successfully!');

            return response()->success('Review added successfully!');
        }else{
            Session::flash('message', 'Oops! Somethings went wrong, please try again later.!');

            return response()->failed('Oops! Somethings went wrong, please try again later.');

        }
    }

    public function getReview(Request $request){

        $review_limit = 10;
        $product_hash_id = $request->product_id;
        $paginate_number = $request->paginate_number;
        $product = Product::where('hash_id',$product_hash_id)->where('status', 1)->first();

        if($product){
           if($paginate_number == 0){
             $skip_reviews=0;
           }else{
             $skip_reviews = $paginate_number * $review_limit;
           }

           $allowed_reviews = Product::getAlloweReviews();

           $reviews = ProductReviews::with('reviewPatient')->where('product_id', $product->id)
               ->orderBy("rating", "DESC")
               ->whereIn('rating', $allowed_reviews)->where('status','APPROVED')
               ->skip($skip_reviews)->take($review_limit)->first();



           $next_skip_reviews = $skip_reviews+$review_limit;

           $next_review_count = ProductReviews::with('reviewPatient')->where('product_id', $product->id)
               ->orderBy("rating", "DESC")
               ->whereIn('rating', $allowed_reviews)->where('status','APPROVED')
               ->skip($next_skip_reviews)->take($review_limit)->get()->count();
        
           $renderedView = view('frontend.components.review_render')->with('reviews',$reviews)->with('product',$product)->render();

           return response()->json([
            'html_data' => $renderedView,
            'next_review_count'=> $next_review_count
           ]);

        }

    }
}