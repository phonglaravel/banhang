<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\CategoryProduct;
use App\Models\Coupon;
use App\Models\Product;
use App\Models\UserCoupon;
use Carbon\Carbon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    public function savecart(Request $request,$id)
    {
        $product = Product::find($id);
        $qty = $request->qty;
        if($qty<=$product->quantity){
            $data['id'] = $product->id;
            $data['qty'] = $qty;
            $data['name'] = $product->title;
            $data['price'] = $product->price;
            $data['weight'] = 0;
            $data['options']['image']= $product->image;
            Cart::add($data);
            Cart::setGlobalTax(3);
            $product->quantity = $product->quantity - $qty;
            $product->save();
            if (isset($_POST['add'])) {
                return back();
            } else {
                return redirect()->route('showcart');
            }
            
        }
        else{
            return back()->with('error', 'Bạn đặt quá số lượng tồn kho');
        }
        
    }
    public function showcart()
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        return view('page.cart',compact('categories','brands'));
    }
    public function deletecart($id)
    {

        $rowId = $id;
        $product_id = Cart::get($rowId)->id;
        $product = Product::find($product_id);
        $product->quantity = $product->quantity + Cart::get($rowId)->qty;
        $product->save();
        Cart::remove($rowId);
        return back();
    }
    public function qtyup($id,$qty)
    {
        $rowId = $id;
        $product_id = Cart::get($rowId)->id;
        $product = Product::find($product_id);
        if($product->quantity>=1){
            $product->quantity = $product->quantity - 1;
            $product->save();
            $qtyup = $qty +1;
            Cart::update($rowId,$qtyup) ;
            return back();
        }else{
            return back()->with('error','Không thể tăng số lượng vì hết hàng');
        }
        
        
       
    }
    public function qtydown($id,$qty)
    {
        $rowId = $id;
        $product_id = Cart::get($rowId)->id;
        $product = Product::find($product_id);
        $product->quantity = $product->quantity + 1;
        $product->save();
        $qtyup = $qty -1;
        Cart::update($rowId,$qtyup) ;
        return back();
       
    }
    public function changeqty(Request $request)
    {
        $data = $request->all();
        
        $rowId = $data['rowid'];
        $qty = $data['value'];
        Cart::update($rowId,$qty);
        
       
    }
    public function coupon(Request $request)
    {
        if(Auth::check()){
            $coupon = Coupon::orderBy('id','DESC')->where('coupon',$request->coupon)->first();
        $user_coupon = UserCoupon::where('user_id',Auth::user()->id)->where('coupon_id',$coupon->id)->first();
        $today = Carbon::now('Asia/Ho_Chi_Minh')->format('d/m/Y');
        if($coupon){
            if($user_coupon){
                return back()->with('success','Bạn đã nhận mã này rồi');
            } elseif($coupon->amount==0){
                return back()->with('success','Mã giảm giá đã hết');
            } elseif($coupon->end<$today){
                return back()->with('success','Mã giảm giá đã hết hạn sử dụng');
            }
            else{
                if(Cart::total(0,',','') >= $coupon->dieukien){
                    $count_coupon = $coupon->count();
                    if($count_coupon>0){
                        $coupon_session = Session::get('coupon');
                        if($coupon_session==true){
                            $is_avaiable = 0;
                            if($is_avaiable==0){
                                
                                Session::put('coupon',$coupon);
                            }
                        }else{
                            
                            Session::put('coupon',$coupon);
                        }
                        Session::save();
                        return back();
                    }
                    }
                    else{
                        return back()->with('success','Bạn không đủ điều kiện nhận');
                    }
            }
            
        }else{
            return back()->with('success','Mã giảm giá không đúng');
        }
        }else{
            return redirect('/login-checkout');
        }
    }
    public function deletesession()
    {
        Session::forget('coupon');
        return back();
    }
}
