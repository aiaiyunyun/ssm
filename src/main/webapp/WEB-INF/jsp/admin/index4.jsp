<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>H+ 后台主题UI框架 - 首页示例四</title>
    <link rel="shortcut icon" href="<%=path%>favicon.ico">
    <link href="<%=path%>static/hplus/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>static/hplus/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>static/hplus/css/animate.css" rel="stylesheet">
    <link href="<%=path%>static/hplus/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="<%=path%>statics2/saas/scm/app2_release/css/common.css?ver=20150522" rel="stylesheet" type="text/css">
    <link href="<%=path%>statics2/saas/scm/app2_release/css/green/ui.min.css?ver=20150522" rel="stylesheet">
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/libs/jquery/jquery-1.10.2.min.js"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/libs/json3.min.js"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/common.js?ver=20150522"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/grid.js?ver=20150522"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/plugins.js?ver=20150522"></script>
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/plugins/jquery.dialog.js?self=true&ver=20150522"></script>
    <link href="<%=path%>statics2/css/base.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>statics2/css/green/default.css?ver=20150522" rel="stylesheet" type="text/css" id="defaultFile">
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/tabs.js?ver=20150522"></script>
</head>

<body class="top-navigation full-height-layout gray-bg" >
<script src="<%=path%>static/hplus/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>static/hplus/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=path%>static/hplus/js/content.js?v=1.0.0"></script>
<script src="<%=path%>static/hplus/js/plugins/flot/jquery.flot.js"></script>
<script src="<%=path%>static/hplus/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="<%=path%>static/hplus/js/plugins/flot/jquery.flot.resize.js"></script>
<script src="<%=path%>static/hplus/js/plugins/chartJs/Chart.min.js"></script>
<script src="<%=path%>static/hplus/js/plugins/peity/jquery.peity.min.js"></script>
<script src="<%=path%>static/hplus/js/demo/peity-demo.js"></script>

<div id="wrapper" style="background-color: transparent">
    <div id="page-wrapper" class="gray-bg" style="height: 90%; min-height: auto;">
        <div class="row border-bottom white-bg">
            <!-- 页面顶部¨ -->
            <%@ include file="top.jsp"%>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="mainFrame" width="100%" height="100%" src="<%=path%>index/cash" frameborder="0" data-id="index_v1.html" seamless></iframe>
        </div>

    </div>
</div>
</body>

</html>
