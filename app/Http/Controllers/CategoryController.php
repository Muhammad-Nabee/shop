<?php

namespace App\Http\Controllers;

use App\Filters\ProductFilter;
use App\Http\Traits\CommanTrait;
use App\Models\Medicine;
use App\Models\MedicineCategory;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class CategoryController extends Controller
{

    use CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }

    /**
     * @param Request $request
     * @param string $slug
     * @return Application|Factory|View|void
     */
    public function show(Request $request, string $slug)
    {
        $pageSize = $request->get('pageSize', env('PAGE_SIZE', 8));


        $category = ProductCategory::where('status', 1)->where('seo_url_slug', $slug)->first();

        $countCategory = ProductCategory::where('status', 1)->where('seo_url_slug', $slug)->count();






        if (! $category)
            abort(404);

        $breadcrumb_ids = [];
        $breadcrumbs = $category->getBreadCrumbCategory($breadcrumb_ids,$category);

        $cIds = [];
        $cIds = $category->getIds($cIds, $category);
        if ($category) {
            $filters  = new ProductFilter($request);
            $products = Product::select(['*', DB::raw('IF(`discount_price` IS NOT NULL AND `discount_price` > 0.00, `discount_price`, `price`) `new_price`')])
            ->where('status', 1)->whereIn('category_id', $cIds)
                ->filter($filters)->paginate($pageSize);


            $sort_title = @$request->sortTitle;
            $sort_price = @$request->sortPrice;


            return view('frontend.category.show', ['category' => $category, 'products' => $products, 'pageSize' => $pageSize,'breadcrumbs' => $breadcrumbs,'sort_title' => $sort_title,'sort_price' => $sort_price,'countCategory'=> $countCategory]);
        }
        abort(404);

    }

    public function getCategoryDetails($slug = '') {
        if (!empty($slug)) {
            $category = MedicineCategory::with('section')->where('seo_url_slug', $slug)
                                            ->where('status', 1)
                                            ->first();

            if ($category) {

                if ($category->section) {
                    if ($category->section->status == 0) {
                        abort(404);
                    }
                }

                $cat_details = Medicine::with(['allactivemedias' => function($query){
                    $query->select('hash_id', 'medicine_id', 'media', 'media_no');
                }])->where('category_id', $category->id)
                                        ->where('status', 1)
                                        ->orderBy('display_order', 'ASC')
                                        ->get(['id','hash_id', 'title', 'category_id', 'seo_url_slug', 'description', 'price_guarantee_note']);
                return view("frontend.category.index")
                                ->with('category',$category)
                                ->with('cat_details',$cat_details);
            } else {
                abort(404);
            }
        } else {
            abort(404);
        }
    }
}