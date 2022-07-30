<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = Slider::orderBy('id','DESC')->get();
        return view('admincp.slider.index', compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincp.slider.create');
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
            'name'=>'required',
            'description'=>'required',
            'image'=>'required',
        ],[
            'name.required'=>'Không được để trống tên',
            'description.required'=>'Không được để trống mô tả',
            'image.required'=>'Không được để trống hình ảnh',
        ]);
        $slider = new Slider();
        $slider->name = $request->name;
        $slider->description = $request->description;
        $slider->status = $request->status;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            if (strcasecmp($extension, 'jpg')=== 0
                ||strcasecmp($extension, 'png')=== 0
                ||strcasecmp($extension, 'jepg')=== 0) {
                  $image =Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                while (file_exists("image/slider/". $image))
                  $image = Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                  $file->move('image/slider', $image);
                }
           }
        $slider->image = $image;
        $slider->save();
        return redirect()->route('slider.index');
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
        $slider = Slider::find($id);
        return view('admincp.slider.edit', compact('slider'));
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
            'name'=>'required',
            'description'=>'required',
            
        ],[
            'name.required'=>'Không được để trống tên',
            'description.required'=>'Không được để trống mô tả',
            
        ]);
        $slider = Slider::find($id);
        $slider->name = $request->name;
        $slider->description = $request->description;
        $slider->status = $request->status;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            if (strcasecmp($extension, 'jpg')=== 0
                ||strcasecmp($extension, 'png')=== 0
                ||strcasecmp($extension, 'jepg')=== 0) {
                  $nimage =Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                while (file_exists("image/slider/". $nimage))
                  $nimage = Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                  $file->move('image/slider', $nimage);
                  $image_path = 'image/slider/'.$slider->image;
                    if (File::exists($image_path)) {
                    File::delete($image_path);
                    //unlink($image_path);
                    }
                }
                $slider->image = $nimage;
           }
        
        $slider->save();
        return redirect()->route('slider.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $slider = Slider::find($id);
        $image_path = 'image/slider/'.$slider->image;
        if (File::exists($image_path)) {
        File::delete($image_path);
        //unlink($image_path);
        }
        $slider->delete();
        return back();
    }
}
