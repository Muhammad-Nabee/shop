<?php

use App\Models\Order;
use App\Models\PharmacyInfo;
use App\Models\PharmacySettings;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use App\Models\UserAttempt;
use App\Models\PageSection;



     /**
      * @return string
      * @description returns hash_id
     */

    function generateHashId()
    {
        return Str::random(10);
    }

    function getPageSection($slug){

        $section = PageSection::where('url_slug', $slug)->where('status', 1)->first();
        if($section){
            return $section->description;
        }

    }

    /**
     * Image save in directory
     * @param $request,
     * @param $path,
     * @param $id
     * return $file_name
    */

    function imageSaveDirectory($title,$image,$path=null,$id=null){

        $name = makeSlug($title);
        $file_name  = (pathinfo($name));
        $file  = $name.'-'.$id.'.' .$image->getClientOriginalExtension();
        Storage::disk('public')->putFileAs($path, $image, $file);
        return $file;

    }

    /**
     * Make slug in title.
    */

    function makeSlug($title){
        return str_replace(' ', '-', strtolower($title));
    }

    /**
     * @param $email
     * @return string
     */
    function trimEmail($email) {
        return strtolower(trim($email));
    }

    function removeImageDirectory($dir,$name){
        if (Storage::disk('public')->exists('/'.$dir.'/'.$name)){
          Storage::disk('public')->delete('/'.$dir.'/'.$name);
        }
    }

    function filter_string($string){

        $filter_txt = stripcslashes(trim($string));

        return $filter_txt;

    }

    function getRecaptacha(){

        $pharmacy_settings = PharmacySettings::first();
        return $pharmacy_settings->recaptcha;

    }

    function validateCaptcha($data) {
        return Validator::make(
            $data,
            [ 'g-recaptcha-response' => 'required' ],
            [ 'required' => 'Please verify captcha.' ]
        );
    }

    function addressConcatnateWithComma($address,$pharmacy_info){

        $address .= $pharmacy_info->address_1 ? $pharmacy_info->address_1 : '';
        $address .= $pharmacy_info->address_2 ?  ', '.$pharmacy_info->address_2 : '';
        $address .= $pharmacy_info->address_3 ?  ', '.$pharmacy_info->address_1 : '';
        $address .= $pharmacy_info->city      ?  ', '.$pharmacy_info->city : '';
        $address .= $pharmacy_info->post_code  ?  ', '.$pharmacy_info->post_code : '';
        return $address;

    }

    function addressWithComma($pharmacy_info){

        $address = '';
        $address = addressConcatnateWithComma($address,$pharmacy_info);
        return $address;

    }

    function addressWithMap($pharmacy_info){

        $address = '';
        $address = addressConcatnateWithComma($address,$pharmacy_info);
        $address = urlencode($address);
        return $address;

    }

    function generateUniqueInvoiceNo(): int
    {
        do {
            $invoice_no = random_int(10000000, 99999999);
        }
        while (Order::where("invoice_no", "=", $invoice_no)->first());
        return $invoice_no;
    }

    function globalSettings($key){

      $global_settings = DB::table('kod_global_settings')->where('setting_key',$key)->first();
      if(!empty($global_settings)){
        return $global_settings->setting_value;
      }
      return null;

    }

    function attemptCount(){

       $ip = getIPAddress();
       return UserAttempt::where('type','patient_login')->where('ip',$ip)->count();

    }

    function getIPAddress() {

        //whether ip is from the share internet
         if(!empty($_SERVER['HTTP_CLIENT_IP'])) {
                    $ip = $_SERVER['HTTP_CLIENT_IP'];
            }
        //whether ip is from the proxy
        elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
                    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
         }
        //whether ip is from the remote address
        else{
              $ip = $_SERVER['REMOTE_ADDR'];
         }
         return $ip;

   }

