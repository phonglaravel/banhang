@extends('page.layouts.master')
@section('content')
<section id="advertisement">
    <div class="container">
        <img src="/page/images/shop/advertisement.jpg" alt="" />
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            @include('page.layouts.menu')
            
            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">{{$category->title}}</h2>
                    <div class="col-md-3">
                        <form >
                            @csrf
                            <select name="sort" id="sort" class="form-control">
                                
                                @if ($sort==1||$sort==6)
                                <option selected value="{{Request::url()}}?sort_by=all">-Lọc-</option>
                                <option value="{{Request::url()}}?sort_by=tang_dan">-Giá tăng dần-</option>
                                <option value="{{Request::url()}}?sort_by=giam_dan">-Giá giảm dần-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_az">-Từ A đến Z-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_za">-Từ Z đến A-</option>
                                @endif
                                @if ($sort==2)
                                <option  value="{{Request::url()}}?sort_by=all">-Lọc-</option>
                                <option selected value="{{Request::url()}}?sort_by=tang_dan">-Giá tăng dần-</option>
                                <option value="{{Request::url()}}?sort_by=giam_dan">-Giá giảm dần-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_az">-Từ A đến Z-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_za">-Từ Z đến A-</option>
                                @endif
                                @if ($sort==3)
                                <option  value="{{Request::url()}}?sort_by=all">-Lọc-</option>
                                <option value="{{Request::url()}}?sort_by=tang_dan">-Giá tăng dần-</option>
                                <option selected value="{{Request::url()}}?sort_by=giam_dan">-Giá giảm dần-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_az">-Từ A đến Z-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_za">-Từ Z đến A-</option>
                                @endif
                                @if ($sort==4)
                                <option  value="{{Request::url()}}?sort_by=all">-Lọc-</option>
                                <option value="{{Request::url()}}?sort_by=tang_dan">-Giá tăng dần-</option>
                                <option value="{{Request::url()}}?sort_by=giam_dan">-Giá giảm dần-</option>
                                <option selected value="{{Request::url()}}?sort_by=kitu_az">-Từ A đến Z-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_za">-Từ Z đến A-</option>
                                @endif
                                @if ($sort==5)
                                <option value="{{Request::url()}}?sort_by=all">-Lọc-</option>
                                <option value="{{Request::url()}}?sort_by=tang_dan">-Giá tăng dần-</option>
                                <option value="{{Request::url()}}?sort_by=giam_dan">-Giá giảm dần-</option>
                                <option value="{{Request::url()}}?sort_by=kitu_az">-Từ A đến Z-</option>
                                <option selected  value="{{Request::url()}}?sort_by=kitu_za">-Từ Z đến A-</option>
                                @endif 
                                
                                
                                
                            </select>
                        </form>
                    </div>
                    <div class="col-md-3">
                        <form >
                            <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
                            <div id="slider-range"></div><br/>
                            <input type="hidden" id="start_price" name="start_price">
                            <input type="hidden" id="end_price" name="end_price">
                            <input type="submit" name="filter_price" value="Lọc giá" class="btn btn-defalt">
                            
                        </form>
                    </div>
                    
                    <div class="col-sm-12" style="margin-top: 50px">
                    @foreach ($products as $item)
                    <a href="{{route('page.product',$item->slug_product)}}">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="{{asset('image/products/'.$item->image)}}" alt="" />
                                            <h2>{{number_format($item->price,0,',','.')}} VNĐ</h2>
                                            <p>{{$item->title}}</p>
                                            <form action="{{route('savecart',$item->id)}}" method="POST">
                                                @csrf
                                            <input type="hidden" name="qty" value="1">
                                            @if ($item->quantity<=0)
                                        <button type="submit" class="btn btn-default add-to-cart" disabled><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                        @else
                                        <button type="submit" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                        @endif
                                            </form>
                                        </div>
                                </div>
                                <div class="choose">
                                    <ul class="nav nav-pills nav-justified">
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>   
                    
                    
                </div><!--features_items-->
            
                <nav>{{$products->links()}}</nav>
            </div>
        </div>
    </div>
</section>
@endsection
@push('scripts')
<script>
  
    $(document).ready(function(){
    $( "#slider-range" ).slider({
      
      orientation: "horizontal",
      range: true,
      min:{{$min_price}},
      max:{{$max_price}},
      step: 10000,
      values: [ {{$min_price}}, {{$max_price}} ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "đ" + ui.values[ 0 ] + " - đ" + ui.values[ 1 ] );
        $( "#start_price" ).val(ui.values[ 0 ]);
        $( "#end_price" ).val(ui.values[ 1 ]);
      }
    });
    $( "#amount" ).val( "đ" + $( "#slider-range" ).slider( "values", 0 ) +
      " - đ" + $( "#slider-range" ).slider( "values", 1 ) );
  })
  
</script>
@endpush