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


Route::get('/',App\Http\Livewire\HomeComponent::class);

Route::get('/shop',App\Http\Livewire\ShopComponent::class)->name('shop');

Route::get('/cart',App\Http\Livewire\CartComponent::class)->name('cart');;

Route::get('/checkout',App\Http\Livewire\CheckoutComponent::class)->name('checkout');

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

// For User or Customer
Route::middleware(['auth:sanctum','verified'])
->group(function()
{
Route::get('/user/dashboard',App\Http\Livewire\user\UserDashboardComponent::class)->name('user.dashboard');;
});

// For Admin
Route::middleware(['auth:sanctum','verified'])
->group(function()
{
 Route::get('/admin/dashboard',App\Http\Livewire\admin\AdminDashboardComponent::class)->name('admin.dashboard');;

});

// Route::get('logout', function (){
//     Auth::logout();
//     return redirect('/login');
//     });