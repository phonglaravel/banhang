<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="/admin">
                        <i class="fa fa-dashboard"></i>
                        <span>Tổng quan</span>
                    </a>
                </li>
                <li>
                    <a class="active" href="{{route('order.index')}}">
                        <i class="fa fa-dashboard"></i>
                        <span>Quản lý đơn hàng</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Danh mục sản phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('category-product.index')}}">Danh sách danh mục</a></li>
						<li><a href="{{route('category-product.create')}}">Thêm danh mục</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Danh mục con</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('category.index')}}">Danh sách danh mục con</a></li>
						<li><a href="{{route('category.create')}}">Thêm danh mục con</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Thương hiệu sản phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('brand.index')}}">Danh sách thương hiệu</a></li>
						<li><a href="{{route('brand.create')}}">Thêm thương hiệu</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Sản phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('product.index')}}">Danh sách sản phẩm</a></li>
						<li><a href="{{route('product.create')}}">Thêm sản phẩm</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Mã giảm giá</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('coupon.index')}}">Danh sách</a></li>
						<li><a href="{{route('coupon.create')}}">Thêm mã</a></li>
                    </ul>
                </li>
                <li>
                    <a class="active" href="{{route('phiship.index')}}">
                        <i class="fa fa-dashboard"></i>
                        <span>Quản lý phí vận chuyển</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Slider</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('slider.index')}}">Danh sách</a></li>
						<li><a href="{{route('slider.create')}}">Thêm</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Blog</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('blog.index')}}">Danh sách</a></li>
						<li><a href="{{route('blog.create')}}">Thêm</a></li>
                    </ul>
                </li>
            </ul>           
         </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->