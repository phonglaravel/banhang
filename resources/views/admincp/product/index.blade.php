@extends('admincp.layouts.master')

@section('content')
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách sản phẩm
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-4">
      </div>
      
    </div>
    <div class="table-responsive">
      <table id="abc" class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>#</th>
            <th>Tên sản phẩm</th>
            <th>Tồn kho</th>
            <th>Danh mục</th>
            <th>Thương hiệu</th>
            <th>Ảnh sản phẩm</th>
            <th>giá</th>
            <th>Kích hoạt</th>
            <th style="width:30px;"></th>
            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
            @foreach($list as $key=> $item)
          <tr>
            <td>{{$key+1}}</td>
            <td>{{$item->title}}</td>
            <th>{{$item->quantity}}</th>
            <td>{{$item->categoryproduct->title}}</td>
            <td>{{$item->brand->title}}</td>
            <td><img style="height: 40px" src="{{ asset('image/products/'.$item->image) }}" alt=""></td>
            <td>{{$item->price}}</td>
            <td>@if ($item->status==0)
              <form action="{{route('un_product',$item->id)}}" method="POST">
                @csrf
                @method('put')
              <button type="submit" style="font-size: 20px;padding: 0;border: none;background: none;color:blue" ><i class="fa-solid fa-thumbs-up"></i></button>
              </form>
                @else
                <form action="{{route('act_product',$item->id)}}" method="POST">
                  @method('put')
                  @csrf
                <button type="submit" style="font-size: 20px;padding: 0;border: none;background: none;color:red" ><i class="fa-solid fa-thumbs-down"></i></button>
              </form>                
              @endif
            </td>
            <td>
                <a href="{{route('product.edit',$item->id)}}" class="active" ui-toggle-class=""><i class="fa-solid fa-pen-to-square"></i></a>
              </td>
            <td>
                <form action="{{route('product.destroy',$item->id)}}" method="POST">
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