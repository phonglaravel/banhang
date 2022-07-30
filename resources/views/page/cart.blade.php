@extends('page.layouts.master')
@section('content')
<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li class="active">Shopping Cart</li>
            </ol>
        </div>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                    <tr class="cart_menu">
                        <td class="image">Item</td>
                        <td class="description"></td>
                        <td class="price">Price</td>
                        <td class="quantity">Quantity</td>
                        <td class="total">Total</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    @foreach(Cart::content() as $item)
                    <tr>
                        <td class="cart_product">
                            <a href=""><img style="height: 50px" src="{{asset('image/products/'.$item->options->image)}}" alt=""></a>
                        </td>
                        <td class="cart_description">
                            <h4><a href="">{{$item->name}}</a></h4>
                            <p>ID: {{$item->id}}</p>
                        </td>
                        <td class="cart_price">
                            <p>{{number_format($item->price)}} vnd</p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <a id="aaa" class="cart_quantity_up" href="{{url('/qtyup/'.$item->rowId.'/'.$item->qty)}}"> + </a>
                                <form>
                                    @csrf
                                <input data-rowid="{{$item->rowId}}" class="cart_quantity_input" type="text" name="quantity" value="{{$item->qty}}" autocomplete="off" size="2">
                                </form>
                                <a class="cart_quantity_down" href="{{url('/qtydown/'.$item->rowId.'/'.$item->qty)}}"> - </a>
                            </div>
                           
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">{{number_format($item->price*$item->qty)}} vnd</p>
                        </td>
                        <td class="cart_delete">
                            <a class="cart_quantity_delete" href="{{route('deletecart',$item->rowId)}}"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    @endforeach
                    @if (session('error'))
                    <div class="alert alert-success" role="alert">
                        {{ session('error') }}
                    </div>
                    @endif
                 
                </tbody>
            </table>
        </div>
    </div>
</section> <!--/#cart_items-->

<section id="do_action">
    <div class="container">
        <div class="heading">
            <h3>Bạn có muốn tiếp tục không?</h3>
        </div>
        <div class="row">
            {{-- <div class="col-sm-6">
                <div class="chose_area">
                    <ul class="user_option">
                        <li>
                            <input type="checkbox">
                            <label>Use Coupon Code</label>
                        </li>
                        <li>
                            <input type="checkbox">
                            <label>Use Gift Voucher</label>
                        </li>
                        <li>
                            <input type="checkbox">
                            <label>Estimate Shipping & Taxes</label>
                        </li>
                    </ul>
                    <ul class="user_info">
                        <li class="single_field">
                            <label>Country:</label>
                            <select>
                                <option>United States</option>
                                <option>Bangladesh</option>
                                <option>UK</option>
                                <option>India</option>
                                <option>Pakistan</option>
                                <option>Ucrane</option>
                                <option>Canada</option>
                                <option>Dubai</option>
                            </select>
                            
                        </li>
                        <li class="single_field">
                            <label>Region / State:</label>
                            <select>
                                <option>Select</option>
                                <option>Dhaka</option>
                                <option>London</option>
                                <option>Dillih</option>
                                <option>Lahore</option>
                                <option>Alaska</option>
                                <option>Canada</option>
                                <option>Dubai</option>
                            </select>
                        
                        </li>
                        <li class="single_field zip-field">
                            <label>Zip Code:</label>
                            <input type="text">
                        </li>
                    </ul>
                    <a class="btn btn-default update" href="">Get Quotes</a>
                    <a class="btn btn-default check_out" href="">Continue</a>
                </div>
            </div> --}}
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li>Tổng giá <span>{{Cart::subtotal(0,',','.')}} vnd</span></li>
                        <li>Thuế <span>{{Cart::tax(0,',','.')}} vnd</span></li>
                        
                        <form action="{{route('coupon')}}" method="POST">
                            @csrf
                        <input style="margin-top: 10px" name="coupon" class="form-control" type="text" placeholder="Nhập mã giảm giá">
                        <button type="submit" class="btn btn-primary">Xác nhận mã</button>
                        <a href="/deletesession" class="btn btn-primary">Xóa mã</a>
                        </form>
                        
                        @if (session('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
                        @endif
                        @if (Session::has('coupon'))
                        <li>Tổng tiền <span>{{Cart::total(0,',','.')}} vnd</span></li>
                        
                            @if (Session::get('coupon')->status==1)
                            <li>Mã giảm <span>{{Session::get('coupon')->tile}} đ</span></li>
                            <li>Số tiền được giảm <span>{{Session::get('coupon')->tile}} đ</span></li>
                            <li>Thành tiền <span>{{number_format(Cart::total(0,',','') - Session::get('coupon')->tile)}} vnd</span></li>
                            @else
                            <li>Mã giảm <span>{{Session::get('coupon')->tile}} %</span></li>
                            <li>Mã giảm <span>{{number_format(Cart::total(0,',','') * Session::get('coupon')->tile / 100)}} vnd</span></li>
                            <li>Thành tiền <span>{{number_format(Cart::total(0,',','') - Cart::total(0,',','') * Session::get('coupon')->tile / 100)}} vnd</span></li>
           
                            @endif
                        @else
                        <li>Thành tiền <span>{{Cart::total(0,',','.')}} vnd</span></li>
                        @endif
                        
                        
                    </ul>
                        @if (Auth::check())
                        <a class="btn btn-default check_out" href="{{route('checkout',Auth::user()->id)}}">Thanh toán</a>
                        @else
                        <a class="btn btn-default check_out" href="{{route('login_checkout')}}">Thanh toán</a>
                        @endif
                </div>
            </div>
        </div>
    </div>
</section><!--/#do_action-->
@endsection