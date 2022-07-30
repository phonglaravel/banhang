<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use Faker\Core\Number;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Filesystem\Cache as FilesystemCache;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Cache;

class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $today = Carbon::now('Asia/Ho_Chi_Minh')->format('d/m/Y');
        $list = Coupon::orderBy('id', 'DESC')->get();
        return view('admincp.coupon.index', compact('list','today'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincp.coupon.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'coupon' => 'unique:coupons'
        ],[
            'coupon.unique' => 'Mã trùng'
        ]);
        $coupon = new Coupon();
        $coupon->coupon = $request->coupon;
        $coupon->amount = $request->amount;
        $coupon->status = $request->status;
        $coupon->start = $request->start;
        $coupon->end = $request->end;
        $coupon->tile = $request->tile;
        $coupon->dieukien = $request->dieukien;
        $coupon->save();
        return redirect()->route('coupon.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $coupon = Coupon::find($id)->delete();
        return back();
    }
    

}
