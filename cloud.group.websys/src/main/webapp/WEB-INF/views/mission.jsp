<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	聚宝师-打码专区
</title><meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" />
<meta name="description" content="打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/main.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/style.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/main/css/code.css" />
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
        <%@include file="header.jsp"%>
       <script src="assets/main/js/dialog.js" type="text/javascript"></script>
        <script src="assets/main/js/common.js" type="text/javascript"></script>
        <script src="http://static.geetest.com/static/tools/gt.js"></script>  
        
    <div class="codeBg">
        <img src="assets/main/img/codeBg.jpg" class='imgBg' />
    </div>
    <section class='code'>
        <div class="mainWidth container clearfix">
            <div class="codeCtn pull-left">
                <div class="codeHead clearfix">
                    <ul class="nav nav-pills pull-left">
                        <li class="active"><a href=".taskList" data-toggle="tab">任务列表</a></li>
                    </ul>
                    <div class="pull-right red record">
                    </div>
                </div>
                <div class="task tab-content">
                    <div class="taskList tab-pane fade in active codeCtnCom">
                        <h5>
                            <img src="assets/main/img/codeIcon2.png" />推荐任务<span class='silver'> </span></h5>
                        <table class="table text-center">
                            <thead>
                                <tr>
                                    <th>任务名称</th>
                                    <th>每码价格</th>
                                    <th>是否换IP</th>
                                    <th>结算周期</th>
                                    <th>任务资源</th>
                                    <th>更新时间</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${list}" var="l">
                                	<tr>
                                            <td><a href="/code.html?missionId=${l.id}" class='codeJoin' target="_blank" style="text-decoration: none">${l.missionTitle}</a></td>
                                            <td>${l.price }<img src="assets/main/img/money.png" class='codeJB' /></td>
                                            <td>${l.ipChangeCn}</td>
                                            <td>${l.settlementInterval}天</td>
                                            <td>充足</td>
                                            <td>${l.modifyDate}</td>
                                            <td><a href="/code.html?missionId=${l.id}" class='codeJoin' target="_blank"><img src='assets/main/img/codeimmediately.jpg'></a></td>
                                        </tr>
                                </c:forEach>
                                        
                                    
                            </tbody>
                        </table>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>



        <div id="ctl00_hiddencode" class="hiddencode" style="display: none">d4609cb9-fa33-4a85-88e0-2550227f9d8a</div>
        
        <%@include file="footer.jsp"%>     
    <script type="text/javascript">
        $(function () {
            (function () {
                function init() {
                	navbarshow($('.headNav li:nth-child(2)'));
                    navbar();
                    adminhover();
                    backTOP();
                    navbarMove();
                    loginmodal();
                }
                function adminhover() {
                    var $admin = $('.admin');
                    var $usernameImg = $admin.find(".username img");
                    $usernameImg.hover(function () {
                        $usernameImg[0].src = "/img/newCenter02.png";
                    }, function () {
                        $usernameImg[0].src = "/img/newCenter01.png";
                    })
                }
                function navbarMove() {
                    var $navbar = $('.navbar .nav li');
                    if ($navbar.length == 0) {
                        $navbar = $('.head .headNav li');
                    }
                    var $move = $navbar.find('.move');
                    $move.each(function (i, obj) {
                        upDownMove(obj);
                    })
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
