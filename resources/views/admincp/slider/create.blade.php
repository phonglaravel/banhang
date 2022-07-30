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
                            Thêm banner
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="{{route('slider.store')}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                      <label  class="form-label">Tên</label>
                                      <input type="text" name="name" class="form-control"  aria-describedby="emailHelp">
                                      @error('name')
                                      <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    
            
                                    <div class="mb-3">
                                      <label  class="form-label">Mô tả</label>
                                      <textarea name="description" class="form-control form-select" id="exampleInputPassword1"></textarea>
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