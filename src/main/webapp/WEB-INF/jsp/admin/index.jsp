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

    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=path%>/static/hplus/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/style.css?v=4.1.0" rel="stylesheet">


    <link href="<%=path%>/statics2/saas/scm/app2_release/css/common.css?ver=20150522" rel="stylesheet" type="text/css">
    <link href="<%=path%>/statics2/saas/scm/app2_release/css/green/ui.min.css?ver=20150522" rel="stylesheet">
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/libs/jquery/jquery-1.10.2.min.js"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/libs/json3.min.js"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/common.js?ver=20150522"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/grid.js?ver=20150522"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/plugins.js?ver=20150522"></script>
    <script src="<%=path%>/statics2/saas/scm/app2_release/js/common/plugins/jquery.dialog.js?self=true&ver=20150522"></script>


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

    <link href="statics2/css/base.css" rel="stylesheet" type="text/css">
    <link href="statics2/css/green/default.css?ver=20150522" rel="stylesheet" type="text/css" id="defaultFile">
    <script src="statics2/saas/scm/app2_release/js/common/tabs.js?ver=20150522"></script>
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
        (function(){
            /*
             * 判断IE6，提示使用高级版本
             */
            /*if(Public.isIE6) {
             var Oldbrowser = {
             init: function(){
             this.addDom();
             },
             addDom: function() {
             var html = $('<div id="browser">您使用的浏览器版本过低，影响网页性能，建议您换用<a href="http://www.google.cn/chrome/intl/zh-CN/landing_chrome.html" target="_blank">谷歌</a>、<a href="http://download.microsoft.com/download/4/C/A/4CA9248C-C09D-43D3-B627-76B0F6EBCD5E/IE9-Windows7-x86-chs.exe" target="_blank">IE9</a>、或<a href=http://firefox.com.cn/" target="_blank">火狐浏览器</a>，以便更好的使用！<a id="bClose" title="关闭">x</a></div>').insertBefore('#container').slideDown(500);
             this._colse();
             },
             _colse: function() {
             $('#bClose').click(function(){
             $('#browser').remove();
             });
             }
             };
             Oldbrowser.init();
             };*/
            getPageConfig();
            getGoods();
            getStorage();
            getCustomer();
            getSupplier();
            getAddr();
            getUnit();
            getUnitGroup();
            getAccounts();
            getAssistingPropType();
            getAssistingProp();
            getAssistingPropGroup();
            getStaff();
            getBatch();
        })();
        //缓存用户配置
        function getPageConfig(){
            //return;
            Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/userSetting?action=list', {}, function(data){
                if(data.status === 200) {
                    SYSTEM.pageConfigInfo = {};
                    for (var i = 0; i < data.data.rows.length; i++) {
                        var conf = data.data.rows[i];
                        SYSTEM.pageConfigInfo[''+conf.key] = conf['value'] || {};
                        for(var gridId in conf.grids){
                            var g = conf.grids[gridId];
                            if(typeof g != 'function' && g.isReg){
                                var colModel = g.colModel;
                                var tmpArr = [];
                                for (var i = 0; i < colModel.length; i++) {
                                    var col = colModel[i];
                                    tmpArr.push({
                                        name: col['name']//列名,唯一标识
                                        ,label: col['label']//列名
                                        ,hidden: col['hidden']//显示与隐藏
                                        ,width: col['width']//宽度
                                    })
                                };
                                g.colModel = tmpArr;
                            }
                        }
                    };
                } else if (data.status === 250){
                    SYSTEM.pageConfigInfo = {};
                } else {
                    Public.tips({type: 1, content : data.msg});
                }
            });
        };
        //缓存商品信息
        function getGoods() {
            if(SYSTEM.isAdmin || SYSTEM.rights.INVENTORY_QUERY) {
                //&isDelete=2 获取全部，很奇葩的定义。。。
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/inventory?action=list&isDelete=2', { rows: 5000 }, function(data){
                    if(data.status === 200) {
                        SYSTEM.goodsInfo = data.data.rows;
                    } else if (data.status === 250){
                        SYSTEM.goodsInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.goodsInfo = [];
            }
        };
        //缓存仓库信息
        function getStorage() {
            if(SYSTEM.isAdmin || SYSTEM.rights.INVLOCTION_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/invlocation?action=list&isDelete=2', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.storageInfo = data.data.rows;
                    } else if (data.status === 250){
                        SYSTEM.storageInfo = [];
                    }  else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.storageInfo = [];
            }
        };
        //缓存客户信息
        function getCustomer() {
            if(SYSTEM.isAdmin || SYSTEM.rights.BU_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/contact?action=list&simple=1&isDelete=2', { rows: 5000 }, function(data){
                    if(data.status === 200) {
                        SYSTEM.customerInfo = data.data.rows;
                    } else if (data.status === 250){
                        SYSTEM.customerInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.customerInfo = [];
            }
        };
        //缓存供应商信息
        function getSupplier() {
            if(SYSTEM.isAdmin || SYSTEM.rights.PUR_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/contact?action=list&simple=1&type=10&isDelete=2', { rows: 5000 }, function(data){
                    if(data.status === 200) {
                        SYSTEM.supplierInfo = data.data.rows;
                    } else if (data.status === 250){
                        SYSTEM.supplierInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.supplierInfo = [];
            }
        };
        //缓存地址信息
        function getAddr() {
            if(SYSTEM.isAdmin || SYSTEM.rights.DELIVERYADDR_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/deliveryAddr?action=list&isDelete=2', { rows: 5000 }, function(data){
                    if(data.status === 200) {
                        SYSTEM.addrInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.addrInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.addrInfo = [];
            }
        };
        //缓存职员
        function getStaff() {
            if(true) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/employee?action=list&isDelete=2', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.salesInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.salesInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.salesInfo = [];
            }
        };
        //缓存账户信息
        function getAccounts() {
            if(SYSTEM.isAdmin || SYSTEM.rights.SettAcct_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/settAcct?action=list&isDelete=2', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.accountInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.accountInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.accountInfo = [];
            }
        };
        //缓存结算方式
        function getPayments() {
            if(true) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/assist?action=list&typeNumber=PayMethod&isDelete=2', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.paymentInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.paymentInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.paymentInfo = [];
            }
        };
        //缓存计量单位
        function getUnit(){
            if(SYSTEM.isAdmin || SYSTEM.rights.UNIT_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/unit?action=list&isDelete=2', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.unitInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.unitInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.unitInfo = [];
            }
        }
        //缓存计量单位组
        function getUnitGroup(){
            if(SYSTEM.isAdmin || SYSTEM.rights.UNIT_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/unitType?action=list', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.unitGroupInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.unitGroupInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.unitGroupInfo = [];
            }
        }
        //缓存计量单位
        function getAssistingProp(){
            if(SYSTEM.isAdmin || SYSTEM.rights.UNIT_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/unitType?action=list', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.unitGroupInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.unitGroupInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.unitGroupInfo = [];
            }
        }
        //缓存辅助属性分类
        function getAssistingPropType(){
            if(SYSTEM.isAdmin || SYSTEM.rights.FZSX_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/assistType?action=list', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.assistPropTypeInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.assistPropTypeInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.assistPropTypeInfo = [];
            }
        }
        //缓存辅助属性
        function getAssistingProp(){
            if(SYSTEM.isAdmin || SYSTEM.rights.FZSX_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/assist?action=list&isDelete=2', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.assistPropInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.assistPropInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.assistPropInfo = [];
            }
        }
        //缓存辅助属性组合
        function getAssistingPropGroup(){
            if(SYSTEM.isAdmin || SYSTEM.rights.FZSX_QUERY) {
                Public.ajaxGet('http://127.0.0.1/erpv2/index.php/basedata/assistSku?action=list', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.assistPropGroupInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.assistPropGroupInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.assistPropGroupInfo = [];
            }
        }
        //缓存辅助属性组合
        function getBatch(){
            return;
            if(SYSTEM.isAdmin || SYSTEM.ISWARRANTY) {
                Public.ajaxGet('/warranty.do?action=getBatchNoList', {}, function(data){
                    if(data.status === 200) {
                        SYSTEM.batchInfo = data.data.items;
                    } else if (data.status === 250){
                        SYSTEM.batchInfo = [];
                    } else {
                        Public.tips({type: 1, content : data.msg});
                    }
                });
            } else {
                SYSTEM.batchInfo = [];
            }
        }
        //左上侧版本标识控制
        function markupVension(){

        };

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
<div id="wrapper" style="background-color: transparent">
    <div id="page-wrapper" class="gray-bg" style="height: 90%; min-height: auto;">
        <div class="row border-bottom white-bg">
            <!-- 页面顶部¨ -->
            <%@ include file="top.jsp"%>
        </div>
        <div class="row J_mainContent" id="content-main" style="height: 100%">
            <iframe class="J_iframe" name="mainFrame" width="100%" height="100%" src="<%=path%>/index/list" frameborder="0" data-id="index_v1.html" seamless></iframe>
        </div>
    </div>
</div>
</body>
</html>
