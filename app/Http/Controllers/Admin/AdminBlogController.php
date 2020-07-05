<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Blogs;
use App\Http\Controllers\Controller;

class AdminBlogController extends Controller
{
    public function index(Request $request)
    {
        $blogs = Blogs::select('id','b_name','b_image','b_description','b_active','created_at')->orderBy('created_at','DESC')->get();
        return view('admin.blogs.index',compact('blogs'));
    }
    public function getAddBlogs()
    {
        return view('admin.blogs.add');
    }

    public function handleAddBlogs(Request $request)
    {
        $data = new Blogs();
        $validateData = $request->validate([
            'name' => 'required',
            'image' => 'required',
            'description' => 'required',
            'content' => 'required',
            'meta_title' => 'required',
            'meta_description' => 'required',
        ]);

        if ($request->hasFile('image')) {

            $file = $request->image;

            //getClientOriginalName() lấy tên file
            $file_name = $file->getClientOriginalName();

            //getMimeType lấy kiểu file

            $file_type = $file->getMimeType();

            // $file->getSize() lấy size ảnh  theo bytes 1mb =1048576b

            $file_size = $file->getSize();

            if ($file_type == 'image/png' || $file_type == 'image/jpg' || $file_type == 'image/jpeg' || $file_type == 'image/gif') {
                if ($file_size <= 1048576) {
                    if ($file->move(public_path().'/upload/images', $file_name)) {
                        $data->b_name = $request->name;
                        $data->b_slug = str_slug($request->name);
                        $data->b_description = $request->description;
                        $data->b_content = $request->content;
                        $data->b_description_seo = $request->meta_description;
                        $data->b_title_seo = $request->meta_title;
                        $data->b_image = json_encode($file_name);
                        $data->save();
                        \Toastr::success('Add blog successfully', '', ["positionClass" => "toast-top-right"]);
                        return redirect()->route('admin.blogs');
                    }

                } else {
                    \Toastr::error("You cann't upload image over 1Mb", '', ["positionClass" => "toast-top-right"]);
                    return redirect()->back();
                }
            } else {
                \Toastr::error("This file isn't image file", '', ["positionClass" => "toast-top-right"]);
                return redirect()->back();
            }
    
    
            } else {
                \Toastr::error("You don't have a product image", '', ["positionClass" => "toast-top-right"]);
                return redirect()->back();
            }
    }
    public function deleteBlogs(Request $request, Blogs $blogs)
    {
        if($request->ajax()){
            // dung la ajax gui len thi moi xu ly
            $id = $request->id;
            $del = $blogs->deleteBlogsById($id);
            if($del){
               echo "OK"; 
            } else {
                echo "FAIL";
            }
        }
    }
    public function editBlogs(Request $request, $id)
    {
        $blogs = Blogs::find($id);
        return view('admin.blogs.edit', compact('blogs'));
    }
    public function handleEditBlogs(Request $request, $id)
    {
        $data = new Blogs;
        if ($request->hasFile('image')) {

            $file = $request->image;

            //getClientOriginalName() lấy tên file
            $file_name = $file->getClientOriginalName();

            //getMimeType lấy kiểu file

            $file_type = $file->getMimeType();

            // $file->getSize() lấy size ảnh  theo bytes 1mb =1048576b

            $file_size = $file->getSize();

            if ($file_type == 'image/png' || $file_type == 'image/jpg' || $file_type == 'image/jpeg' || $file_type == 'image/gif') {
                if ($file_size <= 1048576) {
                    if ($file->move(public_path().'/upload/images', $file_name)) {
                        $arr['b_name'] = $request->name;
                        $arr['b_slug'] = str_slug($request->name);
                        $arr['b_image'] = json_encode($file_name);
                        $arr['b_description'] = $request->description;
                        $arr['b_content'] = $request->content;
                        $arr['b_description_seo'] = $request->meta_description;
                        $arr['b_title_seo'] = $request->meta_title;
                        $data::where('id',$id)->update($arr);
                        \Toastr::success('Edit blog successfully', '', ["positionClass" => "toast-top-right"]);
                        return redirect()->back();
                    }
                    \Toastr::error('Edit blog failed', '', ["positionClass" => "toast-top-right"]);
                    return redirect()->back();

                } else {
                    \Toastr::error("You cann't upload image over 1Mb", '', ["positionClass" => "toast-top-right"]);
                    return redirect()->back();
                }
            } else {
                \Toastr::error("This file isn't image file", '', ["positionClass" => "toast-top-right"]);
                return redirect()->back();
            }
    
    
        } else {
            \Toastr::error("You don't have a product image", '', ["positionClass" => "toast-top-right"]);
            return redirect()->back();
        }
    }
    public function searchBlogs(Request $request, Blogs $blogs){
        if($request->ajax()){
            $value = $request->value;
            $blogs = $blogs->getAllDataBlogs($value);
            $viewData = [
                'blogs' => $blogs
            ];
            $html = view('admin.blogs.searchBlogs', $viewData)->render();
            return response()->json($html);
        }
    }
}
