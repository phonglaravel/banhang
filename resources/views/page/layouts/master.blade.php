<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @if (isset($meta_desc))
    <meta name="description" content="{{$meta_desc}}">
    <meta name="keywords" content="{{$meta_keywords}}">
    <meta name="title" content="{{$meta_title}}">
    <link rel="canonical" href="{{$url_cano}}">
    @else
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="title" content="">
    <link rel="canonical" href="">
    @endif
    @if (isset($url))
    
    
    <meta property="og:url"           content="{{$url}}" />
    <meta property="og:type"          content="website" />
    <meta property="og:title"         content="Your Website Title" />
    <meta property="og:description"   content="Your description" />
    <meta property="og:image"         content="{{asset('image->products/'.$product->image)}}" />
    @endif
    <title>Home | E-Shopper</title>
    @include('page.layouts.style')
    @stack('styles')
</head><!--/head-->

<body>
	@include('page.layouts.nav')
	@yield('content')
	
	
	@include('page.layouts.footer')
	

  
    @include('page.layouts.script')
    @stack('scripts')
</body>
</html>