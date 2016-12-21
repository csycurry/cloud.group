<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>聚宝师-${detail.title}</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" />
<meta name="description" content="打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
<link href="/assets/index/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/common.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/main.css" type="text/css" rel="stylesheet" />
<link href="/assets/main/css/detail.css" type="text/css"
	rel="stylesheet" />
<script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
<style type="text/css">
body {
	font: 14px '微软雅黑';
	background: #f6f6f6;
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
	<%@include file="header.jsp"%>
	<script src="assets/main/js/dialog.js" type="text/javascript"></script>
	<script src="assets/main/js/common.js" type="text/javascript"></script>
	<script src="http://static.geetest.com/static/tools/gt.js"></script>


	<div class="container" style="padding-top: 10px;">
		<div class="contanct-main w980 f-cb news-detial">
			<div class="f13 bread-crumb">
				当前位置: <a href="/index.html">首页</a> &gt; <a
					href="/newslist.html?page=1&type=1">资讯中心</a> &gt; <a
					href="/newslist.html?page=1&type=${detail.type}">${detail.typeCn}</a>
			</div>
			<div class="news-detial-container">
				<div
					class="news-detial-title f30 border-line border-line-news-detial mb20">${detail.title}</div>
				<div class="news-detial-date f12 mb20">${detail.createDate}</div>
				<div class="news-detial-content">
					<p>
						<br />
					</p>
					${detail.content}
					<p>
						<br />
					</p>
				</div>
			</div>
		</div>

		<%@include file="footer.jsp"%>
		<script type="text/javascript">
        $(function () {
            (function () {
                function init() {
                	navbarshow($('.headNav li:nth-child(3)'));
                	loginmodal();
                	navbar()
                    backTOP();
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
