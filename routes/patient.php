<?php

use App\Http\Controllers\PatientController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


// Route::get('register','PatientAuthController@register');
// Route::post('register','PatientAuthController@store');
// Route::get('login','PatientAuthController@login')->name('login');
// Route::post('login','PatientAuthController@patientLogin');
Route::get('logout','PatientAuthController@patientLogout');

// Auth::routes();


$throttle_attempt            = globalSettings('throttle_attempt');
$throttle_attempt            = $throttle_attempt != null ? $throttle_attempt : Config::get('constants.keys.throttle_attempt');
$throttle_attempt_per_minute = globalSettings('throttle_attempt_per_minute');
$throttle_attempt_per_minute = $throttle_attempt_per_minute != null ? $throttle_attempt_per_minute : Config::get('constants.keys.throttle_attempt_per_minute');

Route::get('customr-login', 'PatientController@customerlogin')->name('customr-login');
Route::get('customr-register', 'PatientController@customerregister')->name('customr-register');
Route::post('customer-Registration', 'PatientController@customRegistration')->name('customer-Registration');
Route::post('customeLogin', 'PatientController@customeLogin')->name('customeLogin');

Route::get('place-orders-succes', 'PatientController@placeOrderSuccess')->name('place-orders-succes');

// Auth Routes

Route::post('patients/register-process', [PatientController::class,'rafPatientRegister']);
Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('registerc');
Route::get('forgot-password', 'Auth\ForgotPasswordController@getForgotPassword');
Route::get('/forgot-password-reset/{token?}/{email?}', 'Auth\ForgotPasswordController@getForgotPasswordPage');
Route::group(['middleware' => 'throttle:'.$throttle_attempt.','.$throttle_attempt_per_minute.''], function () {

  Route::post('register', 'Auth\RegisterController@register')->name('register');
  Route::post('forgot-password', 'Auth\ForgotPasswordController@forgotPassword')->name('forgot-password');
  Route::post('/update-forgot-password', 'Auth\ForgotPasswordController@updatePassword');
  Route::post('login', 'Auth\LoginController@login')->name('loginc');

});


//Patient Routes

Route::group(['middleware' => ['auth']], function() {

    Route::get('patient-dashboard','PatientController@dashboard');
    Route::get('patient-order-details/{hashId?}','PatientController@orderDetail');
    Route::get('get-review-form/{order_detail_hash_id}','ProductReviewController@getReviewForm');
    Route::post('submit-review','ProductReviewController@submitReview');
    Route::get('patient-profile-settings','PatientController@profileSettings');
     Route::get('patient-address','PatientController@patientAddress');
    Route::get('gp-details','PatientController@getGPForm');
    Route::post('update-gp-details','PatientController@updateGPDetails');
    Route::post('update-profile-settings','PatientController@updateProfileSettings');
    Route::get('change-password','PatientController@changePasswordPage');
    Route::get('delete-account','PatientController@deleteAccountConfirmPage');
    Route::post('delete-patient-account', 'PatientController@deletePatientAccount');
    Route::post('update-patient-password', 'PatientController@updatePatientPassword');
    Route::post('patient-update-address','PatientController@updateAddress');


});