/**
 * @param $pharmacy
 * @return string
 */
   function websiteSignature($pharmacy): string
   {
       $pharmacySignatures = ucfirst("<strong>".$pharmacy->pharmacy_name."</strong>").'<br />';
       $pharmacySignatures .= ($pharmacy['address_1']) ? ''.$pharmacy['address_1'] : '' ;
       $pharmacySignatures .= ($pharmacy['address_2']) ? ', '.$pharmacy['address_2'] : '' ;
       $pharmacySignatures .= ($pharmacy['address_3']) ? ', '.$pharmacy['address_3'] : '' ;
       $pharmacySignatures .= ($pharmacy['town']) ? ', '.$pharmacy['town'] : '' ;
       $pharmacySignatures .= ($pharmacy['county']) ? ', '.$pharmacy['county'] : '' ;
       $pharmacySignatures .= ($pharmacy['postcode']) ? ', '.$pharmacy['postcode'].'<br />' : '' ;


       if(!empty($pharmacy['contact_number_p']))  {
           $pharmacySignatures .= "Tel: <a href='tel:".$pharmacy['contact_number_p']."'>".$pharmacy['contact_number_p']."</a><br />";
       }

       if(!empty($pharmacy['email_address_primary'])) {
           $pharmacySignatures .= "Email: <a href='mailto:".$pharmacy['email_address_primary']."'>".$pharmacy['email_address_primary']."</a><br />";
       }

       return $pharmacySignatures."Website: <a href='".env('APP_URL')."'>".env('APP_URL')."</a>" ;
   }

  function calculateCoupon($order,$grand_total){

        $percentage = '';
        $coupon_discount_price = 0;
        if(!empty($order->coupon_code_id) && $order->coupon_code_id){

            if($order->coupon_type == 'FIXED_PRICE'){
                $percentage = '';
                $coupon_discount_price = number_format($order->coupon_code_discount_amount, 2);
            } else if($order->coupon_type == 'PERCENTAGE'){
                $coupon_discount_price = ($order->coupon_type_percent_value / 100) * $grand_total;
                $percentage = '('.$order->coupon_type_percent_value . "%".')';
            }

            return [
              'coupon_discount_price' => $coupon_discount_price,'percentage' => $percentage];

        }

    }

    function deliveryAddress($order){

      $delivery_address = '';
      $delivery_address .= ($order->patientOrderAddress->d_first_name) ? filter_string($order->patientOrderAddress->d_first_name) : '' ;
      $delivery_address .= ($order->patientOrderAddress->d_last_name) ? ' '.filter_string($order->patientOrderAddress->d_last_name) : '' ;
      $delivery_address .= ($order->patientOrderAddress->d_address_1) ? '<br>'.filter_string($order->patientOrderAddress->d_address_1) : '' ;
      $delivery_address .= ($order->patientOrderAddress->d_address_2) ? '<br>'.filter_string($order->patientOrderAddress->d_address_2) : '' ;
      $delivery_address .= ($order->patientOrderAddress->d_address_3) ? '<br>'.filter_string($order->patientOrderAddress->d_address_3) : '' ;

      $delivery_address .= ($order->patientOrderAddress->d_town) ? '<br>'.filter_string($order->patientOrderAddress->d_town) : '' ;

      $delivery_address .= ($order->patientOrderAddress->d_postcode) ? '<br>'.filter_string($order->patientOrderAddress->d_postcode) : '' ;

      return $delivery_address;

    }

    function reviewCalculate($product){
        $review_avg = 0;
        if(count($product->reviews) > 0){
            foreach($product->reviews as $review){
                $review_avg +=$review->rating;
            }
            $review_avg = round($review_avg/count($product->reviews));
        }
        return $review_avg;
    }


    function signature(){

          $pharmacy_info = PharmacyInfo::first();

          // Prepare pharmacy signature

          $pharmacy_signatures = '';

          $pharmacy_address = '';

          $pharmacy_address .= !empty($pharmacy_info->address_1) ? $pharmacy_info->address_1 : '' ;
          $pharmacy_address .= !empty($pharmacy_info->address_2) ? ' <br /> '.$pharmacy_info->address_2 : '' ;
          $pharmacy_address .= !empty($pharmacy_info->address_3) ? ' <br /> '.$pharmacy_info->address_3 : '' ;

          $pharmacy_address .= !empty($pharmacy_info->city) ? ' <br /> '.$pharmacy_info->city : '' ;
          $pharmacy_address .= !empty($pharmacy_info->post_code) ? ' <br /> '.$pharmacy_info->post_code : '' ;

          $fax_html = !empty($pharmacy_info->fax_number) ? '<br /> <b> Fax: </b> '.$pharmacy_info->fax_number : '' ;

          $pharmacy_signatures .= '
                      <b> '.$pharmacy_info->pharmacy_name.' </b>
                      <br />

                      '.$pharmacy_address.'

                      <br />
                      <b> Website: </b> '.$pharmacy_info->website_url.'

                      '.$fax_html.'

                      <br />
                      <b> Phone: </b> '.$pharmacy_info->contact_number_p.'

                      <br />
                      <b> Email: </b> '.$pharmacy_info->email_address_primary.'';


        return $pharmacy_signatures;



    }

    function getOffer($offerId)
    {
        return \App\Models\Offer::find($offerId);
    }


    function cartPrice()
    {
        $cart = new \App\Classes\Cart(session()->get("cart"));
        return $cart->getCartTotalPrice();
    }


?>
