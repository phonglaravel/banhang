<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Brand;
use App\Models\Category;
use App\Models\CategoryProduct;
use App\Models\CommentBlog;
use App\Models\CommentProduct;
use App\Models\LikeProduct;
use App\Models\Order;
use App\Models\Product;
use App\Models\Rating;
use App\Models\Shipping;
use App\Models\Slider;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class IndexController extends Controller
{
    public function index(Request $request)
    {
        $category_hot = Category::where('status',1)->get();
        $meta_desc = "Chuyên bán sản phẩm thời trang, phụ kiện thời trang nam nữ đẹp giá rẻ";
        $meta_keywords = "Áo quần nam, áo quần nữ, phụ kiện nam, phụ kiện nữ";
        $meta_title = "Áo quần phụ kiện thời trang VIP";
        $url_cano = $request->url();
        $slider = Slider::orderBy('id','DESC')->where('status', 0)->take(3)->get();
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $new_products = Product::orderBy('id','DESC')->where('status',0)->take(6)->get();
        if(Auth::check()){
            $like = LikeProduct::where('user_id',Auth::user()->id)->get();
            return view('page.index',compact('like','category_hot','slider','categories','brands','new_products','meta_desc','meta_keywords','meta_title','url_cano'));
        }
        return view('page.index',compact('category_hot','slider','categories','brands','new_products','meta_desc','meta_keywords','meta_title','url_cano'));
    }
    public function category(Request $request,$slug,$slugcon)
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $category_pro = CategoryProduct::where('slug_categoryproduct',$slug)->first();
        $category = Category::where('slug_category',$slugcon)->where('categoryproduct_id',$category_pro->id)->first();
        $products = Product::orderBy('id','DESC')->where('cate_id',$category->id)->paginate(12);
        $meta_desc = $category->description;
        $meta_keywords = $category->meta_keywords;
        $meta_title = $category->meta_title;
        $url_cano = $request->url();
        return view('page.category',compact('categories','brands','category','products',
        'meta_desc','meta_keywords','meta_title','url_cano'));
    }
    public function cate(Request $request,$slug)
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $category = CategoryProduct::where('slug_categoryproduct',$slug)->first();
        $meta_desc = $category->description;
        $meta_keywords = $category->meta_keywords;
        $meta_title = $category->meta_title;
        $url_cano = $request->url();
        $min_price = Product::where('category_id',$category->id)->min('price')-10000;
        $max_price = Product::where('category_id',$category->id)->max('price')+100000;
        
        if(isset($_GET['sort_by'])){
            $sort_by = $_GET['sort_by'];
            if($sort_by=='giam_dan'){
                $products = Product::orderBy('price','DESC')->where('category_id',$category->id)->paginate(12)->appends(request()->query());
                $sort = 3;
            }else if($sort_by=='tang_dan'){
                $products = Product::orderBy('price','ASC')->where('category_id',$category->id)->paginate(12)->appends(request()->query());
                $sort = 2;
            }else if($sort_by=='kitu_az'){
                $products = Product::orderBy('title','ASC')->where('category_id',$category->id)->paginate(12)->appends(request()->query());
                $sort = 4;
            }else if($sort_by=='kitu_za'){
                $products = Product::orderBy('title','DESC')->where('category_id',$category->id)->paginate(12)->appends(request()->query());
                $sort = 5;
            }
            else{
                $products = Product::orderBy('id','DESC')->where('category_id',$category->id)->paginate(12);
                $sort = 1;
            }
        }else if(isset($_GET['start_price'])){
            $min = $_GET['start_price'];
            $max = $_GET['end_price'];
            $products = Product::orderBy('id','DESC')
            ->where('category_id',$category->id)->whereBetween('price',[$min,$max])->paginate(12);
            $sort = 6;
        }   
        else{
            $products = Product::orderBy('id','DESC')->where('category_id',$category->id)->paginate(12);
            $sort = 1;
        }
        return view('page.cate',compact('sort','categories','brands','category','products',
        'meta_desc','meta_keywords','meta_title','url_cano','min_price','max_price'));
    }
    public function brand(Request $request,$slug)
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $brand = Brand::where('slug_brand',$slug)->first();
        $products = Product::orderBy('id','DESC')->where('brand_id',$brand->id)->paginate(12);
        $meta_desc = $brand->description;
        $meta_keywords = $brand->meta_keywords;
        $meta_title = $brand->meta_title;
        $url_cano = $request->url();
        return view('page.brand',compact('categories','brands','brand','products','meta_desc','meta_keywords','meta_title','url_cano'));
    }
    public function search(Request $request)
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $tukhoa = $request->tukhoa;
        $brands = Brand::where('status', 0)->get();
        $products = Product::orderBy('id','DESC')->where('title','LIKE','%'.$request->tukhoa.'%')
        ->orWhere('description','LIKE','%'.$request->tukhoa.'%')
        ->orWhere('content','LIKE','%'.$request->tukhoa.'%')->paginate(12);
        
        return view('page.search',compact('categories','brands','products','tukhoa'));
    }
    public function tags($tukhoa)
    {
        $tukhoa = $tukhoa;
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $products = Product::orderBy('id','DESC')->where('title','LIKE','%'.$tukhoa.'%')
        ->orWhere('description','LIKE','%'.$tukhoa.'%')
        ->orWhere('content','LIKE','%'.$tukhoa.'%')
        ->orWhere('tags','LIKE','%'.$tukhoa.'%')->paginate(12);
        
        return view('page.tags',compact('categories','brands','products','tukhoa'));
    }

    public function product(Request $request,$slug)
    {
        
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $product = Product::where('slug_product',$slug)->first();
        $rating = Rating::where('product_id',$product->id)->avg('rating');
        
        $rating = round($rating);
        $comment = CommentProduct::orderBy('id','DESC')->where('product_id', $product->id)->get();
        $url = $request->url();
        $producs_brand = Product::where('brand_id',$product->brand_id)->whereNotIn('id',[$product->id])->take(8)->get();
        $producs_category = Product::where('category_id',$product->category_id)->whereNotIn('id',[$product->id])->take(8)->get();
        return view('page.product',compact('rating','comment','url','categories','brands','product','producs_brand','producs_category'));
    }
   
    public function contact()
    {
        return view('page.contact');
    }
    
    
    public function bloglist()
    {
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $bloglist = Blog::orderBy('id','DESC')->paginate(3);
        return view('page.bloglist', compact('bloglist','categories','brands'));
    }
    public function blog($slug)
    {
        
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        $blog = Blog::where('slug_blog',$slug)->first();
        $nblog = Blog::where('id','>', $blog->id)->min('slug_blog');
        $pblog = Blog::where('id','<', $blog->id)->max('slug_blog');
        $maxblog = Blog::orderBy('id','DESC')->first();
        $minblog = Blog::orderBy('id','ASC')->first();
        $comments = CommentBlog::orderBy('id','DESC')->where('blog_id', $blog->id)->get();
        return view('page.blogsingle',compact('blog','categories','brands','comments','nblog','pblog','maxblog','minblog'));
    }
    public function commnet_product(Request $request,$id)
    {
        $request->validate([
            'name'=>'required',
            'comment'=>'required',

        ],[
            'name.required'=>'Không được bỏ trống trường này',
            'comment.required'=>'Không được bỏ trống trường này',
        ]);
        $cmt = new CommentProduct();
        $cmt->name = $request->name;
        $cmt->email = $request->email;
        $cmt->comment = $request->comment;
        $cmt->giotao = Carbon::now('Asia/Ho_chi_Minh')->format('H:i:s');
        $cmt->ngaytao = Carbon::now('Asia/Ho_chi_Minh')->format('d/m/Y');
        $cmt->product_id = $id;
        $cmt->save();
        return back();
    }
    public function rating(Request $request)
    {
        $rating = new Rating();
        $rating->product_id = $request->product_id;
        $rating->rating = $request->index;
        $rating->save();
        $rating = Rating::where('product_id',$request->product_id)->avg('rating');
        $rating = round($rating);
        return $rating;
    }
    public function like(Request $request)
    {
        $likee = LikeProduct::where('product_id',$request->product_id)->where('user_id',$request->user_id)->first();
        
        if($likee){
            $likee->delete();
            return 1;
        }
        else{
            $like = new LikeProduct();
            $like->user_id = $request->user_id;
            $like->product_id = $request->product_id;
            $like->save();
            return 2;
        }
        
    }
    public function profile()
    {
        $id = Auth::user()->id;
        $user = User::find($id);
        $older1 = Order::where('user_id',$id)->whereNotIn('status',['Đã hoàn thành','Trả lại tạm giữ','Hủy đơn'])->orderBy('id','DESC')->get();
        $older2 = Order::where('user_id',$id)->whereIn('status',['Đã hoàn thành','Trả lại tạm giữ','Hủy đơn'])->orderBy('id','DESC')->take(10)->get();
        $ship = Shipping::where('user_id',$id)->get();
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        return view('page.profile', compact('categories','brands','user','ship','older1','older2'));
    }
    public function update(Request $request,$id)
    {
        
        $user = User::find($id);
        if(Hash::check($request->pass,$user->password )){
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->password = Hash::make($request->password);
            $user->save();
            return back()->with('success','Cập nhật thành công');
        }else{
            return back()->with('error','Mật khẩu cũ không đúng');
        }
        

    }
    public function yeuthich()
    {
        $id = Auth::user()->id;
        $like = LikeProduct::where('user_id',$id)->get();
        $products = [];
        foreach($like as $item){
            $pro = Product::find($item->product_id);
            $products[] = $pro;
        }
        $categories = CategoryProduct::where('status', 0)->get();
        $brands = Brand::where('status', 0)->get();
        return view('page.like',compact('products','categories','brands'));
    }
}

