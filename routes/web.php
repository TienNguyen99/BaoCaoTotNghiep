<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DetailController;
use RealRashid\SweetAlert\Facades\Alert;
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

Route::get('/','HomeController@index');
Route::get('/test/{filid}','HomeController@test');
Route::get('/daybooking','BookingController@booking_form');
Route::get('/trang-chu','HomeController@index')->name('index');

//Xem tat ca phim
Route::get('/tat-ca-phim','HomeController@seeall')->name('seeall');
// 404 page
Route::get('/404','HomeController@notfound');
//Dang ky, dang nhap ,dang xuat
Route::post('/register','HomeController@postDangky')->name('custom.register');
Route::post('/login','HomeController@postDangnhap')->name('custom.login');
Route::get('/logout','HomeController@postDangxuat')->name('custom.logout');
//Chi tiet phim
Route::get('/detail/{filid}','DetailController@detail_film');
//Tim kiem
Route::get('/search','HomeController@getSearch')->name('search');
//Comment Review
Route::post('/post-comment','DetailController@postComment')->name('custom.comment');
//Profile Customer
Route::get('/profile','ProfileController@index')->name('custom.profile');
//Test post dat ve
Route::post('/test/booking','BookingController@dangkytest')->name('custom.booking');
//Gui mail
Route::get('/sendmail','BookingController@sendMail');
//Admin backend
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


