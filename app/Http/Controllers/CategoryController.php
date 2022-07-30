<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\CategoryProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = Category::all();
        return view('admincp.category.index',compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cate_pro_all = CategoryProduct::all();
        return view('admincp.category.create', compact('cate_pro_all'));
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
            'title'=>'required',
            'categoryproduct_id'=>'required',
            'description'=>'required',
            'meta_keywords'=>'required',
            'meta_title'=>'required',

        ],[
            'title.required'=>'Không được để trống',
            'categoryproduct_id.required'=>'Không được để trống',
            'description.required'=>'Không được để trống',
            'meta_keywords.required'=>'Không được để trống',
            'meta_title.required'=>'Không được để trống',

        ]);
        $category = new Category();
        $category->title = $request->title;
        $category->slug_category = Str::slug($request->title);
        $category->categoryproduct_id = $request->categoryproduct_id;
        $category->description = $request->description;
        $category->meta_keywords = $request->meta_keywords;
        $category->meta_title = $request->meta_title;
        $category->status = $request->status;
        $category->save();
        return redirect()->route('category.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cate_pro_all = CategoryProduct::all();
        $category = Category::find($id);
        return view('admincp.category.edit', compact('category','cate_pro_all'));
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
            'title'=>'required',
            
            'description'=>'required',
            'meta_keywords'=>'required',
            'meta_title'=>'required',

        ],[
            'title.required'=>'Không được để trống',
           
            'description.required'=>'Không được để trống',
            'meta_keywords.required'=>'Không được để trống',
            'meta_title.required'=>'Không được để trống',

        ]);
        $category = Category::find($id);
        $category->title = $request->title;
        $category->slug_category = Str::slug($request->title);
        $category->categoryproduct_id = $request->categoryproduct_id;
        $category->description = $request->description;
        $category->meta_keywords = $request->meta_keywords;
        $category->meta_title = $request->meta_title;
        $category->status = $request->status;
        $category->save();
        return redirect()->route('category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::find($id)->delete();
        return back();
    }
}
