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
Auth::routes();

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
Route::get('/tai-khoan', [IndexController::class, 'profile'])->name('page.profile');
Route::put('updateuser/{id}',[IndexController::class,'update'])->name('user.update');
Route::get('/yeu-thich', [IndexController::class, 'yeuthich'])->name('page.yeuthich');
Route::post('/like-product/{product_id}/{user_id}', [IndexController::class, 'like_product'])->name('like_product');
Route::post('/dislike-product/{product_id}/{user_id}', [IndexController::class, 'dislike_product'])->name('dislike_product');




Route::prefix('admin')->middleware('level','auth')->group(function(){
    
    Route::get('/', [App\Http\Controllers\HomeController::class, 'admincp'])->name('admin');
    Route::resource('category-product', CategoryProductController::class);
    Route::resource('category', CategoryController::class);
    Route::resource('brand', BrandController::class);
    Route::resource('/product', ProductController::class);
    Route::resource('/coupon', CouponController::class);
    Route::resource('/slider', SliderController::class);
    Route::resource('/blog', BlogController::class);
    Route::get('/order',[OrderControlller::class, 'index'])->name('order.index');
    Route::get('/order/edit/{id}',[OrderControlller::class, 'edit'])->name('order.edit');
    Route::put('/order/update/{id}',[OrderControlller::class, 'update'])->name('order.update');
    Route::delete('/order/destroy/{id}',[OrderControlller::class, 'destroy'])->name('order.destroy');
    Route::get('/phiship',[OrderControlller::class, 'phiship'])->name('phiship.index');
    Route::post('/editphivanchuyen',[OrderControlller::class, 'editphivanchuyen'])->name('editphivanchuyen');
    Route::put('/un-cate-pro/{id}',[CategoryProductController::class, 'un_cate_pro'])->name('un_cate_pro');
    Route::put('/act-cate-pro/{id}',[CategoryProductController::class, 'act_cate_pro'])->name('act_cate_pro');
    Route::put('/un-brand/{id}', [BrandController::class, 'un_brand'])->name('un_brand');
    Route::put('/act-brand/{id}', [BrandController::class, 'act_brand'])->name('act_brand');
    Route::put('/un-product/{id}', [ProductController::class, 'un_product'])->name('un_product');
    Route::put('/act-product/{id}', [ProductController::class, 'act_product'])->name('act_product');
});







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

