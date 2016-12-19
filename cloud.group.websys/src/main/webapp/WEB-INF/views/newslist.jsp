<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>打码**-资讯中心</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="keywords" content="聚聚玩,聚聚玩官网,网赚,网上赚钱,打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" /><meta name="description" content="聚聚玩是一个玩游戏、体验产品赚积分。玩家可以通过玩游戏赚钱，打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
	<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/main.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/style.css" type="text/css" rel="stylesheet" />
	 <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
	<script src="assets/main/js/dialog.js" type="text/javascript"></script>
    <script src="assets/main/js/common.js" type="text/javascript"></script>
    <script src="http://static.geetest.com/static/tools/gt.js"></script> 
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
    <div class='index' style="margin-top: 60px">
        <div class="w950 clearfix">
    	<!--左边-->
    <div class=" w700">
      <!---->     
      		<ul class="nav nav-tabs">
        		<c:if test="${type==1}">
        			<li onclick="listpage(1,1)" class="active"><a href="/newslist.html?page=1&type=1" >打码动态</a></li>
        		</c:if>
                <c:if test="${type!=1}">
        			<li onclick="listpage(1,1)"><a href="/newslist.html?page=1&type=1"  >打码动态</a></li>
        		</c:if>
        		<c:if test="${type==2}">
        			<li onclick="listpage(1,2)" class="active"><a href="/newslist.html?page=1&type=2" style="display: block;">玩家心得</a></li>
        		</c:if>
                <c:if test="${type!=2}">
        			<li onclick="listpage(1,2)"><a href="/newslist.html?page=1&type=2" style="display: block;">玩家心得</a></li>
        		</c:if>
        		<c:if test="${type==3}">
        			<li onclick="listpage(1,3)" class="active"><a  href="/newslist.html?page=1&type=3" >常见问题</a></li>
        		</c:if>
                <c:if test="${type!=3}">
        			<li onclick="listpage(1,3)"><a  href="/newslist.html?page=1&type=3"  >常见问题</a></li>
        		</c:if>
                
            </ul>      
            <div class="w700box">
            <div class="p24 clearfix" >
              <ul class="image_text_list" style="min-height: 300px">
              	
                <c:forEach items="${list}" var="n">
                	<li>
                	<a href="/detail.json?newsId=${n.id}">
                    
                    <p class="h">${n.title}</p>
                    <p>日期：${n.createDate}</p>
                   	${n.newsAbstract}
                    </a>
                </li>   
				</c:forEach>
              </ul>
              <!--page-->
              <div class="pagging">
					<div class="left">共${userNum}条记录</div>
					<div class="right">
						<c:if test="${currentPage == 1}">
							<span class="disabled"><< 前一页</span>
						</c:if>
						<c:if test="${currentPage != 1}">
							<a href="#" id="${currentPage-1}"
								onclick="listpage(this.id,${type})"><< 前一页</a>
						</c:if>
						
						<c:forEach begin="1" end="${pageNum}" varStatus="status">
							<c:if test="${currentPage == status.index}">
								<a href="#" class="current" id="${status.index}" onclick="listpage(this.id,${type})">${status.index}</a>
							</c:if>
							<c:if test="${currentPage != status.index}">
								<a href="#" id="${status.index}" onclick="listpage(this.id,${type})">${status.index}</a>
							</c:if>
						</c:forEach>
	
						<c:if test="${currentPage == pageNum}">
							<span class="disabled">后一页 >></span>
						</c:if>
						<c:if test="${currentPage != pageNum}">
							<a href="#" id="${currentPage+1}"
								onclick="listpage(this.id,${type})">后一页 >></a>
						</c:if>
					</div>
				</div>
            </div>
            </div>
        </div>
</div>
    </div>    
</div>
    </div>        
    <script type="text/javascript">
    function listpage(id,type) {
    	var pageUrl = "/newslist.html?page="+id+"&type="+type;
    	location.href=pageUrl;
    }
    </script>

    <%@include file="footer.jsp"%>    
    <script type="text/javascript">
        $(function () {
            (function () {

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
            })()
        })
    </script>
</body>
</html>
