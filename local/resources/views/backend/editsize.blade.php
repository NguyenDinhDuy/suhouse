@extends('backend.master')
@section('title','Sửa danh mục kích cỡ')
@section('main')
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sửa thông tin kích cỡ</h1>
            </div>
        </div><!--/.row-->

        <div class="row">
            <div class="col-xs-12 col-md-5 col-lg-5">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Sửa thông tin kích cỡ
                    </div>
                    <div class="panel-body">
                        @include('errors.note')
                        <form method="post">
                            <div class="form-group">
                                <label>Tên màu sắc:</label>
                                <input type="text" name="name" class="form-control" placeholder="Tên kích cỡ..."
                                       value="{{$size->value}}">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="form-control btn btn-primary"
                                       placeholder="Tên kích cỡ..." value="Sửa">
                            </div>
                            <div class="form-group">
                                <a href="{{asset('admin/size')}}" class="form-control btn btn-danger">Hủy bỏ</a>
                            </div>
                            {{csrf_field()}}
                        </form>
                    </div>
                </div>
            </div>
        </div><!--/.row-->
    </div>    <!--/.main-->
@stop