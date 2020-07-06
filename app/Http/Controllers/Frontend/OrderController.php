<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Transaction;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\Products;
use App\Models\Sizes;
use App\Models\Colors;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function index(){
        $idUser = Auth::id();
        $items = Order::join('transactions','transactions.id','=','orders.or_transaction_id')
                        ->join('products','products.id', '=', 'orders.or_product_id')
                        ->select('orders.or_price','orders.or_qty'
                                ,'orders.or_transaction_id','transactions.tr_total',
                                'transactions.tr_status','transactions.tr_user_id','orders.or_product_id',
                                'products.name_product','products.image_product','orders.or_size','orders.or_color',
                                'transactions.tr_confirm','transactions.tr_payment_method')
                        ->where('transactions.tr_user_id',$idUser)
                        ->orderBy('orders.or_transaction_id')
                        ->get();
        $arrSizes = Sizes::select('id','letter_size')->get();
        $arrColors = Colors::select('id', 'name_color')->get();
        return view('frontend.order.track-order', compact('items','arrSizes','arrColors'));
    }
    
    public function confirmOrders(Request $request){
        $id = $request->transaction_id;
        $transaction = Transaction::find($id);
        $transaction->tr_confirm = 1;
        $transaction->save();
        \Toastr::success('Confirmed successfully', '', ["positionClass" => "toast-top-right"]);
        return redirect()->back();
    }
    public function removeOrders(Request $request){
        $id = $request->transaction_id2;
        $transaction = Transaction::find($id);
        $transaction->tr_confirm = 2;
        $transaction->save();
        \Toastr::success('Removed successfully', '', ["positionClass" => "toast-top-right"]);
        return redirect()->route('fr.getOrderTracking');
    } 
}
