<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::post('api/register','UsersPage@register');
Route::post('api/login','UsersPage@login');
Route::post('api/complain','ComplainPage@complains');



Route::get('api/home','ProductsPage@view');
Route::post('api/product','CartPage@product');
Route::post('api/cart','CartPage@cart');
Route::post('api/endorder','CartPage@endorder');
Route::get('img','ComplainPage@img');
Route::post('api/category','ProductsPage@category');
Route::get('api/termsofuse','CartPage@terms');