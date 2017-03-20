<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.security.MessageDigest"%>
<html>
<head>
    <title>Title</title>
    <style>
        .divcss5{
            /*background-color: grey;*/
            margin-top: 400px;
            margin-left: 400px;
            width:400px;
            height:180px;
            border:1px solid #FF9D00
        }
        .bb{
            border-left-width:0px;
            border-top-width:0px;
            border-right-width:0px;
            border-bottom-width:1px;
            border-color: black;
            background-color: white;
        }
        .bg{
            background:url(<%=path%>/statics2/login/Images/8.jpg)no-repeat;
            overflow-y: hidden;
            overflow-x: hidden;
            width: 100%;
            height: 100%;
            margin: 1px;
        }
    </style>
</head>
<body>
<div class="bg">
    <div class="divcss5">
        <div style="margin-left: 20%;margin-top: 10%">
            <from action="/index/main" method="post">
                <label>账号:</label>
                <input class="bb" type="text" value="" name="amount" id="amount"><br/><br/>
                <label>密码:</label>
                <input class="bb" type="password" value="" name="password" id="password"><br/><br/>
                <a type="button" onclick="ccc()" ><img src="<%=path%>/statics2/login/Images/loginbtn.png" style="width: 200px"></a>
            </from>
        </div>
    </div>
</div>
<script src="<%=path%>/statics2/saas/scm/app2_release/js/common/libs/jquery/jquery-1.10.2.min.js"></script>
<script src="<%=path%>/statics2/js/md5.js"></script>
<script type="text/javascript">
    function ccc() {
        var name1 = $('#amount').val();
        var pwd = $('#password').val();
        var hash = hex_md5(pwd);
        var name = hex_md5(name1);
//        alert("base64 encode:" + hash);
        var str = name+"lsy992"+hash;
        //解密
//        str = b.decode(str);
        var url  = '<%=path%>/index/main?str='+str;
        window.location.href = url;
    }
    function Base64() {

        // private property
        _keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

        // public method for encoding
        this.encode = function (input) {
            var output = "";
            var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
            var i = 0;
            input = _utf8_encode(input);
            while (i < input.length) {
                chr1 = input.charCodeAt(i++);
                chr2 = input.charCodeAt(i++);
                chr3 = input.charCodeAt(i++);
                enc1 = chr1 >> 2;
                enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
                enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
                enc4 = chr3 & 63;
                if (isNaN(chr2)) {
                    enc3 = enc4 = 64;
                } else if (isNaN(chr3)) {
                    enc4 = 64;
                }
                output = output +
                    _keyStr.charAt(enc1) + _keyStr.charAt(enc2) +
                    _keyStr.charAt(enc3) + _keyStr.charAt(enc4);
            }
            return output;
        }

        // public method for decoding
        this.decode = function (input) {
            var output = "";
            var chr1, chr2, chr3;
            var enc1, enc2, enc3, enc4;
            var i = 0;
            input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
            while (i < input.length) {
                enc1 = _keyStr.indexOf(input.charAt(i++));
                enc2 = _keyStr.indexOf(input.charAt(i++));
                enc3 = _keyStr.indexOf(input.charAt(i++));
                enc4 = _keyStr.indexOf(input.charAt(i++));
                chr1 = (enc1 << 2) | (enc2 >> 4);
                chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
                chr3 = ((enc3 & 3) << 6) | enc4;
                output = output + String.fromCharCode(chr1);
                if (enc3 != 64) {
                    output = output + String.fromCharCode(chr2);
                }
                if (enc4 != 64) {
                    output = output + String.fromCharCode(chr3);
                }
            }
            output = _utf8_decode(output);
            return output;
        }

        // private method for UTF-8 encoding
        _utf8_encode = function (string) {
            string = string.replace(/\r\n/g,"\n");
            var utftext = "";
            for (var n = 0; n < string.length; n++) {
                var c = string.charCodeAt(n);
                if (c < 128) {
                    utftext += String.fromCharCode(c);
                } else if((c > 127) && (c < 2048)) {
                    utftext += String.fromCharCode((c >> 6) | 192);
                    utftext += String.fromCharCode((c & 63) | 128);
                } else {
                    utftext += String.fromCharCode((c >> 12) | 224);
                    utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                    utftext += String.fromCharCode((c & 63) | 128);
                }

            }
            return utftext;
        }

        // private method for UTF-8 decoding
        _utf8_decode = function (utftext) {
            var string = "";
            var i = 0;
            var c = c1 = c2 = 0;
            while ( i < utftext.length ) {
                c = utftext.charCodeAt(i);
                if (c < 128) {
                    string += String.fromCharCode(c);
                    i++;
                } else if((c > 191) && (c < 224)) {
                    c2 = utftext.charCodeAt(i+1);
                    string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
                    i += 2;
                } else {
                    c2 = utftext.charCodeAt(i+1);
                    c3 = utftext.charCodeAt(i+2);
                    string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
                    i += 3;
                }
            }
            return string;
        }
    }
</script>
</body>
</html>
