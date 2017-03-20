<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>产品列表</title>
    <meta name="keywords" content="科研项目管理">
    <meta name="description" content="科研项目管理">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <link rel="shortcut icon" href="<%=path%>/static/hplus/favicon.ico">
    <link href="<%=path%>/static/hplus/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/plugins/jqgrid/ui.jqgrid.css?0820" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <style>
        .jqGrid_wrapper{background: white;}
        textarea{ resize:none;}

        th {
            font-weight: normal;
            font-size: 13px;
        }

        td {
            font-size: 13px;
        }
        ol{
            margin-top: 15px;
        }
    </style>
    <script >
        function shuaxin(){
            window.location.reload();
        }
    </script>
    <style type="text/css">
        .venus-menu {
            width: 100%;
            padding: 0;
            position: relative;
            float: left;
            list-style: none;
            box-shadow: 0 0px 0px #dedede;
            margin-left:0px; width: 900px;background: url(../image/index/top_02.jpg) no-repeat;
            border:0px solid red;height:30px;
            padding: 9px 0 0px; font-size: 14.25px; font-family: "Calibri";margin-top: 49px;
        }
        .venus-menu li {
            display: inline-block;
            margin: 0;
            padding: 0;
            float: left;
            top:-8px;
            line-height: 38px;
            text-align:left;
            position: relative;border:0px solid red;
        }
        .meunline{width:2px; height:40px;}


        .venus-menu > li > a {
            padding: 0px 27px;
            font-size: 17px;
            font-weight:bold;
            color: #FFF;
            line-height: 38px;
            text-decoration: none;
            display: block;
            -webkit-transition: color 0.2s linear, background 0.2s linear;
            -moz-transition: color 0.2s linear, background 0.2s linear;
            -o-transition: color 0.2s linear, background 0.2s linear;
            transition: color 0.2s linear, background 0.2s linear;
        }
        .venus-menu li:hover > a, .venus-menu li.active a {
            background-color:#053fad;
            color: Yellow;
        }
    </style>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content  animated fadeInRight">
    <div class="row">
        <div class="col-sm-12" style="margin-right: 60px">
            <form  method="post" name="shaixuanform" id="shaixuanform" class="pull-right mail-search">
                <div class="row" >
                    <div class="col-sm-12">
                        <div class="col-sm-10">
                            <div class="input-group" style="width: 300px;margin-right:10px">
                                <input type="text" class="form-control" id="baidu" name="keyword">
                                <div class="input-group-btn">
                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="input-group-btn col-sm-2" style="position:relative;z-index:9999;">
                            <a onclick="screeningSp3()" class="btn btn-sm btn-primary" style="height: 33px;width: 50px">搜索</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm-12">
            <div class="ibox-content">
                <div class="jqGrid_wrapper">
                    <table id="table_list_1"></table>
                    <div id="pager_list_1"></div>
                </div>
                <p>&nbsp;</p>
            </div>
        </div>
    </div>
</div>

