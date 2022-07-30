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
                            Sửa sản phẩm
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('product.update',$product->id)}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method('put')
                                    <div class="mb-3">
                                      <label  class="form-label">Tên sản phẩm</label>
                                      <input value="{{$product->title}}" type="text" name="title" class="form-control"  aria-describedby="emailHelp">
                                      @error('title')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Số lượng</label>
                                        <input value="{{$product->quantity}}" type="text" name="quantity" class="form-control"  aria-describedby="emailHelp">
                                        @error('quantity')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                      </div>
                                    <label  class="form-label">Danh mục sản phẩm</label>
                                    <select name="category_id" class="form-control" aria-label="Default select example">
                                            <option>-Chọn danh mục-</option>
                                        @foreach ($cate_pro_all as $item)
                                        <option value="{{$item->id}}" @if ($item->id == $product->category_id)
                                            selected
                                        @endif>{{$item->title}}</option>
                                        @endforeach   
                                    </select>
                                    @error('category_id')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    <label  class="form-label">Thương hiệu sản phẩm</label>
                                    <select name="brand_id" class="form-control" aria-label="Default select example">
                                        <option>-Chọn thương hiệu-</option>
                                        @foreach ($brands as $item)
                                        <option value="{{$item->id}}" @if ($item->id == $product->brand_id)
                                            selected
                                        @endif>{{$item->title}}</option>
                                        @endforeach   
                                    </select>
                                    @error('brand_id')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    <div class="mb-3">
                                      <label  class="form-label">Mô tả</label>
                                      <textarea name="description" class="form-control form-select" id="exampleInputPassword1">{{$product->description}}</textarea>
                                      @error('description')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Tag</label>
                                        <input value="{{$product->tags}}" type="text" name="tags" data-role="tagsinput" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Nội dung</label>
                                        <textarea name="content" class="form-control form-select" id="ck1">{{$product->content}}</textarea>
                                        @error('content')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Giá</label>
                                        <input value="{{$product->price}}" type="text" name="price" class="form-control"  aria-describedby="emailHelp">
                                        @error('price')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Images</label>
                                        <input type="file" name="image" accept="image/*">
                                        <img src="{{asset('image/products/'.$product->image)}}" alt="">
                                    </div>
                                    <label  class="form-label">Kích hoạt</label>
                                    <select name="status" class="form-control" aria-label="Default select example">
                                        @if ($product->status==0)
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