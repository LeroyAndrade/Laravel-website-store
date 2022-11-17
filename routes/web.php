<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Services\Transistor;
use App\Services\PodcastParser;
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
    dd(app());

});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';


Route::prefix('/producten')->group(function() {
    Route::get('/{number}', 'ProductController@show')->where('id', '[0-9]+');
    Route::get('/productpagina/{productId}', 'ProductController@productPaginaVanId')->where('productId', '[0-9]+');
    Route::get('/product/productNumber', 'ProductController@productNumber')->where('id', '[0-9]+');
//    Route::get('/product/productNumber', 'ProductController@overzichtPagina');
});

Route::get('/cart', 'CartController@winkelmandje');
