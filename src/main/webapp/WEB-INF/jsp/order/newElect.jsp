<%--
  Created by IntelliJ IDEA.
  User: xuzhongyao
  Date: 2017/1/17
  Time: 上午10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>销售业绩列表</title>
    <meta name="keywords" content="科研项目管理">
    <meta name="description" content="科研项目管理">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <link href="<%=path%>/statics2/saas/scm/app2_release/css/common.css?ver=20150522" rel="stylesheet" type="text/css">
    <link href="<%=path%>/statics2/saas/scm/app2_release/css/green/ui.min.css?ver=20150522" rel="stylesheet">
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/libs/jquery/jquery-1.10.2.min.js"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/libs/json3.min.js"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/common.js?ver=20150522"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/grid.js?ver=20150522"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/plugins.js?ver=20150522"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/plugins/jquery.dialog.js?self=true&ver=20150522"></script>

    <style>
        .jqGrid_wrapper{background: white;}
        textarea{ resize:none;}
        input{vertical-align: middle;}
    </style>

</head>



<link href="<%=path%>/statics2/css/green/bills.css?ver=20150522" rel="stylesheet" type="text/css">
<style>
    #barCodeInsert{margin-left: 10px;font-weight: 100;font-size: 12px;color: #fff;background-color: #B1B1B1;padding: 0 5px;border-radius: 2px;line-height: 19px;height: 20px;display: inline-block;}
    #barCodeInsert.active{background-color: #23B317;}
</style>
</head>

<body>
<div class="wrapper">
    <span id="config" class="ui-icon ui-state-default ui-icon-config"></span>
    <div class="mod-toolbar-top mr0 cf dn" id="toolTop"></div>
    <div class="bills cf">
        <div class="con-header">
            <div class="row-item" style="text-align: center">
                <h1 style="font-size: 23px">唐山军荣铝业有限公司客户电汇付款单${nmgb}</h1>
            </div>
            <dl class="cf">
                <dd class="pct25" hidden>
                    <label hidden>ID</label>
                    <input type="text"  class="input-txt ui-input" autocomplete="off" id="customer" value="${nmgb}" hidden>
                </dd>
                <dd class="pct20">
                    <label>付款日期：</label>
                    <input type="text" id="date" class="ui-input ui-datepicker-input" value="2015-06-08">
                </dd>
                <dd id="11" class="pct25">
                    <label>单据编号:</label>
                    <input id="billNo" type="text" class="input-txt ui-input" autocomplete="off" value="${num}">
                </dd>
                <dd id="" class="pct25">
                    <label>销货单编号:</label>
                    <input id="selectNo" type="text" class="input-txt ui-input" autocomplete="off" value="${nmgb}">
                </dd>
            </dl>
        </div>
        <div class="grid-wrap">
            <table id="grid">
            </table>
            <div id="page"></div>
        </div>
        <div class="con-footer cf">
            <ul id="amountArea" class="cf">
                <li>
                    <label>录入人员：</label>
                    <input type="text" id="input_man"  class="input-txt ui-input" autocomplete="off">
                </li>
                <li>
                    <label>复核人员：</label>
                    <input type="text" id="reviewer" class="input-txt ui-input" autocomplete="off" >
                </li>
        </div>
        <div class="cf" id="bottomField">
            <div class="fr" id="toolBottom"></div>
        </div>
        <div id="mark"></div>
    </div>

    <div id="initCombo" class="dn">
        <input type="text" class="textbox goodsAuto" name="goods" autocomplete="off">
        <input type="text" class="textbox storageAuto" name="storage" autocomplete="off">
        <input type="text" class="textbox unitAuto" name="unit" autocomplete="off">
        <input type="text" class="textbox batchAuto" name="batch" autocomplete="off">
        <input type="text" class="textbox dateAuto" name="date" autocomplete="off">
        <input type="text" class="textbox priceAuto" name="price" autocomplete="off">
    </div>
    <div id="storageBox" class="shadow target_box dn">
    </div>
</div>
<script src="<%=path%>/statics2/js/dist/electBill.js?ver=20150522"></script>
<script src="<%=path%>/static/sales/sales_input.js"></script>
<script type="text/javascript">
    var DOMAIN = document.domain;
    var WDURL = "";
    var SCHEME= "green";
    try{
        document.domain = 'http://127.0.0.1/erpv2/';
    }catch(e){
    }
    //ctrl+F5 增加版本号来清空iframe的缓存的
    $(document).keydown(function(event) {
        /* Act on the event */
        if(event.keyCode === 116 && event.ctrlKey){
            var defaultPage = Public.getDefaultPage();
            var href = defaultPage.location.href.split('?')[0] + '?';
            var params = Public.urlParam();
            params['version'] = Date.parse((new Date()));
            for(i in params){
                if(i && typeof i != 'function'){
                    href += i + '=' + params[i] + '&';
                }
            }
            defaultPage.location.href = href;
            event.preventDefault();
        }
    });
</script>
</body>

</html>
