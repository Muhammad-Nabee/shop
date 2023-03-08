<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('test', function () {
   Artisan::call('optimize:clear');
   Artisan::call('storage:link');
});


Route::get('/home', 'HomeController@index')->name('home');

Route::get('/sitemap','SitemapController@generateSitemap');