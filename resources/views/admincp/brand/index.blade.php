@extends('admincp.layouts.master')

@section('content')
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách thương hiệu sản phẩm
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
            <th>Tên thương hiệu</th>
            <th>Mô tả</th>
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
            <td>{{$item->description}}</td>
            <td>@if ($item->status==0)
                <form action="{{route('un_brand',$item->id)}}" method="POST">
                  @csrf
                  @method('put')
                <button type="submit" style="font-size: 20px;padding: 0;border: none;background: none;" ><i class="fa-solid fa-thumbs-up"></i></button>
                </form>
                @else
                <form action="{{route('act_brand',$item->id)}}" method="POST">
                  @csrf
                  @method('put')
                <button type="submit" style="font-size: 20px;padding: 0;border: none;background: none;" ><i class="fa-solid fa-thumbs-down"></i></button>
                </form>     
              @endif
            </td>
            <td>
                <a href="{{route('brand.edit',$item->id)}}" class="active" ui-toggle-class=""><i class="fa-solid fa-pen-to-square"></i></a>
              </td>
            <td>
                <form action="{{route('brand.destroy',$item->id)}}" method="POST">
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