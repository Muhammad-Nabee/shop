<?php

namespace App\Http\Controllers;

use App\Http\Traits\CommanTrait;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ReviewAllowe;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\View\View;
use App\Models\ProductReviews;

class ProductController extends Controller
{
    use CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }

    public function show($cSlug, $pSlug)
    {


        $category = ProductCategory::where('seo_url_slug', $cSlug)->where('status', 1)->first();

        if ($category) {

                $product = Product::where('category_id', $category->id)->with('reviews')->where('seo_url_slug', $pSlug)->where('status', 1)->first();
                dd($product);

               if($product){
                $allowed_reviews = Product::getAlloweReviews();
                $reviews = ProductReviews::with('reviewPatient')->where('product_id', $product->id)->orderBy("rating", "DESC")
               ->where('status','APPROVED')->get();

            // //     ->where('product_id', $product->id)
            // //    ->orderBy("rating", "DESC")->whereIn('rating', $allowed_reviews)->where('status','APPROVED')->get();

               $next_review_count = ProductReviews::with('reviewPatient')->where('product_id', $product->id)
               ->orderBy("rating", "DESC")
               ->where('status','APPROVED')->get()->count();
                    $review_avg = 0;
                    if(count($product->reviews) > 0){
                        foreach($product->reviews as $review){
                            $review_avg +=$review->rating;
                        }
                        $review_avg = round($review_avg/count($product->reviews));
                    }

                    $cids = [$category->id, $category->parent_id];
                    $relatedProducts = Product::whereIn('category_id', $cids)->where('seo_url_slug', '!=', $pSlug )->where('status', 1)->get();
                    $breadcrumb_ids = [];
                    $breadcrumbs = $category->getBreadCrumbCategory($breadcrumb_ids,$category);
 dd($product);
                    return view('frontend.products.show_new', ['category' => $category, 'product' => $product, 'relatedProducts' => $relatedProducts,'review_avg' =>  $review_avg,'breadcrumbs' => $breadcrumbs,'reviews'=>  $reviews,'next_review_count'=>  $next_review_count]);
                }


        }
        abort(404);
    }

    /**
     * @param Request $request
     * @return Application|Factory|View
     */

    public function searchProduct(Request $request) {

        $search_query = $request->search_query;
        $medicines = Product::where('title', 'like', '%' . $search_query . '%')->with(['category','media'])->where('status',1)->get();
        return view('frontend.components.search_item')->with('medicines',$medicines);


    }




}