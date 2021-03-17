<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DetailController;
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

Route::get('/trang-chu','HomeController@index');
//Dang ky, dang nhap post
Route::post('/trang-chu','HomeController@postDangky');



Route::get('/detail/{filid}','DetailController@detail_film');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


