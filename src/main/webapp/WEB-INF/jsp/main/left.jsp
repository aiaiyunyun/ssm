<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%
    String path = request.getContextPath();
    String basePathl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+pathl+"/";
%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="nav" id="side-menu">

    <li class="nav-header">
        <div class="dropdown profile-element">
            <span><img alt="image" class="img-circle" src="../../static/hplus/img/profile_small.jpg" /></span>
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">lsy</strong></span>
                                <span class="text-muted text-xs block">劉俊峰<b class="caret"></b></span>
                                </span>
            </a>
        </div>
    </li>
    <li>
        <a href="#">
            <i class="fa fa-home"></i>
            <span class="nav-label">销货单</span>
            <span class="fa arrow"></span>
        </a>
        <ul class="nav nav-second-level">
            <li>
                <a class="J_menuItem" href="<%=path%>/index/goAddSale" data-index="0">信息列表</a>
            </li>
            <li>
                <a class="J_menuItem" href="<%=path%>/index/saleput" data-index="0">添加详情</a>
            </li>
            <li>
                <a class="J_menuItem" href="/index/elect" data-index="0">电汇付款单</a>
            </li>
            <li>
                <a class="J_menuItem" href="/index/accept" data-index="0">承兑付款单</a>
            </li>
            <li>
                <a class="J_menuItem" href="/index/cash" data-index="0">现金付款单</a>
            </li>
        </ul>

    </li>

</ul>