<?php

namespace App\Http\Controllers\Admin;

use App\Models\Users;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminUserController extends Controller
{
    public function index(){
        $users = Users::whereRaw(1);
        $users = $users->orderBy('created_at','DESC')->paginate(10);

        $viewData = [
            'users' => $users
        ];

        return view('admin.users.index', $viewData);
    }
    public function deleteUser(Request $request, Users $users)
    {
        if($request->ajax()){
            $id = $request->id;
            $del = $users->deleteUsersById($id);
            if($del){
                echo "OK"; 
            } else {
                echo "FAIL";
            }
        }
    }
    public function searchUsers(Request $request, Users $users)
    {
        if($request->ajax()){
            $value = $request->value;
            $users = $users->getAllDataUser($value);
            $viewData = [
                'users' => $users
            ];
            $html = view('admin.users.searchUser', $viewData)->render();
            return response()->json($html);
        }
    }
}
