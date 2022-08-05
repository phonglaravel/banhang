<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = Brand::orderBy('id','DESC')->get();
        return view('admincp.brand.index',compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincp.brand.create');
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
        $brand = new Brand();
        $brand->title = $request->title;
        $brand->slug_brand = Str::slug($request->title);
        $brand->description = $request->description;
        $brand->status = $request->status;
        $brand->save();
        return redirect()->route('brand.index');
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
        $brand = Brand::find($id);
        return view('admincp.brand.edit',compact('brand'));
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
        $brand = Brand::find($id);
        $brand->title = $request->title;
        $brand->slug_brand = Str::slug($request->title);
        $brand->description = $request->description;
        $brand->status = $request->status;
        $brand->save();
        return redirect()->route('brand.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $brand = Brand::find($id)->delete();
        return redirect()->route('brand.index');
    }
    public function un_brand($id)
    {
        $brand = Brand::find($id);
        $brand->status = 1;
        $brand->save();
        return redirect()->route('brand.index');
    }
    public function act_brand($id)
    {
        $brand = Brand::find($id);
        $brand->status = 0;
        $brand->save();
        return redirect()->route('brand.index');
    }
}
