<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	聚宝师-${list.missionTitle}
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

    <div class="codeBg">
        <img src="assets/main/img/codeBg.jpg" class='imgBg' />
    </div>
    <section class='code'>
        <div class="mainWidth container clearfix">
        	<div class="f13 bread-crumb">
				当前位置: <a href="/index.html">首页</a> &gt; <a
					href="/codes.html">打码专区</a> &gt; <a
					href="javascript:void(0)">${list.missionTitle}</a>
			</div>
            <div class="drawCode pull-left">
                <h3 class='drawCodeHead'>
                    <img src="assets/main/img/drawCode1.png" /><span id="ctl00_ContentPlaceHolder1_lblcaptchaname">${list.missionTitle}</span><a href="/codes.html" class="pull-right">其他任务>></a></h3>
                <div class="drawCodeCtn">
                    <div class="drawCodeMsg clearfix">
                        <div class="pull-left one">
                            <span id="ctl00_ContentPlaceHolder1_lblcodeid" style="display: none">${list.id}</span>
                            <p>
                                任务码值：<span class='red'><span id="ctl00_ContentPlaceHolder1_lblCaptchaPrice">${list.price }</span></span>
                                <img src="assets/main/img/money.png" />
                            </p>
                            <p>参与人数：<span class='gray'><span id="ctl00_ContentPlaceHolder1_lblusernumber">${list.signNum}</span>人</span></p>
                            <p>结算周期：<span class='gray'><span id="ctl00_ContentPlaceHolder1_lblDealCycle">${list.settlementInterval}</span>天</span></p>
                        </div>
                        <div class="pull-left two">
                            <p>任务状态：<span class="gray"><span id="ctl00_ContentPlaceHolder1_lblIsEnable">进行中</span></span></p>
                            <p>限定人数：<span class="gray"><span id="ctl00_ContentPlaceHolder1_lblLimitUser">10000人</span></span></p>
                            <p>最近更新：<span class="gray"><span id="ctl00_ContentPlaceHolder1_lblupdatetime">${list.modifyDate}</span></span></p>
                        </div>
                        <div class="pull-left three">
                            <div>
                                <a href="${list.thumbnailUrl}" id="ctl00_ContentPlaceHolder1_btndownappp" target="_blank">
                                    <img src="assets/main/img/codexzrj.png" />
                                </a>
                            </div>
                            <div style="height: 10px">
                            </div>
                            <div>
                                <a href="javascript:void(0)" onclick="getemployeeid()">
                                    
                                    <img src="assets/main/img/codelqgh1.png" />
                                    
                                </a>
                            </div>
                        </div>
                        <div class="pull-left four">
                            <a href="#">
                                <img src="${list.imageUrl}" /></a>
                        </div>
                    </div>
                    <div class="drawCodeMain">
                        <div class="chart DCMcommon">
                            <h3>
                                <img src="assets/main/img/drawCode4.png" class='icon' />我的<span id="ctl00_ContentPlaceHolder1_lblcaptchaname1" style="font-size:Large;">大众打码</span>收益报表<span class="pull-right"></span></h3>
                            <table class="table ZQtable">
                                <thead>
                                    <tr>
                                        <th>打码工号</th>
                                        <th>密码</th>
                                        <th>每码价格</th>
                                        <th>总计聚币</th>
                                        <th>更新时间</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${reb}" var="r"> 
                                	<tr>
                                    <th>${r.userCode}</th>
                                       <th></th>
                                       <th>${list.price}</th>
                                       <th>${r.amount}</th>
                                       <th>${r.createDate}</th>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="project DCMcommon">
                            <h3>
                                <img src="assets/main/img/drawCode7.png" class='icon' />项目介绍</h3>
                            <div class="projectCtn comCtn">
                                ${list.missionContent}
                            </div>
                        </div>
                        <div class="DCMcommon">
                            <h3>
                                <img src="assets/main/img/drawCode8.png" class='icon' />更多推荐</h3>
                            <div class="comCtn">
                                ${list.recomment}
                            </div>
                        </div>
                    </div>

                </div>
            </div>

    </section>



    <script type="text/javascript" src="plugins/jQuery-2.1.4.min.js"></script>
    <script type="text/javascript" src="scripts/dialog.js"></script>
    <script type="text/javascript">
        $(function () {
            (function () {
                function init() {
                    navbarshow($('.headNav li:nth-child(2)'));
                    $('.code .drawCode').show();
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
        //领取工号
        function getemployeeid() {
            $.ajax({
                url: "/sign/code.json?missionId="+$('#ctl00_ContentPlaceHolder1_lblcodeid').text(),
                type: "post",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                data: {},
                success: function (data) {
                	if(data.status==1)
                		{
                			alert("领取工号成功，您的工号是："+data.data);
                		}
                	else
                	{
                		alert(data.msg);
                	}
                    location.reload();
                },
                error: function (data) {
                    alert("出错");
                }
            });
        }

    </script>

        <div id="ctl00_hiddencode" class="hiddencode" style="display: none">33c50dc2-3684-4614-8dab-cedb861dff33</div>
        
        <%@include file="footer.jsp"%>
    <script type="text/javascript">
        $(function () {
            (function () {
                function init() {
                    backTOP();
                    navbarMove();
                    loginmodal();
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
