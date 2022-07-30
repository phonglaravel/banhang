@extends('admincp.layouts.master')

@section('content')
<section id="main-content">
	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm bài viết
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('blog.update',$blog->id)}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method('put')
                                    <div class="mb-3">
                                      <label  class="form-label">Tên bài viết</label>
                                      <input value="{{$blog->title}}" type="text" name="title" class="form-control"  aria-describedby="emailHelp">
                                      @error('title')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                  
                                    <div class="mb-3">
                                        <label  class="form-label">Nội dung</label>
                                        <textarea name="content" class="form-control form-select" id="ck1">{{$blog->content}}</textarea>
                                        @error('content')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label class="form-label">Images</label>
                                        <input type="file" name="image" accept="image/*">
                                        <img src="{{asset('image/blog/'.$blog->image)}}" alt="">
                                    </div>
                                    <label  class="form-label">Kích hoạt</label>
                                    <select name="status" class="form-control" aria-label="Default select example">
                                        @if ($blog->status==0)
                                        <option value="0" selected>Hiện</option>
                                        <option value="1">Ẩn</option>
                                        @else
                                        <option value="0">Hiện</option>
                                        <option value="1"  selected>Ẩn</option>
                                        @endif
                                        
                                        
                                    </select><br/>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>
                    </section>
                </section>
            </section>
@endsection