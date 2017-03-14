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
    <title>承兑付款单</title>
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
<body style="margin-right: 40px;margin-left: 40px">
<div class="row">
    <h2 style="text-align:center">唐山军荣铝业有限公司客户承兑付款单</h2>
</div>
<from>
    <div>
        <p style="text-align: right"><strong>单据编号:</strong>${num}</p>
        <p style="text-align: right"><strong>付款日期:</strong>自动生成发货日期</p>
    </div>
    <div id="myTabContent" class="tab-content row" style="height: 60%;">
        <div class="tab-pane fade in active" id="tab2">
            <table class="table table-striped table-hover" id="reportTable" ></table>
        </div>
    </div>
    <hr/><hr/><hr/>
    <hr/>
    <div class="row">
        <div style="float: right">
            <span><strong>&nbsp&nbsp&nbsp经手人:&nbsp&nbsp</strong><input name="" value="" type="text"></span>
            <span style="text-align: right"><strong>&nbsp&nbsp&nbsp录入人:&nbsp&nbsp</strong><input name="" value="" type="text"></span>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div style="float: right">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <button type="button" class="btn btn-default" id="addRowbtn">添加行</button>&nbsp&nbsp&nbsp
            <button class="btn btn-default" type="submit" value="提交">提交</button>
        </div>
    </div>
</from>
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
    $(document).ready(function () {
        $('#in1').change(function () {
            $('.in2').text($(this).val());
        });
    });
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
        $('#reportTable').bootstrapTable({
            method: 'post',
            editable:true,//开启编辑模式
            clickToSelect: true,
            showPaginationSwitch:true, //显示分页切换按钮
            pagination: true,
            pageList: [10,25,50,100],
            pageSize:10,
            pageNumber:1,
            columns: [
                {field:"index",title:"ID",align:"center",edit:false,formatter:function(value, row, index){
                    console.log(row.index)
                    return row.index=index+1 ; //返回行号
                }},
                {field:"product_name",title:"付款客户名称",align:"center",sortable:true},
                {field:"type",title:"承兑汇票号",align:"center",sortable:true,class:"in2"},
                {field:"specification_model",title:"承兑金额（元）",align:"center",sortable:true},
                {field:"product_quantity",title:"承兑汇票到期日",align:"center",sortable:true},
                {field:"unit_price",title:"客户联系方式",align:"center",sortable:true},
                {field:"userstatus_end_time",title:"操作",align:"center",formatter:function(value,row,rowIndex){
                    var strHtml = '<a href="javascript:void(0);" onclick="removeRow('+rowIndex+')">删除</a>';
                    /*  var strHtml2 = '<a href="javascript:void(0);" onclick="removeRow('+rowIndex+')">查看</a>';*/
                    return strHtml/*+"&nbsp&nbsp&nbsp"+strHtml2*/;
                },edit:false}
            ],
            data : [
            ]
        });
        $('#addRowbtn').click(function(){
            var data = {
                user_email:'',
                user_version:2
            };
            $('#reportTable').bootstrapTable('append',data);
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
