<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
%>
<nav class="navbar navbar-static-top" role="navigation">
    <div class="navbar-header">
        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
            <i class="fa fa-reorder"></i>
        </button>
    </div>
    <div class="navbar-collapse collapse" id="navbar">
        <ul class="nav navbar-nav">
            <li class="active">
                <a aria-expanded="false" role="button" href="<%=path%>/index/index"> 返回首页</a>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="<%=path%>/index/index1" class="dropdown-toggle" > 销货单 </a>
            </li>
            <%--<li class="dropdown">
                <a aria-expanded="false" role="button" href="/index/index2" class="dropdown-toggle" > 电汇付款单 </a>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="/index/index3" class="dropdown-toggle" > 承兑付款单 </a>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="/index/index4" class="dropdown-toggle" > 现金付款单 </a>
            </li>--%>

        </ul>
        <ul class="nav navbar-top-links navbar-right">
            <li>
                <a href="/#">
                    <i class="fa fa-sign-out"></i> 退出
                </a>
            </li>
        </ul>
    </div>
</nav>