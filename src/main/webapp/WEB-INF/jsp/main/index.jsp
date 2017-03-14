<%--<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<%=basePath%>">
    <!-- jsp文件头和头部 -->
    <%--<%@ include file="top.jsp"%>--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>北京化工研究院财务综合系统</title>

    <meta name="keywords" content="北京化工研究院财务综合系统">
    <meta name="description" content="北京化工研究院财务综合系统，基于Bootstrap3最新版本开发的扁平化主题，使用了Html5+CSS3等现代技术">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <link rel="shortcut icon" href="../../static/hplus/favicon.ico">
    <link href="../../static/hplus/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../static/hplus/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../../static/hplus/css/animate.css" rel="stylesheet">
    <link href="../../static/hplus/css/style.css?v=4.1.0" rel="stylesheet">
    <style>
        .test{ position:fixed; bottom:0; left:0;width:100%;}
    </style>
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation" style="width: 140px">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <!-- 左侧菜单 -->
        <%@ include file="left.jsp"%>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1" style="overflow: hidden">
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="index_v1.html">首页</a>
                </div>
            </nav>
            <a href="javascript(0)" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>

        </div>
        <div class="row J_mainContent" id="content-main"style="overflow: hidden">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="/index/saleput" frameborder="0" data-id="/index/saleput" seamless></iframe>
        </div>
    </div>
</div>
<!--右侧部分结束-->
<!-- 全局js -->
<script src="../../static/hplus/js/jquery.min.js?v=2.1.4"></script>
<script src="../../static/hplus/js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../static/hplus/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../static/hplus/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../static/hplus/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="../../static/hplus/js/hplus.js?v=4.1.0"></script>
<script type="text/javascript" src="../../static/hplus/js/contabs.js"></script>

<!-- 第三方插件 -->
<script src="../../static/hplus/js/plugins/pace/pace.min.js"></script>

</body>

</html>
