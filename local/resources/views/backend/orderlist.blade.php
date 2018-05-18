@extends('backend.master')
@section('title','Danh sách sản phẩm')
<style>
    body {
        font-size: 8px;
    }

</style>
@section('main')
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

        <div class="row">
            <div class="col-xs-12 col-md-12 col-lg-12">

                <div class="panel panel-primary">
                    <div class="panel-heading">Danh sách đơn hàng</div>
                    <div class="panel-body">
                        <div class="bootstrap-table">
                            <div class="table-responsive">
                                <table id="prodlist" class="table table-hover table-bordered" style="margin-top:20px;">
                                    <thead>
                                    <tr class="bg-primary">
                                        <th width="6%">Mã đơn hàng</th>
                                        <th>Tên khách hàng</th>
                                        <th>Email</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Ngày đặt hàng</th>
                                        <th width="12%">Hành động</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($orders as $order)
                                        <tr class="@switch($order->status) @case(1) {{ 'bg-warning' }}  @break @case(2) {{ 'bg-success' }}  @break @case(3) {{ 'bg-danger' }} @default {{ 'bg-info' }} @endswitch">
                                            <td>#{{$order->bill_code}}</td>
                                            <td>{{$order->bill_name}}</td>
                                            <td>{{$order->bill_email}}</td>
                                            <td>{{$order->bill_phone}}</td>
                                            <td>{{$order->address}}</td>
                                            <td>{{$order->created_at}}</td>
                                            <td style="padding-top: 15px">
                                                <a href="{{asset('admin/order/edit/'.$order->id)}}"
                                                   style="background: brown;color: #fff;padding: 7px 12px;
                                                   border-radius: 5px">
                                                    <i class="fa fa-pencil"></i> Sửa</a>
                                                <a onclick="return confirm('Bạn có chắc chắn muốn xóa đơn hàng này?')"
                                                   href="{{asset('admin/order/delete/'.$order->id)}}"
                                                   style="background: brown;color: #fff;padding: 7px 12px;
                                                   border-radius: 5px">
                                                    <i class="fa fa-trash" aria-hidden="true"></i> Xóa</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                                {{ $orders->links() }}
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div><!--/.row-->
    </div>    <!--/.main-->
@stop
