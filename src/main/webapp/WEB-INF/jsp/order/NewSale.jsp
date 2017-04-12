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
    <link href="<%=path%>statics2/saas/scm/app2_release/css/common.css?ver=20150522" rel="stylesheet" type="text/css">
    <link href="<%=path%>statics2/saas/scm/app2_release/css/green/ui.min.css?ver=20150522" rel="stylesheet">
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/libs/jquery/jquery-1.10.2.min.js"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/libs/json3.min.js"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/common.js?ver=20150522"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/grid.js?ver=20150522"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/plugins.js?ver=20150522"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/plugins/jquery.dialog.js?self=true&ver=20150522"></script>
    <link href="<%=path%>statics2/css/green/bills.css?ver=20150522" rel="stylesheet" type="text/css">
</head>

<body>
<div class="wrapper" style="height: 100%">
    <span id="config" class="ui-icon ui-state-default ui-icon-config"></span>
    <div class="mod-toolbar-top mr0 cf dn" id="toolTop"></div>

    <div class="bills cf">
        <div class="con-header">
            <div class="row-item" style="text-align: center">
                <h1 style="font-size: 23px">唐山军荣铝业有限公司销货单</h1>
            </div>
            <dl class="cf">
                <dd class="pct25">
                    <label>客户名称：</label>
                    <span class="ui-combo-wrap" >
                          <input type="text" name="" class="input-txt ui-input" autocomplete="off" id="customer">
                          </span>
                </dd>
                <dd class="pct20 tc">
                    <label>业务员姓名：</label>
                    <span class="ui-combo-wrap">
                          <input type="text" name="" class="input-txt" autocomplete="off" value="" data-ref="date" id="sales_ww">
                          </span>
                </dd>
                <dd class="pct20 tc">
                    <label>发货日期：</label>
                    <input type="text" id="date" class="ui-input ui-datepicker-input" value="2015-06-08">
                </dd>
                <dd id="11" class="pct20">
                    <label>单据编号:</label>
                    <input id="billNo" type="text" class="input-txt ui-input" autocomplete="off" value="${num}">
                </dd>
                <!-- <dd id="classes" class="pct15 tr">
                  <label class="radio">
                    <input type="radio" name="classes" value="150601">
                    销货</label>
                  <label class="radio">
                    <input type="radio" name="classes" value="150602">
                    退货</label>
                </dd> -->
            </dl>
        </div>
        <div class="grid-wrap">
            <table id="grid">
            </table>
            <div id="page"></div>
        </div>
        <div class="con-footer cf">
            <div class="mb10">
                <textarea type="text" id="note" class="ui-input ui-input-ph">暂无备注信息</textarea>
            </div>
            <ul id="amountArea" class="cf">
                <li>
                    老客户:
                    <input type="radio" name="regular_customer" class="regular_customer"  value="1">是&nbsp&nbsp&nbsp
                    <input type="radio" name="regular_customer" class="regular_customer"  value="0">否
                </li>
                <li>
                    产品类型:
                    <input type="radio" name="type_product" class="type_product " value="1">铝壶&nbsp&nbsp&nbsp
                    <input type="radio" name="type_product" class="type_product " value="2">封口钳&nbsp&nbsp&nbsp
                    <input type="radio" name="type_product" class="type_product " value="3">盖
                </li>
                <li>
                    <label>运费：</label>
                    <input type="text" id="freight"  class="input-txt ui-input" autocomplete="off">
                </li>
                <li>
                    <label>胶圈数量：</label>
                    <input type="text" id="apron_num"  class="input-txt ui-input" autocomplete="off">
                </li>
                <li>
                    <label>胶圈总价：</label>
                    <input type="text" id="apron_price"  class="input-txt ui-input" autocomplete="off">
                </li>
                <li>
                    <label>录入人员：</label>
                    <input type="text" id="input_man"  class="input-txt ui-input" autocomplete="off">
                </li>
                <li>
                    <label>复核人员：</label>
                    <input type="text" id="reviewer" class="input-txt ui-input" autocomplete="off" >
                </li>
                <%--<li>
                    <label>客户承担费用:</label>
                    <input type="text" id="customerFree" class="ui-input" data-ref="customerFree">
                </li>
                <li>
                    <label id="paymentTxt">本次收款:</label>
                    <input type="text" id="payment" class="ui-input">&emsp;
                </li>
                <li id="accountWrap" class="dn">
                    <label>结算账户:</label>
                    <span class="ui-combo-wrap" id="account" style="padding:0;">
                          <input type="text" class="input-txt" autocomplete="off">
                         </span><a id="accountInfo" class="ui-icon ui-icon-folder-open" style="display:none;"></a>
                </li>
                <li>
                    <label>本次欠款:</label>
                    <input type="text" id="arrears" class="ui-input ui-input-dis" disabled>
                </li>
                <li class="dn">
                    <label>累计欠款:</label>
                    <input type="text" id="totalArrears" class="ui-input ui-input-dis" disabled>
                </li>
            </ul>
            <ul class="c999 cf">
                <li>
                    <label>制单人:</label>
                    <span id="userName"></span>
                </li>
                <li>
                    <label>审核人:</label>
                    <span id="checkName"></span>
                </li>
                <li>
                    <label>最后修改时间:</label>
                    <span id="modifyTime"></span>
                </li>
            </ul>--%>
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
<script src="<%=path%>statics2/js/dist/sales.js?ver=20150522"></script>
<script src="<%=path%>static/sales/sales_input.js"></script>
</body>

</html>
