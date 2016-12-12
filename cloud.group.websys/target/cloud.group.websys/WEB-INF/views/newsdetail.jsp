<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	${detail.title}
</title><meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" />
<meta name="description" content="打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
<link href="/assets/main/css/common.css" type="text/css" rel="stylesheet" />
<link href="/assets/main/css/main.css" type="text/css" rel="stylesheet" />
<link href="/assets/main/css/style.css" type="text/css" rel="stylesheet" />
 <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
    <style type="text/css">
        body {
            font: 14px '微软雅黑';
            background: #fff;
        }

        ul, li {
            margin: 0;
        }

        * {
            margin: 0;
            padding: 0;
            list-style: none;
        }
    </style>
    
</head>
<body>
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTY5ODQ2Nzk3Ng8WAh4GTm90aWNlMo8GAAEAAAD/////AQAAAAAAAAAMAgAAAEhGUk9BLkNvbW1vbi5Nb2RlbCwgVmVyc2lvbj0xLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPW51bGwFAQAAABtGUk9BLkNvbW1vbi5Nb2RlbC5BSUROb3RpY2UNAAAAEzxJRD5rX19CYWNraW5nRmllbGQbPHR5cGVmYXRoZXI+a19fQmFja2luZ0ZpZWxkGDx0eXBlc29uPmtfX0JhY2tpbmdGaWVsZBU8dHlwZT5rX19CYWNraW5nRmllbGQZPHR5cGVOYW1lPmtfX0JhY2tpbmdGaWVsZBw8UHVibGlzaFVzZXI+a19fQmFja2luZ0ZpZWxkFjx0aXRsZT5rX19CYWNraW5nRmllbGQePE5vdGljZUNvbnRlbnQ+a19fQmFja2luZ0ZpZWxkGzxOb3RpY2VUaW1lPmtfX0JhY2tpbmdGaWVsZBs8VXBkYXRlVGltZT5rX19CYWNraW5nRmllbGQbPENsaWNrQ291bnQ+a19fQmFja2luZ0ZpZWxkGTxpc0VuYWJsZT5rX19CYWNraW5nRmllbGQhPElzT25seVNob3dNeVVzZXI+a19fQmFja2luZ0ZpZWxkAAEBAAEBAQEAAAAAAAgIDQ0IAQECAAAAhwgAAAoKAAAAAAYDAAAADOmHjeimgei1hOiurwYEAAAAAAYFAAAAITEy5pyIMTDml6UxNeeCueWJjeeahOaPkOeOsOWFrOWRigYGAAAAsAE8c3BhbiBzdHlsZT0iY29sb3I6IHJnYigyNDgsIDU4LCAzNCk7IGZvbnQtc2l6ZTogbWVkaXVtOyBsaW5lLWhlaWdodDogMjIuODU3MXB4OyI+5oiq5q2iMTLmnIgxMOaXpTE154K55YmN55qE5o+Q546w55Sz6K+35bey5YWo6YOo5pSv5LuY5a6M5q+V77yM6K+35ZCE5L2N546p5a625p+l5pS244CCPC9zcGFuPjBGhWU8IdQIMI3mgDwh1AgFAAAAAAALFgJmD2QWAgIBD2QWAgICDxYCHglpbm5lcmh0bWwFJGU0MmI0OGNhLWMzZDctNDljNC1hZjE0LTI0ZWYwZmViMGJjYWRkq8BAj4TdKQja3B7Gl4mWDP8Eg+wgcPE1iAWFets6IHU=" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA599B58" />
</div>
       <%@include file="header.jsp"%>
        <script src="assets/main/js/dialog.js" type="text/javascript"></script>
        <script src="assets/main/js/common.js" type="text/javascript"></script>
        <script src="http://static.geetest.com/static/tools/gt.js"></script>
        
    <div class="container">
        <div class="row" style="margin: 10px auto">
            <div class="col-md-8 col-md-offset-2" style="border: 1px solid #CCC;background-color:white">
                <div class="article_info">
                    <h2>${detail.title}</h2>
                    <p class="text-center">
                        发布时间：${detail.createDate}
                    </p>
                    <p class="line"></p>
                    <div class="content">                        
                        ${detail.content}                    
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div id="ctl00_hiddencode" class="hiddencode" style="display: none">e42b48ca-c3d7-49c4-af14-24ef0feb0bca</div>
        
       <%@include file="footer.jsp"%>  
    <script type="text/javascript">
        $(function () {
            (function () {
                function init() {
                    backTOP();
                }

                function upDownMove(obj) {
                    var moveOnOff = true;
                    setInterval(function () {
                        if (moveOnOff) {
                            $(obj).css({ "margin-top": "-2px" });
                            moveOnOff = false;
                        } else {
                            $(obj).css({ "margin-top": "0px" });
                            moveOnOff = true;
                        }
                    }, 250)
                }

                function navbar() {
                    var $abtn = $('#reg');
                    if ($abtn.length > 0) {
                        $abtn.attr('href', $abtn.attr('href') + '?para=' + encodeURIComponent(window.location.href));
                    }
                }

                function backTOP() {
                    var $backTOP = $('.backTOP');
                    $backTOP.click(function () {
                        $("html,body").animate({ 'scrollTop': '0' });
                    })
                }
                init();
            })()
        })
    </script>
</body>
</html>
