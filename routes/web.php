<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CategoryProductController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CouponController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\OrderControlller;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SliderController;
use App\Models\CategoryProduct;
use Illuminate\Support\Facades\Auth;
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

Route::get('/', [IndexController::class, 'index'])->name('page.index');
Route::get('/danh-muc-san-pham/{slug}/{slugcon}', [IndexController::class, 'category'])->name('page.category');
Route::get('/thuong-hieu/{slug}', [IndexController::class, 'brand'])->name('page.brand');
Route::get('/chi-tiet-san-pham/{slug}', [IndexController::class, 'product'])->name('page.product');
Route::get('/dang-nhap', [IndexController::class, 'login'])->name('page.login');
Route::get('/contact', [IndexController::class, 'contact'])->name('page.contact');
Route::get('/checkout', [IndexController::class, 'checkout'])->name('page.checkout');
Route::get('/gio-hang', [IndexController::class, 'cart'])->name('page.cart');
Route::get('/bai-viet', [IndexController::class, 'bloglist'])->name('page.bloglist');
Route::get('/bai-viet/{slug}', [IndexController::class, 'blog'])->name('page.blog');
Route::get('/404', [IndexController::class, '404'])->name('page.404');
Route::get('/danh-muc-san-pham/{slug}', [IndexController::class, 'cate'])->name('page.cate');
Route::get('/search', [IndexController::class, 'search'])->name('page.search');
Route::get('/tags/{tukhoa}', [IndexController::class, 'tags'])->name('page.tags');
Route::post('/post-rating', [IndexController::class, 'rating'])->name('rating');
Route::post('/like', [IndexController::class, 'like'])->name('like');
Route::get('/tai-khoan/{id}', [IndexController::class, 'profile'])->name('page.profile');



Auth::routes();

Route::get('/admin', [App\Http\Controllers\HomeController::class, 'admincp'])->name('admin')->middleware('level');

Route::resource('/admin/category-product', CategoryProductController::class)->middleware('level');
Route::resource('/admin/category', CategoryController::class)->middleware('level');
Route::resource('/admin/brand', BrandController::class)->middleware('level');
Route::resource('/admin/product', ProductController::class)->middleware('level');
Route::resource('/admin/coupon', CouponController::class)->middleware('level');
Route::resource('/admin/slider', SliderController::class)->middleware('level');
Route::resource('/admin/blog', BlogController::class)->middleware('level');

Route::get('admin/order',[OrderControlller::class, 'index'])->name('order.index')->middleware('level');;
Route::get('admin/order/edit/{id}',[OrderControlller::class, 'edit'])->name('order.edit')->middleware('level');;
Route::put('admin/order/update/{id}',[OrderControlller::class, 'update'])->name('order.update')->middleware('level');;
Route::delete('admin/order/destroy/{id}',[OrderControlller::class, 'destroy'])->name('order.destroy')->middleware('level');;
Route::get('/admin/phiship',[OrderControlller::class, 'phiship'])->name('phiship.index')->middleware('level');;
Route::post('/editphivanchuyen',[OrderControlller::class, 'editphivanchuyen'])->name('editphivanchuyen')->middleware('level');;


Route::put('/un-cate-pro/{id}',[CategoryProductController::class, 'un_cate_pro'])->name('un_cate_pro');
Route::put('/act-cate-pro/{id}',[CategoryProductController::class, 'act_cate_pro'])->name('act_cate_pro');
Route::put('/un-brand/{id}', [BrandController::class, 'un_brand'])->name('un_brand');
Route::put('/act-brand/{id}', [BrandController::class, 'act_brand'])->name('act_brand');
Route::put('/un-product/{id}', [ProductController::class, 'un_product'])->name('un_product');
Route::put('/act-product/{id}', [ProductController::class, 'act_product'])->name('act_product');

Route::post('/savecart/{id}',[CartController::class, 'savecart'])->name('savecart');
Route::get('/showcart',[CartController::class, 'showcart'])->name('showcart');
Route::get('/deletecart/{id}',[CartController::class, 'deletecart'])->name('deletecart');
Route::get('/qtyup/{id}/{qty}',[CartController::class, 'qtyup'])->name('qtyup');
Route::get('/qtydown/{id}/{qty}',[CartController::class, 'qtydown'])->name('qtydown');
Route::post('/changeqty',[CartController::class, 'changeqty'])->name('changeqty');
Route::post('/coupon',[CartController::class, 'coupon'])->name('coupon');
Route::get('/deletesession',[CartController::class, 'deletesession'])->name('deletesession');

Route::get('/login-checkout',[CheckoutController::class, 'login_checkout'])->name('login_checkout');
Route::get('/thanh-toan/{id}',[CheckoutController::class, 'checkout'])->name('checkout');
Route::post('/saveshipping/{id}',[CheckoutController::class, 'saveshipping'])->name('saveshipping');
Route::put('/updateshipping/{id}',[CheckoutController::class, 'updateshipping'])->name('updateshipping');
Route::post('/payment',[CheckoutController::class, 'payment'])->name('payment');
Route::get('/danhmuccon',[ProductController::class, 'danhmuccon'])->name('danhmuccon');

Route::get('/comment-blog/{id}',[BlogController::class, 'comment_blog'])->name('comment_blog');
Route::get('/cmt/{id}',[BlogController::class, 'cmt'])->name('cmt');

Route::post('comment-product/{id}',[IndexController::class,'commnet_product'])->name('commnet_product');

