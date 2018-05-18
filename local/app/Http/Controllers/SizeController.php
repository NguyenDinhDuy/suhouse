<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Size;
use App\Http\Requests\AddSizeRequest;
use App\Http\Requests\EditSizeRequest;

class SizeController extends Controller
{
    public function getSize()
    {
        $data['sizelist'] = Size::all();
        return view('backend.size', $data);
    }

    public function postSize(AddSizeRequest $request)
    {
        $size = new Size;
        $size->value = $request->name;
        $size->save();
        return back();
    }

    public function getEditSize($id)
    {
        $data['size'] = Size::find($id);
        return view('backend.editsize', $data);
    }

    public function postEditSize(EditSizeRequest $request, $id)
    {
        $size = Size::find($id);
        $size->value = $request->name;
        $size->save();
        return redirect()->intended('admin/size');
    }

    public function getDeleteSize($id)
    {
        Size::destroy($id);
        return back();
    }
}

