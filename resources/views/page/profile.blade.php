@extends('page.layouts.master')
@section('content')
<section>
    <div class="container">
        <div class="row">
            <div style="text-align: center; margin-bottom: 20px" class="col-12">
                <h2>THÔNG TIN KHÁCH HÀNG</h2>
            </div>
            <div class="col-md-6 col-12">
                <form action="{{route('user.update',Auth::user()->id)}}" method="POST">
                    @if (session('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif
                    @csrf
                    @method('put')
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label>Họ tên</label>
                        <input name="name" value="{{$user->name}}" type="text" class="form-control" placeholder="Họ tên">
                      </div>
                      <div class="form-group col-md-6">
                        <label>Số điện thoại</label>
                        <input name="phone" value="{{$user->phone}}" type="text" class="form-control" id="inputPassword4" placeholder="Số điện thoại">
                      </div>
                    </div>
                    <div style="margin-left: 15px;margin-right: 15px" class="form-group">
                        <label>Email</label>
                        <input disabled value="{{$user->email}}" type="email" class="form-control" id="inputAddress" placeholder="1234 Main St">
                        
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label >Mật khẩu cũ</label>
                          <input name="pass" type="password" class="form-control" placeholder="Mật khẩu cũ">
                          @if (session('error'))
                        <p>
                            {{ session('error') }}
                        </p>
                        @endif
                          
                        </div>
                        <div class="form-group col-md-6">
                          <label>Mật khẩu mới</label>
                          <input name="password" type="password" class="form-control" placeholder="Mật khẩu mới">
                        </div>
                    </div>
                    
                    
                    
                    <button style="margin-left: 15px" type="submit" class="btn btn-primary">Lưu</button>
                  </form>
            </div>
            <div class="col-md-6 col-12">
                <h2>ĐƠN CHƯA NHẬN</h2>
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tổng tiền</th>
                        <th scope="col">Tình trạng</th>
                        <th scope="col">Ngày đặt</th>
                      </tr>
                    </thead>
                    <tbody>
                        @foreach ($older1 as $key=> $item)
                        <tr>
                            <th scope="row">{{$key+1}}</th>
                            <td>{{$item->total}}</td>
                            <td>{{$item->status}}</td>
                            <td>{{$item->created_at}}</td>
                          </tr>
                        @endforeach
                      
                      
                    </tbody>
                  </table>
                  <h2>ĐƠN ĐÃ HOÀN THÀNH</h2>
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tổng tiền</th>
                        <th scope="col">Tình trạng</th>
                        <th scope="col">Ngày đặt</th>
                      </tr>
                    </thead>
                    <tbody>
                        @foreach ($older2 as $key=> $item)
                        <tr>
                            <th scope="row">{{$key+1}}</th>
                            <td>{{$item->total}}</td>
                            <td>{{$item->status}}</td>
                            <td>{{$item->created_at}}</td>
                          </tr>
                        @endforeach
                    </tbody>
                  </table>
            </div>
            
            
        </div>
    </div>
</section>
@endsection