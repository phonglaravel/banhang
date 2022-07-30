@extends('page.layouts.master')
@section('content')
<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
              <li><a href="{{url('/')}}">Home</a></li>
              <li class="active">Check out</li>
            </ol>
        </div><!--/breadcrums-->

        <div class="step-one">
            <h2 class="heading">Step1</h2>
        </div>
        @if ($errors->any())
                    <div class="alert alert-danger" style="margin-top: 30px">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div> 
        @endif
        @if (session('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
        @endif
        

        

        <div>
            <div lass="row">
                
                <div class="col-sm-3">
                    
                        <p>Thông tin người nhận hàng</p>
                        @if (isset($ship))
                        
                            <form action="{{route('updateshipping',Auth::user()->id)}}" method="POST">
                                @csrf
                                @method('put')
                                <div class="form-group">
                                <input class="form-control" name="company" type="text" placeholder="Công ty" value="{{$ship->company}}">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" name="email" type="text" placeholder="Email*" value="{{$ship->email}}">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" name="phone" type="text" placeholder="Số điện thoại" value="{{$ship->phone}}">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" name="name" type="text" placeholder="Họ tên" value="{{$ship->name}}">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" name="address1" type="text" placeholder="Địa chỉ 1 *" value="{{$ship->address1}}">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" name="address2" type="text" placeholder="Địa chỉ 2" value="{{$ship->address2}}">
                                </div>
                                
                                
                                <select class="form-control" name="calc_shipping_provinces" required="">
                                    <option value="">Tỉnh / Thành phố</option>
                                </select>
                                <select class="form-control" name="calc_shipping_district" required="">
                                    <option value="">Quận / Huyện</option>
                                </select>
                                <div><p style="margin-top: 20px">Phí vận chuyển: {{$phi}}</p></div>
                                <button type="submit" class="btn btn-primary">Cập nhật thông tin</button>
                            </form>
                        
                        @else
                        
                            <form action="{{route('saveshipping',Auth::user()->id)}}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <input class="form-control" name="company" type="text" placeholder="Công ty">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" name="email" type="text" placeholder="Email*">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" name="phone" type="text" placeholder="Số điện thoại">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" name="name" type="text" placeholder="Họ tên">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" name="address1" type="text" placeholder="Địa chỉ 1 *">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" name="address2" type="text" placeholder="Địa chỉ 2">
                                    </div>
                                    
                                    
                                    <select class="form-control" name="calc_shipping_provinces" required="">
                                        <option value="">Tỉnh / Thành phố</option>
                                    </select>
                                    <select class="form-control" name="calc_shipping_district" required="">
                                        <option value="">Quận / Huyện</option>
                                    </select>
                                    
                                <button type="submit" class="btn btn-primary">Lưu thông tin</button>
                                
                            </form>
                            
                        @endif
                        
                        
                        
                    
                </div>
                <div class="col-sm-9">
                    <div class="review-payment">
                        <h2>Xem lại giỏ hàng</h2>
                    </div>
            
                    <div class="table-responsive cart_info">
                        <table class="table table-condensed">
                            <thead>
                                <tr class="cart_menu">
                                    <td scope="col">Ảnh</td>
                                    <td scope="col">Tên</td>
                                    <td scope="col">Giá</td>
                                    <td scope="col">Số lượng</td>
                                    <td scope="col">Thành tiền</td>
                                    <td scope="col"></td>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach(Cart::content() as $item)
                                <tr>
                                    <td scope="col">
                                        <a href=""><img style="height: 50px" src="{{asset('image/products/'.$item->options->image)}}" alt=""></a>
                                    </td>
                                    <td scope="col">
                                        <h4><a href="">{{$item->name}}</a></h4>
                                        <p>ID: {{$item->id}}</p>
                                    </td>
                                    <td scope="col">
                                        <p>{{number_format($item->price)}} vnd</p>
                                    </td>
                                    <td scope="col">
                                        <div class="cart_quantity_button">
                                            <a id="aaa" class="cart_quantity_up" href="{{url('/qtyup/'.$item->rowId.'/'.$item->qty)}}"> + </a>
                                            <form>
                                                @csrf
                                            <input data-rowid="{{$item->rowId}}" class="cart_quantity_input" type="text" name="quantity" value="{{$item->qty}}" autocomplete="off" size="2">
                                            </form>
                                            <a class="cart_quantity_down" href="{{url('/qtydown/'.$item->rowId.'/'.$item->qty)}}"> - </a>
                                        </div>
                                     
                                    </td>
                                    <td scope="col">
                                        <p class="cart_total_price">{{number_format($item->price*$item->qty)}} vnd</p>
                                    </td>
                                    <td scope="col">
                                        <a class="cart_quantity_delete" href="{{route('deletecart',$item->rowId)}}"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                                @endforeach
            
                             
                            </tbody>
                        </table>
                        
                    </div>
                    @if (Cart::content()->count()!=0)
                    @if(isset($phi))
                    @if (Session::has('coupon'))
                        @if (Session::get('coupon')->status==1)
                        <div style=" text-align: center">Tổng giá + phí ship <span><h3>{{number_format(Cart::total(0,',','') - Session::get('coupon')->tile + $phi)}} vnd</h3></span></div>
                        @else
                        <div style=" text-align: center">Tổng giá + phí ship <span><h3>{{number_format(Cart::total(0,',','') - Cart::total(0,',','') * Session::get('coupon')->tile / 100 + $phi)}} vnd</h3></span></div>
                        @endif

                    @else
                    <div style=" text-align: center">Tổng giá + phí ship <span><h3>{{number_format(Cart::total(0,',','')  + $phi) }} vnd</h3></span></div>
                    @endif  
                    @else
                    @if (Session::has('coupon'))
                    @if (Session::get('coupon')->status==1)
                    <div style=" text-align: center">Tổng giá + phí ship <span><h3>{{number_format(Cart::total(0,',','') - Session::get('coupon')->tile)}} vnd</h3></span></div>
                    @else
                    <div style=" text-align: center">Tổng giá + phí ship <span><h3>{{number_format(Cart::total(0,',','') - Cart::total(0,',','') * Session::get('coupon')->tile / 100 )}} vnd</h3></span></div>
                    @endif

                @else
                <div style=" text-align: center">Tổng giá + phí ship <span><h3>{{number_format(Cart::total(0,',','') ) }} vnd</h3></span></div>
                @endif  
                    @endif

                    @endif
                    
                    
                </div>
                
            				
            </div>
        </div>
        
        
        <form action="{{route('payment')}}" method="POST">
            @csrf
        <div class="payment-options">
                <span>
                    <label><input name="payment_method" type="checkbox" value="1"> Chuyển khoản ngân hàng</label>
                </span>
                <span>
                    <label><input name="payment_method" type="checkbox" value="2"> Trả tiền mặt khi nhận hàng</label>
                </span>
                <span>
                    <label><input name="payment_method" type="checkbox" value="3"> Thẻ ghi nợ</label>
                </span>
                <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                <input type="hidden" name="content" @if (Cart::content()->count()==0)
                                                        value=""
                                                        @else
                                                        value="1"    
                @endif>
                
                @if (isset($ship))
                <input type="hidden" name="shipping_id" value="{{$ship->id}}">
                <button type="submit" class="btn btn-primary">Xác nhận đặt hàng</button>
                @else
                <button type="submit" class="btn btn-primary">Xác nhận đặt hàng</button>
                <input type="hidden" name="shipping_id" value="">
                
                @endif
                
                
          @if (isset($phi))
          <input name="phi" type="hidden" value="{{$phi}}">  
          @endif      
                
        </div>
        </form>
    </div>
</section> <!--/#cart_items-->

@endsection