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
                        Sửa danh muc con
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('category.update',$category->id)}}" method="POST"/>
                                    @csrf
                                    @method('put')
                                    <div class="mb-3">
                                      <label  class="form-label">Tên</label>
                                      <input value="{{$category->title}}" type="text" name="title" class="form-control"  aria-describedby="emailHelp">
                                      @error('title')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    
                                    <label  class="form-label">Danh mục sản phẩm</label>
                                    <select name="categoryproduct_id" class="form-control" aria-label="Default select example">
                                            
                                        @foreach ($cate_pro_all as $item)
                                        
                                        <option value="{{$item->id}}" @if ($category->categoryproduct_id==$item->id)
                                            selected
                                        @endif>{{$item->title}}</option>
                                        @endforeach   
                                    </select>
                                    
                                    
                                    <div class="mb-3">
                                      <label  class="form-label">Mô tả</label>
                                      <textarea name="description" class="form-control form-select" id="exampleInputPassword1">{{$category->description}}</textarea>
                                      @error('description')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Meta Keywords</label>
                                        <input value="{{$category->meta_keywords}}" type="text" name="meta_keywords" class="form-control"  aria-describedby="emailHelp">
                                        @error('meta_keywords')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                      </div>
                                      <div class="mb-3">
                                        <label  class="form-label">Meta title</label>
                                        <input value="{{$category->meta_title}}" type="text" name="meta_title" class="form-control"  aria-describedby="emailHelp">
                                        @error('meta_title')
                                        <span style="color: red">{{ $message }}</span>
                                          @enderror
                                      </div>
                                    
                                    <label  class="form-label">Kích hoạt</label>
                                    <select name="status" class="form-control" aria-label="Default select example">
                                        @if ($category->status==0)
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