<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Payment;
use App\Models\Phiship;
use App\Models\Product;
use Illuminate\Http\Request;

class OrderControlller extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $order_all = Order::orderBy('created_at','DESC')->get();
        return view('admincp.order.index',compact('order_all'));
    }
    public function edit($id)
    {
        $order = Order::find($id);
        $detail = OrderDetail::where('order_id',$order->id)->get();
        return view('admincp.order.edit',compact('order','detail'));
    }
    public function update(Request $request ,$id)
    {
        $order = Order::find($id);
        $order->status = $request->status;
        if($request->status == 'Hủy đơn'){
            $detail = OrderDetail::where('order_id',$order->id)->get();
            foreach($detail as $item){
                $product = Product::where('id',$item->product_id)->first();
                $product->quantity = $product->quantity + $item->product_quantity;
                $product->save();
            }
        }
        $order->save();
        return redirect()->route('order.index');
    }
    public function destroy($id)
    {   
        $order = Order::find($id);
        $payment_id = $order->payment_id;
        $detail = OrderDetail::where('order_id',$order->id)->get();
        $payment = Payment::where('id',$payment_id)->get();
        foreach($detail as $item){
            $item->delete();
        }
        foreach($payment as $item){
            $item->delete();
        }
        $order->delete();
        
        return back();
    }
    public function phiship()
    {   
        $list = Phiship::orderBy('id', 'ASC')->get();
        return view('admincp.phiship.index', compact('list'));
    }
    public function editphivanchuyen(Request $request)
    {   
        $data = $request->all();
       
        $phiship = Phiship::where('id',$data['id'])->first();
        $phiship->phi = $data['phi'];
        $phiship->save();
       
    }
}
