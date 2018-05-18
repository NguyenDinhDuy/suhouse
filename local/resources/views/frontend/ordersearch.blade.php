@extends('frontend.master')
@section('title','Tra cứu đơn hàng')
@section('main')

    <script language="javascript">

        $(document).ready(function () {
            $(document).on('click', '#search', function (e) {
                e.preventDefault();
                $.ajax({
                    url: "{{route('searchbill')}}",
                    type: "get",
                    dataType: "json",
                    data: {code: $('#code').val()},
                    success: function (result) {

                        if (!$.trim(result)) {
                            $('#td1').attr('colspan', 5);
                            $('#td1').append("Không tìm tháy đơn hàng");
                        } else {
                            if (result[0].status == 0) {

                                if ((document.getElementById("td1").innerText) == "") {
                                //
                                    $('#td1').append(result[0].bill_code);
                                    $('#td2').append(result[0].created_at);
                                    $('#td3').append(result[0].bill_name);
                                    $('#td4').append(result[0].total).append(" đ");
                                    $('#td5').append("Chưa kiểm tra");
                                //     // $('#td1').remove().append(result[0].bill_code);
                                //     // $('#td2').remove();
                                //     // $('#td3').remove();
                                //     // $('#td4').remove();
                                //     // $('#td5').remove();
                                //     // $('#code').val()
                                //     $('#table').reload();
                                }

                                // $('#td1').append(result[0].bill_code);
                                // $('#td2').append(result[0].created_at);
                                // $('#td3').append(result[0].bill_name);
                                // $('#td4').append(result[0].total).append(" đ");
                                // $('#td5').append("Chưa kiểm tra");
                            } else if (result[0].status == 1) {


                                $('#td1').append(result[0].bill_code);
                                $('#td2').append(result[0].created_at);
                                $('#td3').append(result[0].bill_name);
                                $('#td4').append(result[0].total).append(" đ");
                                $('#td5').append("Đang vận chuyển");
                            } else if (result[0].status == 2) {

                                $('#td1').append(result[0].bill_code);
                                $('#td2').append(result[0].created_at);
                                $('#td3').append(result[0].bill_name);
                                $('#td4').append(result[0].total).append(" đ");
                                $('#td5').append("Giao hàng thành công");
                            } else if (result[0].status == 3) {

                                $('#td1').append(result[0].bill_code);
                                $('#td2').append(result[0].created_at);
                                $('#td3').append(result[0].bill_name);
                                $('#td4').append(result[0].total).append(" đ");
                                $('#td5').append("Giao hàng thất bại");
                            }
                        }
                    }
                });
            });
        })
        ;
    </script>


    <div style="margin-top: 100px;margin-bottom: 50px" class="container text-center">
        <p style="font-weight: bold;font-size: 28px;margin-bottom: 30px">TRA CỨU ĐƠN HÀNG</p>
        <i style="font-size: 16px;margin-top: 30px">Hãy nhập<strong> Mã đơn hàng</strong> để tra cứu tình trạng đơn hàng
            của bạn nhé</i>
        <div>
            {{--<a type="hidden" href="{!!url('codesearch')!!}" id="linkcode"></a>--}}

            <form id="searchform">
                <input id="code" type="number" width="300px" height="100px"
                       style="margin-top: 30px;width: 580px;height: 50px;font-size: 16px;margin-left: -200px;padding-left: 10px;"
                       name="code"
                       placeholder="Nhập mã đơn hàng để kiểm tra">

                <button id="search"
                        style="margin-top:5px;;font-weight:bold;color: #fff;background: #F37021;height: 50px;margin-left: -200px;width: 580px;border: none;font-size: 16px;">
                    Kiểm tra
                </button>
            </form>
            {{--<div>--}}
            {{--<p class="text-center"--}}
            {{--style="padding: 25px;border: 1px solid #ccc; width: 580px;margin-left: 260px;margin-top: 20px"--}}
            {{--type="text" id="result"></p>--}}
            {{--</div>--}}

        </div>
    </div>

    <table id="table" class="text-center" style="margin-left:250px;border: 1px solid #666">
        <thead>
        <th style="padding:15px 40px;background: #eee;border: 1px solid #666">Mã đơn hàng</th>
        <th style="padding:15px 40px;background: #eee;border: 1px solid #666">Ngày đặt</th>
        <th style="padding:15px 40px;background: #eee;border: 1px solid #666">Tên khách hàng</th>
        <th style="padding:15px 40px;background: #eee;border: 1px solid #666">Tổng tiền thanh toán</th>
        <th style="padding:15px 40px;background: #eee;border: 1px solid #666">Trạng thái</th>
        </thead>
        <tbody>

        <tr>
            <td id="td1" class="text-center" style="border: 1px solid #666"></td>
            <td id="td2" class="text-center" style="border: 1px solid #666"></td>
            <td id="td3" class="text-center" style="border: 1px solid #666"></td>
            <td id="td4" class="text-center" style="border: 1px solid #666"></td>
            <td id="td5" class="text-center" style="border: 1px solid #666"></td>
        </tr>

        </tbody>
    </table>


    <div style="margin-left: 360px;margin-bottom: 100px;margin-top: 100px">
        <div style="margin-top: 50px;"><span><i style="color: orangered;" class="fa fa-lightbulb-o"></i></span> Chú
            thích trạng thái đơn hàng:
        </div>
        <div style=" padding-top:10px;font-weight: bold;font-size: 12px"><span
                    style="color: orangered">- Chưa xác nhận:</span> SuHouse chưa xác nhận đơn hàng của bạn.
        </div>
        <div style=" padding-top: 10px;font-weight: bold;font-size: 12px"><span style="color: orangered">- Đang vận chuyển:</span>
            SuHouse đã xác nhận và đơn hàng của bạn đang
            trong quá trình vận chuyển
        </div>
        <div style=" padding-top: 10px;font-weight: bold;font-size: 12px"><span style="color: orangered">- Giao hàng thành công:</span>
            SuHouse đã giao hàng thành công cho
            bạn
        </div>
        <div style=" padding-top: 10px;font-weight: bold;font-size: 12px"><span style="color: orangered">- Giao hàng thất bại:</span>
            Việc giao hàng đã bị thất bại do không
            liên lạc được hoặc do một lí do khác
        </div>
    </div>
@stop