$(document).ready(function () {

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->

    $('#dataTables-mytables').DataTable({
        processing: true,
        serverSide: true,
        lengthChange: false,//是否允许用户改变表格每页显示的记录数
        ordering: false,//是否允许用户排序
        paging: true,//是否分页
        pagingType: "full_numbers",//除首页、上一页、下一页、末页四个按钮还有页数按钮
        /* scrollX: true,//允许水平滚动
         scrollY: "200px",
         scrollCollapse: true, */
        searching: false,//是否开始本地搜索
        stateSave: false,//刷新时是否保存状态
        autoWidth: true,//自动计算宽度
        //deferRender : true,//延迟渲染
        language: {
            "lengthMenu": "每页 _MENU_ 条记录",
            "zeroRecords": " ",
            "info": "当前 _START_ 条到 _END_ 条 共 _TOTAL_ 条",
            "infoEmpty": "无记录",
            "infoFiltered": "(从 _MAX_ 条记录过滤)",
            // "search": "用户",
            // "processing": "载入中",
            "paginate": {
                "first": "首页",
                "previous": "上一页",
                "next": "下一页",
                "last": "尾页"
            }
        },
        ajax: {
            url: '/mydatatables',
            type: 'POST'
        },
        columns: [
            {data: "id"},
            {data: "orderid"},
            {data: "content"},
            {data: "name", defaultContent: ""},
            {
                "data": "createTime",
                render: function (data) {
                    return $.format.date(new Date(data), "yyyy-MM-dd HH:mm:ss");
                }
            },
            {
                data: "status", render: function (data) {
                switch (data) {
                    case '0':
                        return '初始';
                    case '1':
                        return '待支付';
                    case '2':
                        return '支付中';
                    case '3':
                        return '成功';
                    case '4':
                        return '失败';
                    case '9':
                        return '未知';
                    default:
                        return '初始';
                }

            }

            },
            {data: "returnMsg", defaultContent: ""}
        ]
    });

});


