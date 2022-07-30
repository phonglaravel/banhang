<?php

namespace App\Http\Controllers;

use App\Models\CategoryProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CategoryProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $list = CategoryProduct::orderBy('id','DESC')->get();
        return view('admincp.categoryproduct.index',compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincp.categoryproduct.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
        ],[
            'title.required' => 'Tên danh mục không được để trống',
        ]);
        $category = new CategoryProduct();
        $category->title = $request->title;
        $category->slug_categoryproduct = Str::slug($request->title);
        $category->description = $request->description;
        $category->status = $request->status;
        $category->save();
        return redirect()->route('category-product.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = CategoryProduct::find($id);
        return view('admincp.categoryproduct.edit',compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
        ],[
            'title.required' => 'Tên danh mục không được để trống',
        ]);
        $category = CategoryProduct::find($id);
        $category->title = $request->title;
        $category->slug_categoryproduct = Str::slug($request->title);
        $category->description = $request->description;
        $category->status = $request->status;
        $category->save();
        return redirect()->route('category-product.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = CategoryProduct::find($id)->delete();
        return redirect()->route('category-product.index');
    }
    public function un_cate_pro($id)
    {
        $cate = CategoryProduct::find($id);
        $cate->status = 1;
        $cate->save();
        return redirect()->route('category-product.index');
    }
    public function act_cate_pro($id)
    {
        $cate = CategoryProduct::find($id);
        $cate->status = 0;
        $cate->save();
        return redirect()->route('category-product.index');
    }
    
}
