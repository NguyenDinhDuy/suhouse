<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Category;
use App\Color;
use App\Size;
use App\Http\Requests\AddProductRequest;
use App\Product;
use App\ProdSpecifi;
use Session;
use DB;

class ProductController extends Controller
{
    public function getProduct()
    {
        $data['productlist'] = DB::table('products')->
        join('categories', 'products.prod_cate', '=', 'categories.cate_id')->orderby('prod_id', 'desc')->paginate(5);
        return view('backend.product', $data);
    }

    public function getAddProduct()
    {
        $data['catelist'] = Category::all();
        $data['colorlist'] = Color::all();
        $data['sizelist'] = Size::all();
        return view('backend.addproduct', $data);
    }

    public function postAddProduct(AddProductRequest $request)
    {
        $product = new Product;
        $filename = $request->img->getClientOriginalName();
        $product->prod_name = $request->name;
        $product->prod_code = $request->code;
        $product->prod_slug = str_slug($request->name);
        $product->prod_thumbnail = $filename;
        $product->prod_price = $request->price;
        $product->promotion_price = $request->promotion;
        $product->prod_description = $request->description;
        $product->prod_cate = $request->cate;
        $product->prod_featured = $request->featured;
        $product->save();
        $request->img->storeAs('avatar', $filename);


        $child = count($request->color);
        for ($i = 0; $i < $child; $i++) {

            $prodspecifi = new ProdSpecifi;
            $filename = $request->imgspe[$i]->getClientOriginalName();
            $prodspecifi->product_id = $product->prod_id;
            $prodspecifi->prod_color_id = $request->color[$i];
            $prodspecifi->prod_size_id = $request->size[$i];
            $prodspecifi->quantity = $request->quanti[$i];
            $prodspecifi->image = $filename;
            $prodspecifi->save();
            $request->imgspe[$i]->storeAs('avatar', $filename);
        }

        Session::flash('alert', "Thêm mới thành công");
        return redirect()->intended('admin/product');

    }

    public function getEditProduct($id)
    {
        $data['product'] = Product::find($id);
        $data['catelist'] = Category::all();
        $data['colorlist'] = Color::all();
        $data['sizelist'] = Size::all();
        $data['productspecifi'] = DB::table('prod_specifi')->where('product_id', $id)->get();
        return view('backend.editproduct', $data);
    }


    public function postEditProduct(Request $request, $id)
    {
        $product = new Product;

        $arr['prod_name'] = $request->name;
        $arr['prod_code'] = $request->code;
        $arr['prod_slug'] = str_slug($request->name);
        $arr['prod_price'] = $request->price;
        $arr['promotion_price'] = $request->promotion;
        $arr['prod_description'] = $request->description;
        $arr['prod_cate'] = $request->cate;
        $arr['prod_featured'] = $request->featured;
        if ($request->hasFile('img')) {
            $img = $request->img->getClientOriginalName();
            $arr['prod_thumbnail'] = $img;
            $request->img->storeAs('avatar', $img);
        }

        $child = count($request->color);
        for ($i = 0; $i < $child; $i++) {
//            $checkfile = array_dot($request->file());
//            dd($checkfile);
//            $img = $request->imageOld[$i];
//            if (array_has($checkfile, 'imgspe.' . $i)) {

            $prodspecifi = new ProdSpecifi;

            $arr1['prod_color_id'] = $request->color[$i];
            $arr1['prod_size_id'] = $request->size[$i];
            $arr1['quantity'] = $request->quanti[$i];
            $arr1['image'] = $request->imageOld[$i];

            if ($request->hasFile('imgspe.' . $i)) {
                $img1 = $request->imgspe[$i]->getClientOriginalName();
                $arr1['image'] = $img1;
                $request->imgspe[$i]->storeAs('avatar', $img1);
            }

            $prodspecifi->where([['product_id', $id], ['prod_color_id', $request->colorOld[$i]], ['prod_size_id', $request->sizeOld[$i]]])
                ->update($arr1);
        }

        $child1 = count($request->color1);
        for ($i = 0; $i < $child1; $i++) {
            $prodspecifi = new ProdSpecifi;
            $filename = $request->imgspe1[$i]->getClientOriginalName();
            $prodspecifi->product_id = $id;
            $prodspecifi->prod_color_id = $request->color1[$i];
            $prodspecifi->prod_size_id = $request->size1[$i];
            $prodspecifi->quantity = $request->quanti1[$i];
            $prodspecifi->image = $filename;
            $prodspecifi->save();
            $request->imgspe1[$i]->storeAs('avatar', $filename);
        }
        $product->where('prod_id', $id)->update($arr);
        return redirect('admin/product');
    }

    public function getDeleteProduct($id)
    {
        Product::destroy($id);
        return back();
    }

}