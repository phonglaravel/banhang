@extends('page.layouts.master')
@section('content')
<section>
    <div class="container">
        <div class="row">
            @include('page.layouts.menu')
            
            <div class="col-sm-9 padding-right">
                <div class="product-details"><!--product-details-->
                    <div class="col-sm-5">
                        <div class="view-product">
                            <img src="{{asset('image/products/'.$product->image)}}" alt="" />
                            <h3>ZOOM</h3>
                        </div>
                        <div id="similar-product" class="carousel slide" data-ride="carousel">
                            
                              <!-- Wrapper for slides -->
                                <div class="carousel-inner">
                                    <div class="item active">
                                      <a href=""><img src="/page/images/product-details/similar1.jpg" alt=""></a>
                                      <a href=""><img src="/page/images/product-details/similar2.jpg" alt=""></a>
                                      <a href=""><img src="/page/images/product-details/similar3.jpg" alt=""></a>
                                    </div>
                                    <div class="item">
                                      <a href=""><img src="/page/images/product-details/similar1.jpg" alt=""></a>
                                      <a href=""><img src="/page/images/product-details/similar2.jpg" alt=""></a>
                                      <a href=""><img src="/page/images/product-details/similar3.jpg" alt=""></a>
                                    </div>
                                    
                                    
                                </div>

                              <!-- Controls -->
                              <a class="left item-control" href="#similar-product" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                              </a>
                              <a class="right item-control" href="#similar-product" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                              </a>
                        </div>

                    </div>
                    <div class="col-sm-7">
                        <div class="product-information"><!--/product-information-->
                            <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                            <h2>{{$product->title}}</h2>
                            <p>Web ID: {{$product->id}}</p>
                            <img src="/page/images/product-details/rating.png" alt="" />
                            <form action="{{route('savecart',$product->id)}}" method="POST">
                                @csrf
                            <span>
                                <span>{{number_format($product->price,0,',','.')}} VNĐ</span>
                                <label>Số lượng :</label>
                                <input name="qty" type="number" min="1" value="1" /><br/>
                                
                                @if ($product->quantity<=0)
                                <button name="add" type="submit" class="btn btn-fefault cart" disabled>
                                    <i class="fa fa-shopping-cart"></i>
                                    Thêm giỏ hàng
                                </button>
                                <button name="buy" type="submit" class="btn btn-fefault cart" disabled>
                                    <i class="fa fa-shopping-cart"></i>
                                    Mua ngay
                                </button>
                                @else
                                <button name="add" type="submit" class="btn btn-fefault cart">
                                    <i class="fa fa-shopping-cart"></i>
                                    Thêm giỏ hàng
                                </button>
                                <button name="buy" type="submit" class="btn btn-fefault cart">
                                    
                                    Mua ngay
                                </button>
                                
                                @endif
                                @if (session('error'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('error') }} là {{$product->quantity}}
                                </div>
                                @endif
                            </span>
                            
                            </form>
                            <p><b>Tình trạng:</b> @if ($product->quantity>0)
                                Còn hàng
                                @else
                                Hết hàng
                            @endif</p>
                            <p><b>Điều kiện:</b> Mới 100%</p>
                            <p><b>THương hiệu:</b> {{$product->brand->title}}</p>
                            <p><b>Danh mục:</b> {{$product->categoryproduct->title}}</p>
                            <p><b>Tags:</b> 
                                @if ($product->tags!=NULL)
                           @php
                           $tags = [];
                           $tags = explode(',',$product->tags);
                           @endphp
                           @foreach ($tags as $item)
                               <span style="background-color: blueviolet; border-radius: 3px; padding:0 3px"><a href="{{url('/tags/'.$item)}}" style=" color:aliceblue"">{{$item}} </a></span>
                           @endforeach
                       
                            @endif
                            </p>
                            <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                            <div id="fb-root"></div>
                            <script>(function(d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) return;
                            js = d.createElement(s); js.id = id;
                            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
                            fjs.parentNode.insertBefore(js, fjs);
                            }(document, 'script', 'facebook-jssdk'));</script>
                            
                            <!-- Your share button code -->
                            <div class="fb-share-button" 
                            data-href="{{$url}}" 
                            data-layout="button_count">
                            </div>                        </div><!--/product-information-->
                    </div>
                </div><!--/product-details-->
                
                <div class="category-tab shop-details-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li  class="active"><a href="#details" data-toggle="tab">Chi tiết sản phẩm</a></li>
                            <li><a href="#companyprofile" data-toggle="tab">Hồ sơ công ty</a></li>
                            
                            <li><a href="#reviews" data-toggle="tab">Đánh giá</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade  active in" id="details" >
                          {!! $product->content !!}
                        </div>                       
                        <div class="tab-pane fade" id="companyprofile" >
                            @foreach($producs_brand as $item)
                            <div class="col-sm-3">
                                <a href="{{route('page.product',$item->slug_product)}}">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="{{asset('image/products/'.$item->image)}}" alt="" />
                                            <h2>{{$item->price}} VNĐ</h2>
                                            <p>{{$item->title}}</p>
                                            <form action="{{route('savecart',$item->id)}}" method="POST">
                                                @csrf
                                            <input type="hidden" name="qty" value="1">
                                            <button type="submit" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>    
                            @endforeach                    
                        </div>                        
                        <div class="tab-pane fade" id="reviews" >
                            <div class="col-sm-12">
                                <ul class="list-inline">
                                    @for ($i = 1; $i <= 5; $i++)
                                    @php
                                        
                                        if($i<=$rating){
                                            $color = 'color:#ffcc00;';
                                        }else{
                                            $color = 'color:#ccc;';
                                        }
                                    @endphp
                                    <li class="rating"
                                    style="cursor: pointer;font-size:30px;{{$color}}"  id="{{$product->id}}-{{$i}}"
                                    data-index="{{$i}}" data-product_id="{{$product->id}}" data-rating="{{$rating}}"
                                    >
                                        &#9733
                                    </li>
                                    @endfor
                                    
                                </ul>
                                @foreach ($comment as $item)
                                <ul>
                                    <li><a href=""><i class="fa fa-user"></i>{{$item->name}}</a></li>
                                    <li><a href=""><i class="fa fa-clock-o"></i>{{$item->giotao}}</a></li>
                                    <li><a href=""><i class="fa fa-calendar-o"></i>{{$item->ngaytao}}</a></li>
                                </ul>
                                <p>{{$item->comment}}.</p>
                                @endforeach
                                
                                <p><b>Viết bình luận</b></p>
                                
                                <form action="{{route('commnet_product',$product->id)}}" method="POST">
                                    @csrf
                                    @if (Auth::user())
                                    <span>
                                        <input name="name" value="{{Auth::user()->name}}" type="name" placeholder="Your Name"/>
                                        <input name="email" value="{{Auth::user()->email}}" type="email" placeholder="Email Address"/>
                                    </span>
                                    @else
                                    <span>
                                        <input name="name" value="" type="name" placeholder="Your Name"/>
                                        <input name="email" value="" type="email" placeholder="Email Address"/>
                                    </span>
                                    @endif
                                   
                                    <textarea name="comment"></textarea>
                                    
                                    <button type="submit" class="btn btn-default pull-right">
                                        Submit
                                    </button>
                                </form>
                            </div>
                        </div>
                        
                    </div>
                </div><!--/category-tab-->
                
                <div class="recommended_items"><!--recommended_items-->
                    <h2 class="title text-center">recommended items</h2>
                    
                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">	
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="/page/images/home/recommend1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="/page/images/home/recommend1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="/page/images/home/recommend1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="item">	
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="/page/images/home/recommend1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="/page/images/home/recommend1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="/page/images/home/recommend1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            
                        </div>
                         <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                          </a>
                          <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                          </a>			
                    </div>
                </div><!--/recommended_items-->
                
            </div>
        </div>
    </div>
</section>
@endsection