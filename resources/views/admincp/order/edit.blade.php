@extends('admincp.layouts.master')

@section('content')
<section id="main-content">
	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Cập nhật đơn hàng
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('order.update',$order->id)}}" method="POST">
                                    @csrf
                                    @method('put')
                                    <div class="mb-3">
                                      <label  class="form-label">Tên khách hàng: </label>
                                        <span>{{$order->user->name}}</span>
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Số điện thoại: </label>
                                          <span>{{$order->user->phone}}</span>
                                      </div>
                                    <label  class="form-label">Hình thức thanh toán</label>
                                    <select name="method" class="form-control" aria-label="Default select example">
                                        @if ($order->payment->method==1)
                                        <option value="1" selected>Banking</option>   
                                        <option value="2">Tiền mặt</option>
                                        <option value="3">Thẻ ghi nợ</option>
                                        @elseif($order->payment->method==2)
                                        <option value="1" >Banking</option>   
                                        <option value="2" selected>Tiền mặt</option>
                                        <option value="3">Thẻ ghi nợ</option>
                                        @else
                                        <option value="1" >Banking</option>   
                                        <option value="2" >Tiền mặt</option>
                                        <option value="3" selected>Thẻ ghi nợ</option>
                                        @endif
                                        
                                         
                                    </select>
                                    
                                    <div class="mb-3">
                                        <label  class="form-label">Tổng tiền</label>
                                        <input value="{{$order->total}}" type="text" name="total" class="form-control"  aria-describedby="emailHelp">
                                        
                                    </div>
                                    
                                  
                                    <label  class="form-label">Kích hoạt</label>
                                    <select name="status" class="form-control" aria-label="Default select example">
                                       
                                        <option value="Đang chờ xử lý" selected>Đang chờ xử lý</option>
                                        <option value="Đã xác nhận">Đã xác nhận</option>
                                        <option value="Đã xuất kho">Đã xuất kho</option>
                                        <option value="Đang vận chuyển">Đang vận chuyển</option>
                                        <option value="Đã hoàn thành">Đã hoàn thành</option>
                                        <option value="Trả lại tạm giữ">Trả lại tạm giữ</option>
                                        <option value="Hủy đơn">Hủy đơn</option>
   
                                    </select><br/>
                                    <div class="mb-3">
                                        <label  class="form-label">Thông tin người nhận</label>
                                          <p>Tên: {{$order->shipping->name}}</p>
                                          <p>SDT: {{$order->shipping->phone}}</p>
                                          <p>DC1: {{$order->shipping->address1}}</p>
                                          <p>DC2: {{$order->shipping->address2}}</p>
                                          <p> {{$order->shipping->district}}</p>
                                            <p>Tỉnh: 
                                                @php
                                                    $tinh = array("An Giang","Bà Rịa - Vũng Tàu","Bạc Liêu","Bắc Kạn","Bắc Giang","Bắc Ninh","Bến Tre","Bình Dương","Bình Định","Bình Phước","Bình Thuận","Cà Mau","Cao Bằng","Cần Thơ","Đà Nẵng","Đắk Lắk","Đắk Nông","Đồng Nai","Đồng Tháp","Điện Biên","Gia Lai","Hà Giang","Hà Nam","Hà Nội","Hà Tĩnh","Hải Dương","Hải Phòng","Hòa Bình","Hậu Giang","Hưng Yên","Thành phố Hồ Chí Minh","Khánh Hòa","Kiên Giang","Kon Tum","Lai Châu","Lào Cai","Lạng Sơn","Lâm Đồng","Long An","Nam Định","Nghệ An","Ninh Bình","Ninh Thuận","Phú Thọ","Phú Yên","Quảng Bình","Quảng Nam","Quảng Ngãi","Quảng Ninh","Quảng Trị","Sóc Trăng","Sơn La","Tây Ninh","Thái Bình","Thái Nguyên","Thanh Hóa","Thừa Thiên - Huế","Tiền Giang","Trà Vinh","Tuyên Quang","Vĩnh Long","Vĩnh Phúc","Yên Bái");
                                                    echo $tinh[$order->shipping->provinces-1];
                                                @endphp
                                            </p>
                                            
                                      </div>
                                      <div class="mb-3">
                                        <label  class="form-label">Phí vận chuyển</label>
                                        <input value="{{$order->transport}}" type="text" name="transport" class="form-control"  aria-describedby="emailHelp">
                                        
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>
                        <table class="table">
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Thành tiền</th>
                              </tr>
                            </thead>
                            <tbody>
                                @foreach ($detail as $key=>$item)
                                <tr>
                                    <th scope="row">{{$key+1}}</th>
                                    <td>{{$item->product_title}}</td>
                                    <td>{{$item->product_quantity}}</td>
                                    <td>{{number_format($item->product_price)}}</td>
                                    <td>{{number_format($item->product_price*$item->product_quantity)}}</td>
                                  </tr>
                                @endforeach
                              
                              
                            </tbody>
                          </table>
                    </section>
                </section>
            </section>
@endsection