<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\CategoryProduct;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
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
        $list = Product::orderBy('id','DESC')->get();
        return view('admincp.product.index', compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cate_pro_all = CategoryProduct::all();
        $brands = Brand::all();
        return view('admincp.product.create', compact('cate_pro_all','brands'));
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
            'category_id'=>'required',
            'brand_id'=>'required',
            'content'=>'required',
            'price'=>'required',
            'image'=>'required',
        ],[
            'title.required'=>'Không được để trống',
            'category_id.required'=>'Không được để trống',
            'brand_id.required'=>'Không được để trống',
            'content.required'=>'Không được để trống',
            'price.required'=>'Không được để trống',
            'image.required'=>'Không được để trống',
        ]);
        $product = new Product();
        $product->title = $request->title;
        $product->tags = $request->tags;
        $product->slug_product = Str::slug($request->title);
        $product->quantity = $request->quantity;
        $product->category_id = $request->category_id;
        $product->cate_id = $request->cate_id;
        $product->brand_id = $request->brand_id;
        $product->description = $request->description;
        $product->content = $request->content;
        $product->price = $request->price;
        $product->status = $request->status;
        $product->ngaytao = Carbon::now('Asia/Ho_Chi_Minh');
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            if (strcasecmp($extension, 'jpg')=== 0
                ||strcasecmp($extension, 'png')=== 0
                ||strcasecmp($extension, 'jepg')=== 0) {
                  $image =Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                while (file_exists("image/products/". $image))
                  $image = Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                  $file->move('image/products', $image);
                }
           }
        $product->image = $image;
        $product->save();
        return redirect()->route('product.index');

        
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
        $cate_pro_all = CategoryProduct::all();
        $brands = Brand::all();
        $product = Product::find($id);
        return view('admincp.product.edit', compact('product','cate_pro_all','brands'));
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
            
            'content'=>'required',
            'price'=>'required',
            
        ],[
            'title.required'=>'Không được để trống',
            'content.required'=>'Không được để trống',
            'price.required'=>'Không được để trống',
            
        ]);
        $product = Product::find($id);
        $product->title = $request->title;
        $product->tags = $request->tags;
        $product->slug_product = Str::slug($request->title);
        $product->quantity = $request->quantity;
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->description = $request->description;
        $product->content = $request->content;
        $product->price = $request->price;
        $product->status = $request->status;
        $product->ngaycapnhat = Carbon::now('Asia/Ho_Chi_Minh');
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            if (strcasecmp($extension, 'jpg')=== 0
                ||strcasecmp($extension, 'png')=== 0
                ||strcasecmp($extension, 'jepg')=== 0) {
                  $nimage =Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                while (file_exists("image/products/". $nimage))
                  $nimage = Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                  $file->move('image/products', $nimage);
                  $image_path = 'image/products/'.$product->image;
                    if (File::exists($image_path)) {
                    File::delete($image_path);
                    //unlink($image_path);
                    }
                }
                $product->image = $nimage;
           }
        
        $product->save();
        return redirect()->route('product.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        $image_path = 'image/products/'.$product->image;
        if (File::exists($image_path)) {
        File::delete($image_path);
        //unlink($image_path);
        }
        $product->delete();
        return redirect()->route('product.index');
    }
    public function un_product($id)
    {
        $product = Product::find($id);
        $product->status = 1;
        $product->save();
        return back();
    }
    public function act_product($id)
    {
        $product = Product::find($id);
        $product->status = 0;
        $product->save();
        return back();
    }
    public function danhmuccon(Request $request)
    {
        $data = $request->all();
        
        $danhmuccha = CategoryProduct::where('id',$data['danhmuccha'])->first();
        $output = '';
        foreach($danhmuccha->category as $item){
            $output.='
            
                                       
                    <option value="'.$item->id.'">'.$item->title.'</option>
                                        
            ';
        }
        echo $output;
    }
}