</div>
<!-- 全局js -->
<script src="<%=path%>/static/hplus/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/static/hplus/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=path%>/static/hplus/js/plugins/peity/jquery.peity.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/jqgrid/i18n/grid.locale-cn.js?0820"></script>
<script src="<%=path%>/static/hplus/js/plugins/jqgrid/jquery.jqGrid.min.js?0820"></script>
<script src="<%=path%>/static/hplus/js/plugins/jasny/jasny-bootstrap.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/validate/jquery.validate.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/validate/messages_zh.min.js"></script>
<script src="<%=path%>/static/hplus/js/demo/form-validate-demo.js"></script>
<script src="<%=path%>/static/js/jquery.tips.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/dropzone/dropzone.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/toastr/toastr.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/suggest/bootstrap-suggest.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="<%=path%>/static/js/json2.js"></script>
<script src="<%=path%>/static/sales/sales_input.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/suggest/bootstrap-suggest.min.js"></script>
<script type="text/javascript">
    //查询
    $(document).ready(function (){
        $.jgrid.defaults.styleUI = 'Bootstrap';
        $("#table_list_1").jqGrid({
            //data: mydata,
            url:'index/selectList',
            datatype: "json",
            autoheight: true,
            autowidth: true,
            height:500,
            shrinkToFit: true,
            rownumbers: true,
            rowNum: 10,
            rowList: [10, 15, 20],
            colNames: ['ID','单据编号','客户名称','业务员姓名','是否是老客户','录入人','复核人','运费','是否回款','操作'],
            colModel: [
                {
                    name: 'id',
                    index: 'id',
                    hidden:true,
                    width: 150
                },
                {
                    name: 'documentNumber',
                    index: 'documentNumber',
                    width: 60

                },

                {
                    name: 'customerName',
                    index: 'customerName',
                    width: 150

                },
                {
                    name: 'salesmanName',
                    index: 'salesman_name',
                    width: 40
                },
                {
                    name: 'whether',
                    index: 'whether',
                    width: 60,
                    formatter: function (cellvalue, options, rowdata) {
                        if(cellvalue==0){
                            return '<p>否</p>';
                        }else {
                            return "<p>是</p>";
                        }
                    }
                },
                {
                    name: 'entryPersonnel',
                    index: 'entryPersonnel',
                    width: 80
                },
                {
                    name: 'reviewOfficer',
                    index: 'reviewOfficer',
                    width: 80
                },
                {
                    name: 'freightAmount',
                    index: 'freightAmount',
                    width: 80
                },
                {
                    name: 'receiveState',
                    index: 'receiveState',
                    width: 80,
                    formatter: function (cellvalue, options, rowdata) {
                        if(cellvalue==0){
                            return '未回款';
                        }else {
                            return '已回款';
                        }
                    }
                },
                {
                    name: '#',
                    index: '#',
                    width: 60,
                    align : 'center',
                    sortable: false,
                    formatter: function (cellvalue, options, rowdata) {
                        var code = rowdata.documentNumber;

                        var id=rowdata.id;
                        console.log(code+"&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"+id);
                        var useId = '${userId}'.valueOf();
                        var product_type = rowdata.product_type;
                        htm2 = '<a href="<%=path%>/product/kPicture?code='+code+'&jude=1" class="btn btn-xs btn-outline btn-success">添加收费单</a>';
                        return  '<select onchange="window.location=this.value;" style="border:none;color: #00a1e9">' +
                                '<option>选择付款方式</option>' +
                                '<option value="<%=path%>/index/cash?nmgb='+code+'">现金</option>' +
                                '<option value="<%=path%>/index/elect?nmgb='+code+'">电汇</option>' +
                                '<option value="<%=path%>/index/accept?nmgb='+code+'">承兑</option>' +
                                 '</select>';
                    }
                }
            ],
            pager: "#pager_list_1",
            viewrecords: true,
            hidegrid: false,
            onSelectRow: function (rowid) {
                var data = $('#table_list_1').jqGrid('getRowData',rowid);
                console.log(data);
                $('#id').val(data.id);//编码
                $('#customerName').val(data.customerName);//编码
                $('#salesmanName').val(data.salesmanName);//编码
                $('#whether').val(data.whether);//有效
                $('#entryPersonnel').val(data.entryPersonnel);//类别
                $('#reviewOfficer').val(data.reviewOfficer);//品牌
                $('#documentNumber').val(data.documentNumber);//属性
            },
            gridComplete: function(){
                $('button[name="delete"]').click(function(){
                    var rowid = $(this).attr('rowid');
                    console.log("1....."+rowid)
                    var rowData = $('#table_list_1').jqGrid('getRowData',rowid);
                    $('#id').val($(this).attr('id'));
                    $('#myModal6').modal();
                });
            }

        });
        $(window).bind('resize', function() {
            $("#table_list_1").setGridWidth($(window).width()*0.99);
            $("#table_list_1").setGridHeight($(window).height()*0.99);
        });
    });
    $("#selectId").click(function(){
        $("#myModal").modal();
    });
    function selectbill(){
        var data = $('#billMform').serialize();
        var url  = '<%=path%>/product/getAll?'+data;
        $("#table_list_1").jqGrid('setGridParam', {
            url : url,
            page : 1 });
        $("#table_list_1").jqGrid().trigger('reloadGrid');
        $('#myModal').modal('hide');
    }
    function screeningSp2(){
        var data = $('#shaixuanform2').serialize();
        var url  = '<%=path%>/product/getAll?'+data;
        $("#table_list_1").jqGrid('setGridParam', {
            url : url,
            page : 1 });
        $("#table_list_1").jqGrid().trigger('reloadGrid');
//        $('#myModal7').modal('hide');
    }
    //修改
    $(document).ready(function () {
        $("#import").click(function(){
            window.location.href="<%=path%>/product/npimport";
        });
        $('#updateId').click(function(){
            var iaId = $('#sproduct_code');
            console.log(iaId);
            if(iaId.val() == '' || iaId.length==0){
                toastr.warning('请选择一条数据','操作提示');
                return;
            }
            $('#changeModal').modal('show');
        });
    });
    //toast setting
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "onclick": null,
        "showDuration": "400",
        "hideDuration": "1000",
        "timeOut": "3000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };
