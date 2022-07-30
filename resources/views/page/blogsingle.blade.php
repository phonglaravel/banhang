@extends('page.layouts.master')
@section('content')
<section>
    <div class="container">
        <div class="row">
            @include('page.layouts.menu')
            <div class="col-sm-9">
                <div class="blog-post-area">
                    <h2 class="title text-center">Chi tiết bài viết</h2>
                    <div class="single-blog-post">
                        <h3>{{$blog->title}}</h3>
                        <div class="post-meta">
                            <ul>
                                
                                <li><i class="fa fa-clock-o"></i> {{$blog->giotao}}</li>
                                <li><i class="fa fa-calendar"></i> {{$blog->ngaytao}}</li>
                            </ul>
                            
                        </div>
                        <a href="">
                            <img src="{{asset('image/blog/'.$blog->image)}}" alt="">
                        </a>
                        {!!$blog->content!!}
                        <div class="pager-area">
                            <style type="text/css">
                                .isDisplay {
                                    color: currentColor;
                                    pointer-events: none;
                                    opacity: 0.5;
                                    text-decoration: none;
                                }
                            </style>
                            <ul class="pager pull-right">
                                <li><a class="{{$blog->id == $minblog->id ? 'isDisplay' : ''}}" href="{{url('bai-viet/'.$pblog)}}">Trước</a></li>
                                <li><a class="{{$blog->id == $maxblog->id ? 'isDisplay' : ''}}" href="{{url('bai-viet/'.$nblog)}}">Sau</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!--/blog-post-area-->
                <form action="{{route('comment_blog',$blog->id)}}" method="GET">
                @if (Auth::user())
                <div class="rating-area">
                    <ul class="ratings">
                        <li class="rate-this">Tên:</li>    
                    </ul>
                </div><!--/rating-area-->
                <div class="">
                    <input name="name" type="text" class="form-control" value="{{Auth::user()->name}}">
                </div><!--/socials-share-->
                @else
                <div class="rating-area">
                    <ul class="ratings">
                        <li class="rate-this">Tên:</li>    
                    </ul>
                </div><!--/rating-area-->
                <div class="">
                    <input name="name" type="text" class="form-control" value="">
                </div><!--/socials-share-->
                @endif
                <div class="rating-area">
                    <ul class="ratings">
                        <li class="rate-this">Bình luận:</li>    
                    </ul>   
                </div><!--/rating-area-->
                <div class="">
                    <textarea name="comment"  cols="30" rows="5"></textarea>
                </div><!--/socials-share-->
                <button type="submit" class="btn btn-primary">Bình luận</button>
                </form>
              

                <div class="response-area">
                    
                    <ul class="media-list">
                        @foreach ($comments as $item)
                        <li class="media">
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>{{$item->name}}</li>
                                    <li><i class="fa fa-clock-o"></i> {{$item->giotao}}</li>
                                    <li><i class="fa fa-calendar"></i> {{$item->ngaytao}}</li>
                                </ul>
                                <p>{{$item->comment}}</p>
                                <button id="showcmt" class="btn btn-primary showcmt" ><i class="fa fa-reply"></i>Trả lời</button><br/>
                                <form id="formcmt" class="hidden formcmt" action="{{route('cmt',$item->id)}}" method="GET">
                                    @if (Auth::user())
                                    
                                    <div class="">
                                        <input  name="name" type="text" class="form-control" value="{{Auth::user()->name}}">
                                    </div><!--/socials-share-->
                                    @else
                                    
                                    <div class="">
                                        <input placeholder="Nhập nickname" name="name" type="text" class="form-control" value="">
                                    </div><!--/socials-share-->
                                    @endif
                                    <div class="rating-area">
                                        <ul class="ratings">
                                            <li class="rate-this">Bình luận:</li>    
                                        </ul>   
                                    </div><!--/rating-area-->
                                    <div class="">
                                        <textarea name="comment"  cols="30" rows="5"></textarea>
                                    </div><!--/socials-share-->
                                    <button type="submit" class="btn btn-primary">Bình luận</button>
                                    </form>
                            </div>
                        </li>
                        <li class="media second-media">
                            @foreach ($item->cmt as $i)
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>{{$i->name}}</li>
                                    <li><i class="fa fa-clock-o"></i> {{$i->giotao}}</li>
                                    <li><i class="fa fa-calendar"></i> {{$i->ngaytao}}</li>
                                </ul>
                                <p>{{$i->comment}}</p>
                                
                            </div>
                            @endforeach
                            
                        </li> 
                        @endforeach
                        
                        
                    </ul>					
                </div><!--/Response-area-->
                
            </div>	
        </div>
    </div>
</section>
@endsection