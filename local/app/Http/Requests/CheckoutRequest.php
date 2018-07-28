<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CheckoutRequest extends FormRequest
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
        $emailValidation = auth()->user() ? 'required|email' : 'required|email|unique:users';
        return [
            'email' => $emailValidation,
            'city_id' => 'not_in:0',
            'district_id' => 'not_in:0',
        ];
    }
    public function messages()
    {
        return [
            'email.unique' => 'Bạn đã có tài khoản với emil này. Vui lòng <a href="/suhouse/login">đăng nhập</a> để tiếp tục.',
            'city_id.not_in' => 'Bạn phải chọn địa chỉ tỉnh hoặc thành phố giao hàng',
            'district_id.not_in' => 'Bạn phải chọn địa chỉ quận huyện giao hàng',
        ];
    }
}