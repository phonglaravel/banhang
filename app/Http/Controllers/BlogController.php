<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Cmt;
use App\Models\CommentBlog;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = Blog::orderBy('ngaytao','DESC')->get();
        return view('admincp.blog.index', compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincp.blog.create');

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
            'content'=>'required',
            'image'=>'required',
        ],[
            'title.required'=>'Không được để trống',     
            'content.required'=>'Không được để trống',
            'image.required'=>'Không được để trống',
        ]);
        $blog = new Blog();
        $blog->title = $request->title;
        $blog->slug_blog = Str::slug($request->title);
        $blog->content = $request->content;
        $blog->status = $request->status;
        $blog->giotao = Carbon::now('Asia/Ho_chi_Minh')->format('H:i:s');
        $blog->ngaytao = Carbon::now('Asia/Ho_chi_Minh')->format('d/M/Y');
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            if (strcasecmp($extension, 'jpg')=== 0
                ||strcasecmp($extension, 'png')=== 0
                ||strcasecmp($extension, 'jepg')=== 0) {
                  $image =Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                while (file_exists("image/blog/". $image))
                  $image = Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                  $file->move('image/blog', $image);
                }
           }
        $blog->image = $image;
        $blog->save();
        return redirect()->route('blog.index');

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
        $blog = Blog::find($id);
        return view('admincp.blog.edit', compact('blog'));
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
           
        ],[
            'title.required'=>'Không được để trống',     
            'content.required'=>'Không được để trống',
            
        ]);
        $blog = Blog::find($id);
        $blog->title = $request->title;
        $blog->slug_blog = Str::slug($request->title);
        $blog->content = $request->content;
        $blog->status = $request->status;
        
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            if (strcasecmp($extension, 'jpg')=== 0
                ||strcasecmp($extension, 'png')=== 0
                ||strcasecmp($extension, 'jepg')=== 0) {
                  $nimage =Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                while (file_exists("image/blog/". $nimage))
                  $nimage = Str::slug($request->title).'_'.Str::random(5).'.'.$extension;
                  $file->move('image/blog', $nimage);
                  
                  $image_path = 'image/blog/'.$blog->image;
                  if (File::exists($image_path)) {
                  File::delete($image_path);
                  //unlink($image_path);
                  }
                }
                $blog->image = $nimage;
           }
        
        $blog->save();
        return redirect()->route('blog.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog = Blog::find($id);
        $comments = CommentBlog::where('blog_id',$blog->id)->get();
        foreach($comments as $item){
            foreach($item->cmt as $i){
                $cmts = Cmt::where('comment_id',$i->id)->get();
                foreach($cmts as $ii){
                    $ii->delete();
                }
                $i->delete();
            }
            $item->delete();
        }
        $image_path = 'image/blog/'.$blog->image;
                  if (File::exists($image_path)) {
                  File::delete($image_path);
                  //unlink($image_path);
        }
        $blog->delete();
        return back();
    }
    
    public function comment_blog(Request $request,$id)
    {
        $comment = new CommentBlog();
        if($request->name){
            $comment->name = $request->name;
        }else{
            $comment->name = 'Tài khoản khách';
        }
        
        $comment->comment = $request->comment;
        $comment->blog_id = $id;
        $comment->giotao = Carbon::now('Asia/Ho_chi_Minh')->format('H:i:s');
        $comment->ngaytao = Carbon::now('Asia/Ho_chi_Minh')->format('d/M/Y');
        $comment->save();
        return back();
    }
    
    public function cmt(Request $request,$id)
    {
        $comment = new Cmt();
        if($request->name){
            $comment->name = $request->name;
        }else{
            $comment->name = 'Tài khoản khách';
        }
        $comment->comment = $request->comment;
        $comment->comment_id = $id;
        $comment->giotao = Carbon::now('Asia/Ho_chi_Minh')->format('H:i:s');
        $comment->ngaytao = Carbon::now('Asia/Ho_chi_Minh')->format('d/M/Y');
        $comment->save();
        return back();
    }
}
