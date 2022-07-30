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
                            Sửa danh mục sản phẩm
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('category-product.update',$category->id)}}" method="POST">
                                    @csrf
                                    @method('put')
                                    <div class="mb-3">
                                      <label  class="form-label">Tên danh mục</label>
                                      <input value="{{$category->title}}" type="text" name="title" class="form-control"  aria-describedby="emailHelp">
                                      @error('title')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                      <label  class="form-label">Mô tả</label>
                                      <input value="{{$category->description}}" type="text" name="description" class="form-control form-select" id="exampleInputPassword1">
                                      @error('description')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <label  class="form-label">Kích hoạt</label>
                                    <select name="status" class="form-control" aria-label="Default select example">Kích hoạt
                                        @if($category->status==0)
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