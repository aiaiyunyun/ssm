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
    <script type="text/javascript">
        var DOMAIN = document.domain;
        var WDURL = "http://127.0.0.1/erpv2/index.php";
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

    <link href="<%=path%>statics2/css/base.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>statics2/css/green/default.css?ver=20150522" rel="stylesheet" type="text/css" id="defaultFile">
    <script src="<%=path%>statics2/saas/scm/app2_release/js/common/tabs.js?ver=20150522"></script>
    <!-- author：357058607 -->


    <script>
        var CONFIG = {
            DEFAULT_PAGE: true,
            SERVICE_URL: 'http://127.0.0.1/erpv2/'
        };
        //系统参数控制
        var SYSTEM = {
            version: 1,
            skin: "green",
            language:"",
            site:"",
            curDate: "1033737952010",  //系统当前日期
            DBID: "88886683", //账套ID
            serviceType: "12", //账套类型，13：表示收费服务，12：表示免费服务

            realName: "模板俱乐部", //真实姓名
            userName: "admin", //用户名
            companyName: "模板俱乐部ERP系统",	//公司名称
            companyAddr: "模板俱乐部",	//公司地址
            phone: "17701030513",	//公司电话
            fax: "17701030513",	//公司传真
            postcode: "17701030513",	//公司邮编
            startDate: "", //启用日期
            currency: "RMB",	//本位币
            qtyPlaces: "1",	//数量小数位
            pricePlaces: "1",	//单价小数位
            amountPlaces: "2", //金额小数位
            valMethods:	"movingAverage",	//存货计价方法

            invEntryCount: "",//试用版单据分录数
            rights: {},//权限列表
            billRequiredCheck: 0, //是否启用单据审核功能  1：是、0：否
            requiredCheckStore: 1, //是否检查负库存  1：是、0：否
            hasOnlineStore: 0,	//是否启用网店
            enableStorage: 0,	//是否启用仓储
            genvChBill: 0,	//生成凭证后是否允许修改单据
            requiredMoney: 1, //是否启用资金功能  1：是、0：否
            taxRequiredCheck: 0,
            taxRequiredInput: 17,
            isAdmin:true, //是否管理员
            siExpired:false,//是否过期
            siType:1, //服务版本，1表示基础版，2表示标准版
            siVersion:4, //1表示试用、2表示免费（百度版）、3表示收费，4表示体验版
            Mobile:"",//当前用户手机号码
            isMobile:true,//是否验证手机
            isshortUser:false,//是否联邦用户
            shortName:"",//shortName
            isOpen:false,//是否弹出手机验证
            enableAssistingProp:0, //是否开启辅助属性功能  1：是、0：否
            ISSERNUM: 0, //是否启用序列号 1：是、0：否 （与enableAssistingProp对立，只能启用其一）
            ISWARRANTY: 0 //是否启用保质期  1：是、0：否
        };
        //区分服务支持
        SYSTEM.servicePro = SYSTEM.siType === 2 ? 'forbscm3' : 'forscm3';
        var cacheList = {};	//缓存列表查询
        //全局基础数据
        //缓存用户配置

    </script>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?0613c265aa34b0ca0511eba4b45d2f5e";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
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
        <div class="row J_mainContent" id="content-main" style="height: 100%">
            <iframe class="J_iframe" name="mainFrame" width="100%" height="100%" src="<%=path%>index/list" frameborder="0" data-id="index_v1.html" seamless></iframe>
        </div>
    </div>
</div>

</body>
</html>
