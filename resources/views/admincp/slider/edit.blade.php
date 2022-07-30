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
                            Sửa slider
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('slider.update',$slider->id)}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method('put')
                                    <div class="mb-3">
                                      <label  class="form-label">Tên</label>
                                      <input value="{{$slider->name}}" type="text" name="name" class="form-control"  aria-describedby="emailHelp">
                                      @error('name')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    
            
                                    <div class="mb-3">
                                      <label  class="form-label">Mô tả</label>
                                      <textarea name="description" class="form-control form-select" id="exampleInputPassword1">{{$slider->description}}</textarea>
                                      @error('description')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    {{-- <div class="mb-3">
                                        <label  class="form-label">Nội dung</label>
                                        <textarea name="content" class="form-control form-select" id="ck1"></textarea>
                                        @error('content')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                    </div> --}}
                                    
                                    <div class="mb-3">
                                        <label class="form-label">Images</label>
                                        <input type="file" name="image" accept="image/*">
                                        <img style="height: 50px" src="{{asset('image/slider/'.$slider->image)}}" alt="">
                                    </div>
                                    <label  class="form-label">Kích hoạt</label>
                                    <select name="status" class="form-control" aria-label="Default select example">
                                        @if ($slider->status==0)
                                        <option value="0" selected>Hiện</option>
                                        <option value="1">Ẩn</option>
                                        @else
                                        <option value="0" >Hiện</option>
                                        <option value="1" selected>Ẩn</option>
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