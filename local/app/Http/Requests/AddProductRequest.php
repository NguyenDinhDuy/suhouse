<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'img' => 'image',
            'name' => 'unique:products,prod_name',
            'code' => 'unique:products,prod_code',
//            'promotion'=>'max:price'
        ];
    }

    public function messages()
    {
        return [
            'name.unique' => 'Tên sản phẩm đã tồn tại',
            'code.unique' => 'Mã sản phẩm đã tồn tại',
//            'promotion.max'=>'Gíá khuyến mãi chỉ được phép nhỏ hơn hoặc bằng giá gốc của sản phẩm'
//            'initial_page' => 'required_with:end_page|integer|min:1|digits_between: 1,5',
//            'end_page' => 'required_with:initial_page|integer|greater_than_field:initial_page|digits_between:1,5'
        ];
    }
}
