 <?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;




Route::get('/','HomeController@home');
Route::get('/home1','HomeController@home');


Route::get('contact-us', 'ContactController@index');
Route::post('contact-us', 'ContactController@store');
Route::post('newsletter/store','HomeController@store');

Route::get('products/{slug}', 'CategoryController@show')->name('category');

Route::prefix('ajax')->group(function () {
    Route::get('product/{id}', 'AjaxController@product');
});

Route::prefix('cart')->group(function () {
    Route::get('get', 'CartController@getCart');
    Route::post('get', 'CartController@getCart');
    Route::post('add-with-form', 'CartController@addToCartWithForm');
    Route::post('add', 'CartController@addToCart');
    Route::post('remove', 'CartController@removeFromCart');
    Route::post('remove-completely', 'CartController@removeItemCompletely');
    Route::get('view', 'CartController@viewCart');
});

Route::get('checkout-new', 'CheckoutController@checkoutNew');
Route::prefix('checkout')->group(function () {
    Route::get('', 'CheckoutController@checkout');

    Route::get('auth', 'CheckoutController@auth');
    Route::middleware('checkout')->group(function () {
        Route::get('addresses', 'CheckoutController@addresses');
        Route::post('addresses', 'CheckoutController@storeAddresses');
        Route::post('coupon', 'CheckoutController@coupon');
        Route::get('/update-delivery-method/{delivery_method_id}', 'CheckoutController@updateDeliveryMethod');
        Route::post("pay-now", "CheckoutController@payNow");
        Route::get('/bypass-payment-process', 'CheckoutController@bypassPaymentProcess');
    });
});

Route::prefix('PlaceOrder')->group(function()
{
    Route::post('place-orders', 'PlaceOrderController@placeOrder')->name('place-orders');


});

Route::get('forgot-password', 'PatientController@forgotPassword');

//Pages Route

Route::get('page/{slug}','PageController@pageDetails')->name('page');
Route::get('faqs','FaqController@faqs');

Route::get('thank-you','OrdersController@thankYou');

// Treatments Category Routes
Route::prefix('treatments/category')->group(function () {
    Route::get('/{slug?}', 'CategoryController@getCategoryDetails');
});



//Search Products

Route::post('search-products','ProductController@searchProduct');

// Raf Patient Register Medicine Routes
Route::prefix('patients')->group(function () {

    $throttle_attempt            = globalSettings('throttle_attempt');
    $throttle_attempt            = $throttle_attempt != null ? $throttle_attempt : Config::get('constants.keys.throttle_attempt');
    $throttle_attempt_per_minute = globalSettings('throttle_attempt_per_minute');
    $throttle_attempt_per_minute = $throttle_attempt_per_minute != null ? $throttle_attempt_per_minute : Config::get('constants.keys.throttle_attempt_per_minute');

    Route::group(['middleware' => 'throttle:'.$throttle_attempt.','.$throttle_attempt_per_minute.''], function () {

        Route::post('/login-process', 'PatientController@rafPatientLogin');
        Route::post('/register-process', 'PatientController@rafPatientRegister');

        Route::post('/forget-password', 'PatientController@rafPatientForgetPassword');
        Route::post('/update-password', 'PatientController@rafPatientUpdatePassword');

    });


});

Route::get('/reset-forgot-password/{token?}/{email?}', 'PatientController@getForgotPasswordPage');

// Treatments Medicine Routes

Route::prefix('treatments/medicine')->group(function () {

    Route::get('/{category_slug?}/{medicine_slug?}', 'MedicineController@getMedicineDetails');

});


//Product Details

Route::get('products/{c_slug}/{p_slug}', 'ProductController@show')->name('category.product');
Route::get('get-reviews', 'ProductReviewController@getReview')->name('get-reviews');

Route::post('accept-cookie', 'CookieController@accept')->name('accept.cookies');

//Route::any('{query}',
//    function() { return redirect('/'); })
//    ->where('query', '.*');