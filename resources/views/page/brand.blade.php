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
                    <h2 class="title text-center">{{$brand->title}}</h2>
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
                                
                            </div>
                        </div>

                        </a>
                        
                    @endforeach   
                </div><!--features_items-->
                <nav>{{$products->links()}}</nav>
            </div>
        </div>
    </div>
</section>
@endsection