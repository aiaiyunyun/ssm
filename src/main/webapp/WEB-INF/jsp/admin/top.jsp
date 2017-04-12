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
                <a aria-expanded="false" role="button" href="<%=path%>index/index"> 返回首页</a>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 销售录入 <span class="caret"></span> </a>
                <ul role="menu" class="dropdown-menu">
                    <li><a href="<%=path%>index/index1">销货单</a>
                    </li>
                    <li><a href="">进货单</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 客户款项往来录入 <span class="caret"></span></a>
                <ul role="menu" class="dropdown-menu">
                    <li><a href="">现金回款录入</a>
                    </li>
                    <li><a href="">承兑汇款录入</a>
                    </li>
                    <li><a href="">电汇录入</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 业务销售 <span class="caret"></span></a>
                <ul role="menu" class="dropdown-menu">
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 铝瓶销售查询 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">铝瓶销售明细</a>
                            </li>
                            <li><a href="">铝瓶销售汇总</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 封口钳销售查询 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">封口钳销售明细</a>
                            </li>
                            <li><a href="">封口钳销售汇总</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 封盖机销售查询 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">封盖机销售明细</a>
                            </li>
                            <li><a href="">封盖机销售汇总</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 老客户销售查询 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">老客户销售明细</a>
                            </li>
                            <li><a href="">老客户销售汇总</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 销售贷款查询 <span class="caret"></span></a>
                <ul role="menu" class="dropdown-menu">
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 药用铝瓶贷款 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">铝瓶销售客户明细</a>
                            </li>
                            <li><a href="">业务销售汇总</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 封口钳封盖机贷款 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">封口钳封盖机销售库户明细</a>
                            </li>
                            <li><a href="">业务销售封口钳封盖机金额汇总</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 客户采购 <span class="caret"></span></a>
                <ul role="menu" class="dropdown-menu">
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 药用铝瓶 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">客户采购铝瓶明细</a>
                            </li>
                            <li><a href="">客户采购铝瓶汇总</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 封口钳封盖机 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">客户采购明细</a>
                            </li>
                            <li><a href="">可会采购汇总</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 客户回款 <span class="caret"></span></a>
                <ul role="menu" class="dropdown-menu">
                    <li><a href="">客户回款明细</a>
                    </li>
                    <li><a href="">客户回款汇总</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 业务员提成 <span class="caret"></span></a>
                <ul role="menu" class="dropdown-menu">
                    <li><a href="">铝瓶销售提成</a>
                    </li>
                    <li><a href="">封口钳封盖机销售提成</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 系统服务 <span class="caret"></span></a>
                <ul role="menu" class="dropdown-menu">
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 目录 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">商品目录</a>
                            </li>
                            <li><a href="">客户目录</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="">系统设置</a>
                    </li>
                    <li>
                        <a href="">系统维护</a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 操作员 <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">操作员管理</a>
                            </li>
                            <li><a href="">修改密码</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        退出
                    </li>
                </ul>
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
