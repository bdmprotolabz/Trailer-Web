<?php

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

Route::get('/', function () {
    return view('home');
});


Route::get('/verify', function () {
    return view('verify_otp');
});
Route::get('/login','Controller@login');

Route::POST('/num','Acounts@num');
Route::POST('/otp_verify','Acounts@otp_verify');
Route::get('/register','Acounts@register_view');
Route::POST('/register_submit','Acounts@register');


Route::group(['middleware' => ['login']], function () {
Route::get('/Dashboard','Dealers@index');
Route::get('/membership_plans','Dealers@membership');
Route::get('/mylocation','Dealers@mylocation');
Route::get('/profile','Dealers@profile');
Route::post('/updateProfilePost','Dealers@updateProfilePost')->name('updateProfilePost');

Route::get('/add_locaton', function () {   return view('admin/add_loation'); });
Route::get('/add_product', function () {   return view('admin/add_product'); });
Route::get('/view_product','Dealers@view_product');
Route::POST('/update','Dealers@sub');
Route::get('/delete_pro/{id}','Dealers@delete');


Route::get('/logout','Dealers@logout');

});