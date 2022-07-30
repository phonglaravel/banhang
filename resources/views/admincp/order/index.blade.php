@extends('admincp.layouts.master')

@section('content')
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách đơn hàng
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
            <th>Tên khách hàng</th>
            <th>Tổng giá tiền</th>
            <th>Tình trạng</th>
            <th style="width:30px;"></th>
            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
            @foreach($order_all as $key=> $item)
          <tr>
            <td>{{$key+1}}</td>
            <td>{{$item->user->name}}</td>
            <td>{{$item->total}}</td>
            <td>{{$item->status}}</td>
            <td>
                <a href="{{route('order.edit',$item->id)}}" class="active" ui-toggle-class=""><i class="fa-solid fa-pen-to-square"></i></a>
              </td>
            <td>
                <form action="{{route('order.destroy',$item->id)}}" method="POST">
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