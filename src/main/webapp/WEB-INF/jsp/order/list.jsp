<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <!--支持 浏览器内核 webkit、ie-comp IE兼容、ie-stand IE标准 -->
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <!--开启IE兼容模式  -->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <!--移动设备支持， width=device-width 自适应宽度,initial-scale=1.0 初始缩放比例为1:1,user-scalable 用户是否可以手动缩放-->
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <link rel='stylesheet' type='text/css' href='../../static/css/bootstrap.min.css'>
    <link rel='stylesheet' type='text/css' href='../../static/plus/table/bootstrap-table.min.css'>
    <link rel='stylesheet' type='text/css' href='../../static/plus/datatime/bootstrap-datetimepicker.min.css'>

</head>
<body>
恭喜你，登录成功！
<div id="myTabContent" class="tab-content">
    <!--下拉框-->
    <div class="tab-pane fade" id="tab1">
        <div class="form-group">
            下拉框1： <input name="status1" class="form-control" id="order_status1" style="width:190px;" value="2"/>
        </div>
        <div class="checkbox">
            下拉框2：
            <select name="status2" style="width:190px;" id="order_status2" class="form-control" value="1">
                <option value=1>lzx1</option>
                <option value=2>lzx2</option>
                <option value=3>lsl</option>
                <option value=4>hello</option>
                <option value=5>she</option>
            </select>
        </div>
        <button type="button" id="reload_btn" class="btn btn-default">重新加载下拉框1</button>

    </div>

    <!--可编辑表格-->
    <div class="tab-pane fade in active" id="tab2">
        <!-- <button type="button" class="btn btn-default" id="addRowbtn">添加行</button> -->
        <table class="table table-striped table-hover" id="reportTable" ></table>
        <%--<table class="table table-striped table-hover" id="reportTable1"></table>--%>
    </div>

    <!--日期控件-->
    <div class="tab-pane fade " id="tab3">

        <div class="col-md-2">
            <div class="input-group date form_datetime col-sm-12" data-link-field="dt_set_order_time_input">
                <input class="form-control"  id="dt_set_order_time" type="text" value="2015-10-16">
                <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                <input type="hidden" id="dt_set_order_time_input" value="2015-10-16" name="set_order_time"/>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="../../static/js/html5shiv.min.js"></script>
<script type="text/javascript" src="../../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../../static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../static/plus/table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="../../static/plus/table/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript" src="../../static/plus/table/bootstrap-table-edit.js"></script>
<script type="text/javascript" src="../../static/plus/datatime/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="../../static/plus/datatime/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="../../static/plus/bootstrap-select.js"></script>

