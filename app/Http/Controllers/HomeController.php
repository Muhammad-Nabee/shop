<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use App\Http\Traits\CommanTrait;
use App\Models\Banner;
use App\Models\Holiday;
use App\Models\GlobalSetting;
use Carbon\Carbon;
use Newsletter;

class HomeController extends Controller
{
    use CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }

    public function index()
    {
           
        $bannerCategories = ProductCategory::where('category_position', 'banner')->where('status', 1)->take(3)->get();

        $pageCategories = ProductCategory::where('category_position', 'page')->where('id', '!=', ProductCategory::PAGE_BANNER)->where('status', 1)->take(5)->get();

        $featuredProducts = Product::where('position', 'featured')
            ->whereHas("category", function ($q) {
                $q->where('status', 1);
            })
            ->where('status', 1)->with(['media'])
            ->orderBy('display_order', 'ASC')->skip(0)->take(8)->get();

        $brands = Brand::where('display_position', "1")->where('status',1)->orderBy('display_order','asc')->get();

        $banners = Banner::where('status',1)->orderBy('display_order','asc')->get();

        return view('frontend.home', [
            "banners" => $banners,
            "brands" => $brands,
            "featuredProducts" => $featuredProducts,
            "bannerCategories" => $bannerCategories,
            "pageCategories" => $pageCategories,
        ]);

    }

    public function home(){
         $bannerCategories = ProductCategory::where('category_position', 'banner')->where('status', 1)->take(3)->get();

        $pageCategories = ProductCategory::where('category_position', 'page')->where('status', 1)->take(3)->get();

        $featuredProducts = Product::where('position', 'featured')
            ->whereHas("category", function ($q) {
                $q->where('status', 1);
            })
            ->where('status', 1)->with(['media'])
            ->orderBy('display_order', 'ASC')->skip(0)->take(8)->get();

        $brands = Brand::where('display_position', "1")->where('status',1)->orderBy('display_order','asc')->get();

        $banners = Banner::where('status',1)->orderBy('display_order','asc')->get();

        return view('frontend.home_new', [
            "banners" => $banners,
            "brands" => $brands,
            "featuredProducts" => $featuredProducts,
            "bannerCategories" => $bannerCategories,
            "pageCategories" => $pageCategories,
        ]);
    }


    public function nextIterationDay($number){

        //get global setting

        $is_sunday_off   = GlobalSetting::where('setting_key','is_sunday_off')->first();
        $is_satureday_of = GlobalSetting::where('setting_key','is_satureday_of')->first();
        $cut_off_time = GlobalSetting::where('setting_key','cut_off_time')->first();

        //get current time

        $current_time = date('H');

        //get next date

        $next_day = '+'.$number.' day';

        $tomorrow = date("Y-m-d", strtotime($next_day));

        $delivery = false;

        $check_holiday = Holiday::where('date',$tomorrow)->first();

        //Check condition current time less than cut_off_time

        $calculated_houres = 0;

        if($current_time < $cut_off_time['setting_value']){

            // $calculated_houres     = Carbon::now()->addDay($number)->addHours($calculated_houres);
            // Check if not holiday

            if(empty($check_holiday)) {

                $sat   = date('D', strtotime($tomorrow));
                $sunday = date('D', strtotime($tomorrow));

                if( ($sat != 'Sat') && ($sunday != 'Sun')){
                    $delivery = true;
                }

                if(date('D', strtotime($tomorrow)) == 'Sat'){

                    if(!empty($is_satureday_of) && $is_satureday_of->setting_value == 0){
                        $delivery = false;
                    }else {
                         $delivery = true;
                    }

                }

                if(date('D', strtotime($tomorrow)) == 'Sun'){

                    if(!empty($is_sunday_off) && $is_sunday_off->setting_value == 0){
                         $delivery = false;
                    } else {
                         $delivery = true;
                    }

                }

                $calculated_houres =  $cut_off_time['setting_value'];
                $calculated_hours  = Carbon::now()->addDay($number);;
                $calculated_houres = Carbon::create($calculated_hours->format('Y'), $calculated_hours->format('m'),$calculated_hours->format('d'), $cut_off_time['setting_value'], 00, 00);

            } else {

               $delivery = false;

            }

        } else {

            $number        = $number+1;
            $next_day      = '+'.$number.' day';
            $tomorrow      = date("Y-m-d", strtotime($next_day));
            $check_holiday = Holiday::where('date',$tomorrow)->first();

            //check if not holiday

            if(empty($check_holiday)) {

                $sat    = date('D', strtotime($tomorrow));
                $sunday = date('D', strtotime($tomorrow));
                if(($sat != 'Sat') && ($sunday != 'Sun')){
                  $delivery = true;
                }

                if(date('D', strtotime($tomorrow)) == 'Sat'){
                    if(!empty($is_satureday_of) && $is_satureday_of->setting_value == 0){
                        $delivery = false;
                    } else {
                        $delivery = true;
                    }
                }

                if(date('D', strtotime($tomorrow)) == 'Sun'){
                    if(!empty($is_sunday_off) && $is_sunday_off->setting_value == 0){
                         $delivery = false;
                    }else {
                         $delivery = true;
                    }
                }

            } else {

                $delivery = false;

            }

            if($delivery == true){

                $calculated_hours  = Carbon::now()->addDay($number);
                $calculated_houres = Carbon::create($calculated_hours->format('Y'), $calculated_hours->format('m'),$calculated_hours->format('d'), $cut_off_time['setting_value'], 00, 00);

            }

        }

        return ['tomorrow' => $tomorrow,'delivery' => $delivery,'calculated_houres' => $calculated_houres];

    }

    public function store(Request $request){

        if ( ! Newsletter::isSubscribed($request->email) )
        {
            Newsletter::subscribePending($request->email);
            return redirect()->back()->with('news-success', 'Thanks For Subscribing our newletters');
        }

        return redirect()->back()->with('news-failure', 'Sorry! You have already subscribed ');

    }

}