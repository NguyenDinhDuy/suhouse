@extends('frontend.master')
@section('title','Tra cứu đơn hàng')
@section('main')

    <script language="javascript">
        function load_ajax() {
            $.ajax({
                url: "{{route('searchbill')}}",
                type: "get",
                dataType: "json",
                data: {code: $('#code').val()},
                success: function (result) {
                    if (result[0].status==0) {
                        // alert(result[0].status);
                        $('#result').val(result[0].status);
                    }
        }
        })
        ;
        }
    </script>


    <div style="margin-top: 100px;margin-bottom: 50px" class="container text-center">
        <p style="font-weight: bold;font-size: 28px;margin-bottom: 30px">TRA CỨU ĐƠN HÀNG</p>
        <i style="font-size: 16px;margin-top: 30px">Hãy nhập<strong> Mã đơn hàng</strong> để tra cứu tình trạng đơn hàng
            của bạn nhé</i>
        <div>
            <a type="hidden" href="{!!url('codesearch')!!}" id="linkcode"></a>

            <form id="searchform">
                <input id="code" type="number" width="300px" height="100px"
                       style="margin-top: 30px;width: 580px;height: 50px;font-size: 16px;margin-left: -200px;padding-left: 10px;"
                       name="code"
                       placeholder="Nhập mã đơn hàng để kiểm tra">

                <button id="search" type="submit"
                        style="margin-top:5px;;font-weight:bold;color: #fff;background: #F37021;height: 50px;margin-left: -200px;width: 580px;border: none;font-size: 16px;"
                        onclick="load_ajax()">
                    Kiểm tra
                </button>
            </form>
            <div >
                 <p id="result"></p>
            </div>

        </div>
    </div>
@stop