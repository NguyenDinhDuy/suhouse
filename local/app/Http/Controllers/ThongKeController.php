<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\Color;
use App\Size;
use App\Product;
use App\ProductSpecifi;
use App\Category;
use DB;
use App\User;

class ThongKeController extends Controller
{
    public function thongKeOrder()
    {
        $data['status'] = count(Order::all());
        $data['status0'] = count(Order::where('status', 0)->get());
        $data['status1'] = count(Order::where('status', 1)->get());
        $data['status2'] = count(Order::where('status', 2)->get());
        $data['status3'] = count(Order::where('status', 3)->get());
        $data['prices'] = DB::table('orders')->orderby('total', 'desc')->take(5)->get();
        $data['users'] = User::all();
        $data['orders'] = Order::all();
        foreach (Order::all() as $order) {
            if ($order->user_id != null) {

                $data['orderusers'] = DB::table('orders')
                    ->select('users.id', \DB::raw("COUNT('orders.id') AS order_count"))
                    ->join('users', 'users.id', '=', 'orders.user_id')
                    ->orderBy('order_count', 'desc')
                    ->groupBy('users.id')
                    ->take(5)
                    ->get();
            }
        }
        return view('backend.thongkeorder', $data);
    }

    public function thongKeProduct()
    {
//        $data['orderproducts'] = DB::table('order_product')
//        ->select('products.prod_id', \DB::raw("COUNT('order_product.qty') AS order_count"))
//        ->join('products', 'products.prod_id', '=', 'order_product.product_id')
//        ->join('orders', 'orders.id', '=', 'order_product.order_id')
//        ->orderBy('order_count', 'desc')
//        ->groupBy('products.prod_id')
//        ->take(5)
//        ->get();


        $data['orderproducts'] = DB::table('prod_specifi')
            ->select('products.prod_id', \DB::raw("COUNT('prod_specifi.quantity') AS order_count"))
            ->join('products', 'products.prod_id', '=', 'prod_specifi.product_id')
            ->orderBy('order_count', 'desc')
            ->groupBy('products.prod_id')
            ->take(1)
            ->get();

        dd($data);
        return view('backend.thongkeproduct');
    }
}
