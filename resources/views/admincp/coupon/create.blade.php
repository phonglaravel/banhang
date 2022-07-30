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
                            Thêm mã giảm giá
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('coupon.store')}}" method="POST">
                                    @csrf
                                    <div class="mb-3">
                                      <label  class="form-label">Mã</label>
                                      <input type="text" name="coupon" class="form-control"  aria-describedby="emailHelp">
                                      @error('coupon')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Ngày bắt đầu</label>
                                        <input id="start" type="text" name="start" class="form-control"  aria-describedby="emailHelp">
                                       
                                      </div>
                                      <div class="mb-3">
                                        <label  class="form-label">Ngày kết thúc</label>
                                        <input id="end" type="text" name="end" class="form-control"  aria-describedby="emailHelp">
                                        
                                      </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Số lượng</label>
                                        <input type="text" name="amount" class="form-control"  aria-describedby="emailHelp">
                                        @error('amount')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                    </div>
                                    <select name="status" class="form-control" aria-label="Default select example">Kích hoạt
                                        <option selected>-Chọn-</option>
                                        <option value="1" >Tiền</option>
                                        <option value="2">%</option>
                                        
                                    </select><br/>
                                    <div class="mb-3">
                                        <label  class="form-label">Tỉ lệ</label>
                                        <input type="text" name="tile" class="form-control"  aria-describedby="emailHelp">
                                      </div>
                                      <div class="mb-3">
                                        <label  class="form-label">Điều kiện</label>
                                        <input type="text" name="dieukien" class="form-control"  aria-describedby="emailHelp">
                                      </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>
                    </section>
                </section>
            </section>
@endsection