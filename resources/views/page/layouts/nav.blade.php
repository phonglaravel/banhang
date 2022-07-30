<header id="header"><!--header-->
    
    
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="index.html"><img src="images/home/logo.png" alt="" /></a>
                    </div>
                    <div class="btn-group pull-right">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                USA
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Canada</a></li>
                                <li><a href="#">UK</a></li>
                            </ul>
                        </div>
                        
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                DOLLAR
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Canadian Dollar</a></li>
                                <li><a href="#">Pound</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            @if (Auth::check())
                            <li><a href="#"><i class="fa fa-user"></i> {{Auth::user()->name}}</a></li>
                            <li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
                            @endif
                            
                            
                            @if (Auth::check())
                            <li><a href="{{route('checkout',Auth::user()->id)}}"><i class="fa fa-crosshairs"></i> Thanh toán</a></li>
                            @else
                            <li><a href="{{route('login_checkout')}}"><i class="fa fa-crosshairs"></i> Thanh toán</a></li>
                            @endif
                            @if (Cart::content()->count()>=1)
                            <li><a href="{{route('showcart')}}"><i class="fa fa-shopping-cart"></i> Giỏ hàng({{Cart::content()->count()}})</a></li>
                            @else
                            <li><a href="{{route('showcart')}}"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                            @endif
                            
                            @if (Auth::check())
                            <li><a href="{{ route('logout') }}" onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                                <i class="fa fa-key"></i> Log Out</a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                        </form>
                            </li>
                            
                            @else
                            <li><a href="{{route('login_checkout')}}"><i class="fa fa-lock"></i> Login</a></li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/" class="active">Trang chủ</a></li>
                            <li class="dropdown"><a href="#">Danh mục<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    @foreach ($categories as $item)
                                    <li><a href="{{route('page.cate',$item->slug_categoryproduct)}}">{{$item->title}}</a></li>
                                    @endforeach
                                    
                                </ul>
                            </li> 
                            <li class="dropdown"><a href="#">Thương hiệu<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    @foreach ($brands as $item)
                                    <li><a href="{{route('page.brand',$item->slug_brand)}}">{{$item->title}}</a></li>
                                    @endforeach
                                    
                                    
                                </ul>
                            </li> 
                            <li><a href="{{route('page.bloglist')}}">Bài viết</a></li>
                            <li><a href="{{route('showcart')}}">Giỏ hàng</a></li>
                            <li><a href="contact-us.html">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <form action="{{route('page.search')}}" method="GET">
                        <div class="search_box pull-right">
                            <input name="tukhoa" type="text" placeholder="Search"/>
                        </div>  
                    </form>
                    
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->