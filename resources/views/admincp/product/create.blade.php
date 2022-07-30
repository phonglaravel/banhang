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
                            Thêm sản phẩm
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('product.store')}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                      <label  class="form-label">Tên sản phẩm</label>
                                      <input type="text" name="title" class="form-control"  aria-describedby="emailHelp">
                                      @error('title')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Số lượng</label>
                                        <input type="text" name="quantity" class="form-control"  aria-describedby="emailHelp">
                                        @error('quantity')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                      </div>
                                    <label  class="form-label">Danh mục sản phẩm</label>
                                    
                                    <select  name="category_id" class="form-control danhmuccha" aria-label="Default select example">
                                            <option selected>-Chọn danh mục-</option>
                                        @foreach ($cate_pro_all as $item)
                                        
                                            <option value="{{$item->id}}">{{$item->title}}</option>
                                        
                                        
                                        @endforeach   
                                    </select>
                                    
                                    <label  class="form-label">Danh mục con</label>
                                    <select id="danhmuccon" name="cate_id" class="form-control" aria-label="Default select example">
                                        <option selected>-Chọn danh mục-</option>
                                        
                                    </select>
                                    @error('cate_id')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    <label  class="form-label">Thương hiệu sản phẩm</label>
                                    <select name="brand_id" class="form-control" aria-label="Default select example">
                                        <option  selected>-Chọn thương hiệu-</option>
                                        @foreach ($brands as $item)
                                        <option value="{{$item->id}}">{{$item->title}}</option>
                                        @endforeach   
                                    </select>
                                    @error('brand_id')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    <div class="mb-3">
                                      <label  class="form-label">Mô tả</label>
                                      <textarea name="description" class="form-control form-select" id="exampleInputPassword1"></textarea>
                                      @error('description')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Nội dung</label>
                                        <textarea name="content" class="form-control form-select" id="ck1"></textarea>
                                        @error('content')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Tag</label>
                                        <input type="text" name="tags" data-role="tagsinput" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Giá</label>
                                        <input type="text" name="price" class="form-control"  aria-describedby="emailHelp">
                                        @error('price')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Images</label>
                                        <input type="file" name="image" accept="image/*">
                                        @error('image')
                                        <span style="color: red">{{$message}}</span>
                                        @enderror
                                    </div>
                                    <label  class="form-label">Kích hoạt</label>
                                    <select name="status" class="form-control" aria-label="Default select example">
                                        
                                        <option value="0" selected>Hiện</option>
                                        <option value="1">Ẩn</option>
                                        
                                    </select><br/>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>
                    </section>
                </section>
            </section>
@endsection