</script>
<!-- layerDate plugin javascript -->
<script src="../../static/hplus/js/plugins/layer/laydate/laydate.js"></script>
<script type="text/javascript">
    //百度搜索测试

    var num = $("#baidu").val();
    console.log(num)
    var baiduBsSuggest = $("#baidu").bsSuggest({
        allowNoKeyword: false, //是否允许无关键字时请求数据
        multiWord: true, //以分隔符号分割的多关键字支持
        separator: ",", //多关键字支持时的分隔符，默认为空格
        getDataMethod: "url", //获取数据的方式，总是从 URL 获取
        url: '<%=path%>/product/json?p='+num+'',
        /*优先从url ajax 请求 json 帮助数据，注意最后一个参数为关键字请求参数*/
//        jsonp: 'cb',
        /*如果从 url 获取数据，并且需要跨域，则该参数必须设置*/
        processData: function (json) { // url 获取数据时，对数据的处理，作为 getData 的回调函数
            var i, len, data = {
                value: []
            };
//            if (!json || !json.s || json.s.length === 0) {
//                return false;
//            }
            len = json.t.length;
            console.log(len);
            console.log(json.t);
            jsonStr = "{'value':[";
            for (i = 0; i < len; i++) {
                data.value.push({
                    word: json.t[i]
                });
            }
            data.defaults = 'baidu';

            //字符串转化为 js 对象
            return data;
        }
    });
</script>
<script type="text/javascript">
    function screeningSp3(){
        var data = $('#shaixuanform').serialize();
        console.log(data);
        var url  = '<%=path%>/index/selectList?'+data;
        $("#table_list_1").jqGrid('setGridParam', {
            url : url,
            page : 1 });
        $("#table_list_1").jqGrid().trigger('reloadGrid');
    }
</script>
<script>
    //外部js调用
    laydate({
        elem: '#sstart_time', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
    });

    laydate({
        elem: '#send_time', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
    });
    laydate({
        elem: '#snew_time', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
    });
</script>
<!-- 全局js -->
<%--<script src="../../static/hplus/js/jquery.min.js?v=2.1.4"></script>--%>
<%--<script src="../../static/hplus/js/bootstrap.min.js?v=3.3.6"></script>--%>
<%--<script src="../../static/hplus/js/plugins/metisMenu/jquery.metisMenu.js"></script>--%>
<%--<script src="../../static/hplus/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>--%>
<%--<script src="../../static/hplus/js/plugins/layer/layer.min.js"></script>--%>
<%--<script src="../../static/hplus/js/hplus.js?v=4.1.0"></script>--%>
<%--<script type="text/javascript" src="../../static/hplus/js/contabs.js"></script>--%>
<%--<script src="../../static/hplus/js/plugins/pace/pace.min.js"></script>--%>
</body>
</html>
