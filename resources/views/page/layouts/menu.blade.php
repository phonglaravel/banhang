<div class="col-sm-3">
    <div class="left-sidebar">
        <h2>Danh mục sản phẩm</h2>
        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
            
           @foreach($categories as $i)
           <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordian" href="#{{$i->id}}">
                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                        {{$i->title}}
                    </a>
                </h4>
            </div>
            <div id="{{$i->id}}" class="panel-collapse collapse">
                <div class="panel-body">
                    <ul>
                        @foreach ($i->category as $item)
                        <li><a href="{{url('/danh-muc-san-pham/'.$i->slug_categoryproduct.'/'.$item->slug_category)}}">{{$item->title}} </a></li>
                        @endforeach
                        
                        
                    </ul>
                </div>
            </div>
        </div>
            @endforeach
        </div><!--/category-products-->
    
        <div class="brands_products"><!--brands_products-->
            <h2>Thương hiệu</h2>
            <div class="brands-name">
                <ul class="nav nav-pills nav-stacked">
                    @foreach($brands as $i)
                    <li><a href="{{route('page.brand',$i->slug_brand)}}"> <span class="pull-right">({{$i->product->count()}})</span>{{$i->title}}</a></li>
                    @endforeach
                </ul>
            </div>
        </div><!--/brands_products-->
        
        {{-- <div class="price-range"><!--price-range-->
            <h2>Price Range</h2>
            <div class="well text-center">
                 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                 <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
            </div>
        </div><!--/price-range--> --}}
        
        <div class="shipping text-center"><!--shipping-->
            <img src="images/home/shipping.jpg" alt="" />
        </div><!--/shipping-->
    </div>
</div>
