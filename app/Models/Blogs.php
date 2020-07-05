<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Blogs extends Model
{
    protected $table = 'blogs';
    protected $guarded = ['*'];

    public function deleteBlogsById($id)
    {
        $del = DB::table('blogs')
                   ->where('id',$id)
                   ->delete();
        return $del;
    }
    public function getFeedbackBlogs($id){
        $data = DB::table('comments')
                    ->join('blogs','blogs.id', '=', 'comments.co_blog_id')
                    ->select('comments.*', 'blogs.b_name')
                    ->orderBy('created_at','DESC')
                    ->paginate(100);
        return $data;
    }
    public function getAllDataBlogs($keyword = '')
    {
        $data = Blogs::select('id','b_name','b_image','b_description','b_active','created_at')
                ->where('b_name','LIKE','%'.$keyword.'%')
                ->orWhere('b_description', 'LIKE' , '%'.$keyword.'%')
                ->orderBy('created_at', 'desc')
                ->get();
        // if($data){
        //     $data = $data->toArray();
        // }
        return $data;
    }
}
