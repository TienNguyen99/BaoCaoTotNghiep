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
Route::get('/test','HomeController@test');
Route::get('/trang-chu','HomeController@index')->name('index');


//Dang ky, dang nhap ,dang xuat
Route::post('/register','HomeController@postDangky')->name('custom.register');
Route::post('/login','HomeController@postDangnhap')->name('custom.login');
Route::get('/logout','HomeController@postDangxuat')->name('custom.logout');

Route::get('/detail/{filid}','DetailController@detail_film');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

