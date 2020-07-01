<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Models\Contacts;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    public function getContact()
    {
        return view('frontend.contact.index');
    }
    public function saveContact(Request $request)
    {
        $data = $request->except('_token');
        Contacts::insert($data);

        \Toastr::success('Send feedback successfully', '', ["positionClass" => "toast-top-right"]);
        return redirect()->back();
    }
}