<script type="text/javascript">
    $(function(){
        //下拉框1
        $('#order_status1').bootstrapSelect({
            data:[{id:1,text:'lzx'},{id:2,text:'lsl'}],
            //url:'',
            downBorder:true,
            multiple:true,//多选
            onSelect:function(val,rec){

            }
        });
        //下拉框2
        $('#order_status2').bootstrapSelect({
            onSelect:function(val,rec){
                console.log($('#order_status2').bootstrapSelect('getTextForVal','lzx2'));//根据文本获取值
            }
        });

        $('#reload_btn').click(function(){
            $('#order_status1').bootstrapSelect('reload',{
                params:{id:'lzx'}
            });
        });


        //编辑表格
        /*$('#reportTable').bootstrapTable({
         method: 'post',
         editable:true,//开启编辑模式
         clickToSelect: true,
         showPaginationSwitch:true, //显示分页切换按钮
         pagination: true,
         pageList: [10,25,50,100],
         pageSize:10,
         pageNumber:1,
         columns: [
         [
         {colspan:2,title:"列1",align:"center"},
         {colspan:6,title:"列2",align:"center"},
         {rowspan:2,field:"user_lastlogintime",title:"lastlogintime",align:"center",valign:'middle'}
         ],
         [
         {field:"user_email",edit:false,title:"email",align:"center"},
         {field:"user_company",edit:{
         type:'select',//下拉框
         //url:'user/getUser.htm',
         data:[{id:1,text:'lzx'},{id:2,text:'lsl'}],
         valueField:'id',
         textField:'text',
         onSelect:function(val,rec){
         console.log(val,rec);
         }
         },title:"company",align:"center",width:"200px"},
         {field:"user_dates",edit:{
         type:'date',//日期
         required:true,
         click:function(){

         }
         },title:"date",align:"center"},
         {field:"user_version",title:"version",align:"center"},
         {field:"user_isv2",title:"isv2",align:"center"},
         {field:"userstatus_usertype",title:"usertype",align:"center"},
         {field:"userstatus_package_id",title:"package_id",align:"center"},
         {field:"userstatus_end_time",title:"end_time",align:"center",formatter:function(value,row,rowIndex){
         var strHtml = '<a href="javascript:void(0);" onclick="removeRow('+rowIndex+')">删除</a>';
         return strHtml;
         },edit:false}
         ]
         ],
         data : [{"user_email":"20dai.rikon@gmail.com","user_company":"2","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"20140416@xxxxddffg.com","user_company":"3","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"20083matsumoto-hs@polus.co.jp","user_company":"1","user_dates":"2014-10-31 13:02:47","user_lastlogintime":"1414726074","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"20.2.n0.5@gmail.com","user_company":"","user_dates":"2014-11-21 11:00:10","user_lastlogintime":"1416564204","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"}]
         });

         $('#addRowbtn').click(function(){
         var data = {
         user_email:'text@163.com',
         user_version:2
         };
         $('#reportTable').bootstrapTable('append',data);

         });*/


        $('#reportTable').bootstrapTable({
            method: 'get',
            editable:true,//开启编辑模式
            clickToSelect: true,
            pagination: true,  //是否分页
            showToggle:true, //显示切换按钮来切换列表/卡片视图
            showPaginationSwitch:true, //显示分页切换按钮
            pageList: [10,20],
            pageSize:10,
            pageNumber:1,
            uniqueId: 'index', //将index列设为唯一索引
            striped: true,
            search: true,  //显示检索框
            showRefresh: true,  //显示刷新按钮
            columns: [
                {field:"index",title:"ID",align:"center",edit:false,formatter:function(value, row, index){
                    console.log(row.index)
                    return row.index=index+1 ; //返回行号
                }},
                {field:"user_email",title:"产品名称",align:"center",sortable:true},
                {field:"user_company",edit:{
                    type:'select',//下拉框
                    //url:'user/getUser.htm',
                    data:[{id:1,text:'lzx'},{id:2,text:'lsl'}],
                    valueField:'id',
                    textField:'text',
                    onSelect:function(val,rec){
                        console.log(val,rec);
                    }
                },title:"规格型号",align:"center",width:"200px",sortable:true},
                {field:"user_dates",edit:{
                    type:'date',//日期
                    required:true,
                    click:function(){

                    }
                },title:"创建时间",align:"center",sortable:true},
                {field:"user_version",title:"单价（元）",align:"center",sortable:true},
                {field:"user_isv2",title:"金额（元）",align:"center",sortable:true},
                {field:"userstatus_usertype",title:"备注",align:"center",sortable:true},
                {field:"userstatus_package_id",title:"销货单编号",align:"center",sortable:true},

                {field:"user_lastlogintime",title:"复核人员",align:"center",valign:'middle',sortable:true},
                {field:"userstatus_end_time",title:"操作",align:"center",formatter:function(value,row,rowIndex){
                    var strHtml = '<a href="javascript:void(0);" onclick="removeRow('+rowIndex+')">删除</a>';
                    var strHtml2 = '<a href="javascript:void(0);" onclick="removeRow('+rowIndex+')">查看</a>';
                    return strHtml+"&nbsp&nbsp&nbsp"+strHtml2;
                },edit:false}
            ],
            data : [{"user_email":"20dai.rikon@gmail.com","user_company":"2","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0",
                "user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},
                {"user_email":"20140416@xxxxddffg.com","user_company":"3","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0",
                    "user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},
                {"user_email":"20083matsumoto-hs@polus.co.jp","user_company":"1","user_dates":"2014-10-31 13:02:47","user_lastlogintime":"1414726074",
                    "user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},
                {"user_email":"20.2.n0.5@gmail.com","user_company":"","user_dates":"2014-11-21 11:00:10","user_lastlogintime":"1416564204",
                    "user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},
                {"user_email":"20dai.rikon@gmail.com","user_company":"2","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0",
                    "user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},
                {"user_email":"20140416@xxxxddffg.com","user_company":"3","user_dates":"2014-10-13 13:35:51",
                    "user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},
                {"user_email":"20083matsumoto-hs@polus.co.jp","user_company":"1","user_dates":"2014-10-31 13:02:47",
                    "user_lastlogintime":"1414726074","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},
                {"user_email":"20dai.rikon@gmail.com","user_company":"2","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0",
                    "user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},
                {"user_email":"20140416@xxxxddffg.com","user_company":"3","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0",
                    "user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},
                {"user_email":"20083matsumoto-hs@polus.co.jp","user_company":"1","user_dates":"2014-10-31 13:02:47","user_lastlogintime":"1414726074",
                    "user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},
                {"user_email":"20.2.n0.5@gmail.com","user_company":"","user_dates":"2014-11-21 11:00:10","user_lastlogintime":"1416564204",
                    "user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},
                {"user_email":"20dai.rikon@gmail.com","user_company":"2","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0",
                    "user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},
                {"user_email":"20140416@xxxxddffg.com","user_company":"3","user_dates":"2014-10-13 13:35:51",
                    "user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},
                {"user_email":"20083matsumoto-hs@polus.co.jp","user_company":"1","user_dates":"2014-10-31 13:02:47",
                    "user_lastlogintime":"1414726074","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},

            ]
        });

        $('.form_datetime').datetimepicker({
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            language:'zh-CN',
            format: 'yyyy-mm-dd hh:ii:ss',
            pickerPosition: 'bottom-left',
            showMeridian: 1
        });
    });
    function removeRow(rowIndex){
        $('#reportTable').bootstrapTable('removeRow',rowIndex);
    }
</script>
</body>
</html>
