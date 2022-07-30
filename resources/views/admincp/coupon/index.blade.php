@extends('admincp.layouts.master')

@section('content')
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách mã giảm
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-4">
      </div>
      
    </div>
    <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>#</th>
            <th>Mã</th>
            <th>Số lượng</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Loại</th>
            <th>giảm</th>
            <th>điều kiện</th>
            <th>Hạn</th>
            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
            @foreach($list as $key=> $item)
          <tr>
            <td>{{$key+1}}</td>
            <td>{{$item->coupon}}</td>
            <td>{{$item->amount}}</td>
            <td>{{$item->start}}</td>
            <td>{{$item->end}}</td>
            
            <td>@if ($item->status==1)
                Tiền
                @else
                Tỉ lệ %
            @endif</td>
            <td>{{$item->tile}}</td>
            <td>{{$item->dieukien}}</td>
            <td>
              @if ($item->end > $today)
                  Còn hạn
                  @else
                  Hết hạn
              @endif
              
            </td>
            <td>
                <form action="{{route('coupon.destroy',$item->id)}}" method="POST">
                    @csrf
                    @method('delete')
                    <button type="submit" ui-toggle-class=""><i class="fa fa-times text-danger text"></i></button>

                    </form>
              
            </td>
           
          </tr>
          @endforeach
          
        </tbody>
      </table>
    </div>
    
  </div>
</div>
</section>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2022 Visitors. All rights reserved | Design by Duy Phong</p>
			</div>
		  </div>
  <!-- / footer -->
</section>
@endsection