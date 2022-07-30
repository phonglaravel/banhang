@extends('admincp.layouts.master')

@section('content')
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Phí vận chuyển
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
            <th>Tỉnh thành</th>
            <th>Phí ship</th>
            
          </tr>
        </thead>
        <tbody>
            @foreach($list as $key=> $item)
          <tr>
            <td>{{$key+1}}</td>
            <td>{{$item->ten}}</td>
            <th>
              <form>
                @csrf
              <input class="phivanchuyen" data-id="{{$item->id}}" type="text" value="{{$item->phi}}">
              </form>
            </th>
            
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