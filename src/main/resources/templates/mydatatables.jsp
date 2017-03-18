<head>
    <!-- DataTables CSS -->
    <link href="/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
    <!-- DataTables Responsive CSS -->
    <link href="/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
</head>


<body>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-10">
            <div class="panel panel-default">

                <!-- /.panel-heading -->
                <div class="panel-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#mytables-pills" data-toggle="tab">记录</a></li>
                        <%--<li><a href="#other-pills" data-toggle="tab">其它记录</a></li>--%>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content small">
                        <div class="tab-pane fade in active" id="mytables-pills">
                            <!--签名列表-->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            发送记录
                                        </div>
                                        <!-- /.panel-heading -->
                                        <div class="panel-body">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-mytables">
                                                <thead>
                                                <tr>
                                                    <th>编号</th>
                                                    <th>订单</th>
                                                    <th>内容</th>
                                                    <th>名称</th>
                                                    <th>创建时间</th>
                                                    <th>状态</th>
                                                    <th>返回信息</th>
                                                </tr>
                                                </thead>
                                            </table>

                                        </div>
                                        <!-- /.panel-body -->
                                    </div>
                                    <!-- /.panel -->
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>

                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
        </div>

    </div>



    <!-- DataTables JavaScript -->
    <script src="/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/vendor/datatables-responsive/dataTables.responsive.js"></script>
    <script src="/dist/js/mydatatables.js"></script>

</body>
