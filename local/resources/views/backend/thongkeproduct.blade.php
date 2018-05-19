@extends('backend.master')
@section('title','Màu sắc sản phẩm')
@section('main')

    <div style="margin-top: 20px" class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="row">
            <div class="col-xs-12 col-md=12 col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Top 5 sản phẩm bán chạy nhất
                    </div>

                    <div class="panel-body">
                        <table id="prodlist" class="table table-hover table-bordered" style="margin-top:20px;">
                            <thead>
                            <tr class="bg-primary">
                                <th width="25%">Tên khách hàng</th>
                                <th>Email</th>
                                <th>Số đơn hàng</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md=12 col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Top 5 sản phẩm còn ít trong kho hàng
                    </div>

                    <div class="panel-body">
                        <table id="prodlist" class="table table-hover table-bordered" style="margin-top:20px;">
                            <thead>
                            <tr class="bg-primary">
                                <th width="25%">Tên khách hàng</th>
                                <th>Email</th>
                                <th>Số đơn hàng</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop