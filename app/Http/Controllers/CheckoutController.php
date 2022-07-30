<?php

namespace App\Http\Controllers;

use App\Jobs\SendEmail;
use App\Models\Brand;
use App\Models\CategoryProduct;
use App\Models\Coupon;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Payment;
use App\Models\Phiship;
use App\Models\Product;
use App\Models\Shipping;
use App\Models\User;
use App\Models\UserCoupon;
use Carbon\Carbon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class CheckoutController extends Controller
{
    public function login_checkout()
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        return view('page.login', compact('categories','brands'));
    }
    public function checkout($id)
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $ship = Shipping::where('user_id',$id)->first();
        if($ship){
            $phiship = Phiship::where('id',$ship->provinces)->first();
            $phi = $phiship->phi;
            return view('page.checkout',compact('ship','phi','categories','brands'));
        }
       
       return view('page.checkout',compact('ship','categories','brands'));
    }
    
    public function saveshipping(Request $request,$id)
    {
        $shipping = new Shipping();
        $shipping->user_id = $id;
        $shipping->company = $request->company;
        $shipping->email = $request->email;
        $shipping->name = $request->name;
        $shipping->phone = $request->phone;
        $shipping->address1 = $request->address1;
        $shipping->address2 = $request->address2;
        $shipping->provinces = $request->calc_shipping_provinces;
        $shipping->district = $request->calc_shipping_district;
        $shipping->ngaytao = Carbon::now('Asia/Ho_Chi_Minh');
        $shipping->save();
       return back();
    }
    public function updateshipping(Request $request,$id)
    {
        $shipping = Shipping::where('user_id',$id)->first();
        $shipping->user_id = $id;
        $shipping->company = $request->company;
        $shipping->email = $request->email;
        $shipping->name = $request->name;
        $shipping->phone = $request->phone;
        $shipping->address1 = $request->address1;
        $shipping->address2 = $request->address2;
        $shipping->provinces = $request->calc_shipping_provinces;
        $shipping->district = $request->calc_shipping_district;
        
        $shipping->save();
       return back();
    }
    public function payment(Request $request)
    {
        $request->validate([
            'shipping_id'=>'required',
            'payment_method'=>'required',
            'content'=>'required',
        ],[
            'shipping_id.required'=>'Vui lòng nhập địa chỉ ship hàng',
            'payment_method.required'=>'Vui lòng chọn hình thức thanh toán',
            'content.required'=>'Bạn chưa chọn mặt hàng nào cả',
        ]);
        $payment = new Payment();
        $payment->method = $request->payment_method;
        $payment->status = 'Đang chờ xử lý';
        $payment->save();
        $order = new Order();

        $order->user_id = $request->user_id;
        $order->shipping_id = $request->shipping_id;
        $order->payment_id = $payment->id;
        if (Session::has('coupon')){
            if (Session::get('coupon')->status==1){
                $order->total = number_format(Cart::total(0,',','') - Session::get('coupon')->tile);
            }
            else{
                $order->total = number_format(Cart::total(0,',','') - Cart::total(0,',','') * Session::get('coupon')->tile / 100);
            }
                      
        }
        else{
            $order->total = number_format(Cart::total(0,',',''));
        }

        $order->transport = $request->phi;            
        $order->status = 'Đang chờ xử lý';
        $order->save();

        foreach(Cart::content() as $item){
        $details = new OrderDetail();
        $details->order_id = $order->id;
        $details->product_id = $item->id;
        $details->product_title = $item->name;
        $details->product_quantity = $item->qty;
        $details->product_price = $item->price;
        $details->save();
        // $product = Product::where('id',$item->id)->first();
        // $product->quantity = $product->quantity - $item->qty;
        // $product->save();
        }

        Cart::destroy();
        if(Session::has('coupon')){
            $coupon = Coupon::where('id',Session::get('coupon')->id)->first();

        $user_coupon = new UserCoupon();
        $user_coupon->user_id = Auth::user()->id;
        $user_coupon->coupon_id = $coupon->id;
        $user_coupon->save();

        if($coupon->amount>=1){
            $coupon->amount = $coupon->amount - 1;
            $coupon->save();
            }
          
            
            Session::forget('coupon');
        }
        

        
        $message = [
            'type' => 'Đặt hàng',
            'task' => $order->user->name,
            'content' => $order->total,
        ];
        SendEmail::dispatch($message)->delay(now()->addMinute(1));
       return back()->with('success','Bạn đã đặt hàng thành công, chúng tôi sẽ liên hệ sớm nhất có thể');
    }
}
