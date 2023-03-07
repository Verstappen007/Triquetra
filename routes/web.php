<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/login','AuthController@login')->name('login');
Route::post('/postlogin','AuthController@postlogin');
Route::get('/logout','AuthController@logout');

Route::group(['middleware' => 'auth'],function()
{
    Route::get('/dashboard','DashboardController@index');
    Route::get('/klub','KlubController@index');
    Route::post('/klub/create','KlubController@create');
    Route::get('/klub/{id}/edit','KlubController@edit');
    Route::post('/klub/{id}/update','KlubController@update');
    Route::get('/klub/{id}/delete','KlubController@delete');
    Route::get('/klub/{id}/profile','KlubController@profile');
    Route::get('/score','ScoreController@index');
});

