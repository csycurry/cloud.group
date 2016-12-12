<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	打码-打码专区
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
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>



<script src="/WebResource.axd?d=bnO43BAny2fLzXDnhC1UZnNdFLj_0m5Kfu2bCJYTtkDAiMwq3BR1rqKp1rscOz9WfP0g9ZRxQPx6LbXn_Qm-P9ZJEo0x6Kxcir4wl4y6OYo1&amp;t=635375563334701695" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=sdFIlEnnsg-hOmZ_gTfQwaqutNwVpvSvA_GLCXpVJjpyPVswf-gFCHzkOHobit3aDYUQ7rKkitEvCidladbVtBllj5NNtawypj51DNMYCdXgE8tf6owd_xHW8uCilMztNOWgvhdiP9m14AMoB_BuwfWUI5ZPG4D1RBcE8v9izaEDCgGoGrMiAhSG7-bCdE2X0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=F8C9ESjZBBEOBSW7epDN0cWSK-MZbbVGIF4IjXlERuKO5ZeOWgNJ524k0L0_jXeTuh4IfoDnL6I2CL_ZaXX6ab0oAHcqO-8iwrz-mHDSx_G8LQLz4DRt70yUPNJf_uhEaBAOrrfJHgn32yoMHuaYeg8DHHqouC-5s99e0nKuAAMYRLVcHrt_pnsp4A0qvXPd0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F35709B7" />
</div>
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
                        <img src="img/codeIcon1.png" />我的打码记录
                    </div>
                </div>
                <div class="task tab-content">
                    <div class="taskList tab-pane fade in active codeCtnCom">
                        <h5>
                            <img src="img/codeIcon2.png" />不换IP推荐任务<span class='silver'> 打码时不需要重复切换IP</span></h5>
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


    <script type="text/javascript">
        $(function () {
            (function () {
                function init() {                    
                    table();
                }
                function table() {
                    var $tbody = $('.codeRank .first tbody');
                    var $today = $(".codeRank .today");
                    var $yesterday = $(".codeRank .yesterday");
                    var $table = $('.codeRank .item');
                    var $codeIncome = $(".codeRank .codeIncome");
                    $table.attr("index", 0);
                    $today.click(function () {
                        $table.hide();
                        $table.eq(0).show();
                        $(this).addClass('active');
                        $yesterday.removeClass('active');
                        $codeIncome.find(">div").eq(0).show().siblings().hide();
                    })
                    $yesterday.click(function () {
                        $table.hide();
                        $table.eq(1).show();
                        $(this).addClass('active');
                        $today.removeClass('active');
                        $codeIncome.find(">div").eq(1).show().siblings().hide();
                    })
                }
                init();
            })()
        })
    </script>

        <div id="ctl00_hiddencode" class="hiddencode" style="display: none">d4609cb9-fa33-4a85-88e0-2550227f9d8a</div>
        
        <%@include file="footer.jsp"%>     
    <script type="text/javascript">
        $(function () {
            (function () {
                function init() {
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
