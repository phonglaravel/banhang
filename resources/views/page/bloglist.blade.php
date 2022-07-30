@extends('page.layouts.master')
@section('content')
<section>
    <div class="container">
        <div class="row">
            @include('page.layouts.menu')
            <div class="col-sm-9">
                <div class="blog-post-area">
                    <h2 class="title text-center">Bài viết mới nhất</h2>
                    @foreach ($bloglist as $item)
                    <div class="single-blog-post">
                        <h3>{{$item->title}}</h3>
                        <div class="post-meta">
                            <ul>
                                
                                <li><i class="fa fa-clock-o"></i>{{$item->giotao}}</li>
                                <li><i class="fa fa-calendar"></i> {{$item->ngaytao}}</li>
                            </ul>
                            
                        </div>
                        <a href="">
                            <img src="{{asset('image/blog/'.$item->image)}}" alt="">
                        </a>
                        <div style="height: 60px; overflow: hidden">{!! $item->content !!}</div>
                        <a  class="btn btn-primary" href="{{route('page.blog',$item->slug_blog)}}">Read More</a>
                    </div>   
                    @endforeach
                    
                    
                    <div class="pagination-area">
                        {{$bloglist->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection