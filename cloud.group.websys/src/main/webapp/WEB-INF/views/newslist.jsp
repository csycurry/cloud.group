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
        
       .zxx_align_box_2{display:table-cell;  padding:0 0.1em; solid #beceeb; color:#069; font-size:10em; } 
       .zxx_align_box_2 span.zxx_align_word{display:inline-block; font-size:0.1em;line-height:35px;}
    </style>
    
</head>
<body>
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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nuWFvei9rOebmDTmnJ8ENzk5OAUxMjIxMAQ4MjgwBTEwMDAwZAINDxYCHwACCBYQZg9kFgJmDxUEIi9TaG9wL0dvb2REZXRhaWxDb250ZW50LmFzcHg/SUQ9NDAtaHR0cDovL3R1Mi5qdWp1d2FuLmNvbS9NYWxsLzI1MDE0Nzg4NTI0MDIucG5nFee0oue7tOWwlOS4k+S4mui3s+e7swY0NzAwMDBkAgEPZBYCZg8VBCIvU2hvcC9Hb29kRGV0YWlsQ29udGVudC5hc3B4P0lEPTI2LGh0dHA6Ly90dTIuanVqdXdhbi5jb20vTWFsbC8xMTE0Nzg1OTUwNDYucG5nD+WIm+aEj+WSluWVoeadrwY2NTAwMDBkAgIPZBYCZg8VBCIvU2hvcC9Hb29kRGV0YWlsQ29udGVudC5hc3B4P0lEPTczMGh0dHA6Ly90dTIuanVqdXdhbi5jb20vTWFsbC/miYvooagxNDgwNjU2NjAxLnBuZxZUSVNTT1QxODUz5aSp5qKt5omL6KGoCDM3NDg3NTAwZAIDD2QWAmYPFQQiL1Nob3AvR29vZERldGFpbENvbnRlbnQuYXNweD9JRD03MTBodHRwOi8vdHUyLmp1anV3YW4uY29tL01hbGwv5LyY55uYMTQ4MDY0MzUxNy5wbmcO6YeR5aOr6aG/IFXnm5gGNzUwMDAwZAIED2QWAmYPFQQgL1ZpcnR1YWxHb29kRXhjaGFuZ2UuYXNweD9zaWduPTEsaHR0cDovL3R1Mi5qdWp1d2FuLmNvbS9NYWxsLzAwMTQ3OTY5NDkzMC5wbmcX5YWo5Zu9NTDlhYPor53otLnnm7TlhrIGNTc1MDAwZAIFD2QWAmYPFQQgL1ZpcnR1YWxHb29kRXhjaGFuZ2UuYXNweD9zaWduPTIuaHR0cDovL3R1Mi5qdWp1d2FuLmNvbS9NYWxsL1HluIExNDgwMzkzODI2LmpwZw8xMOWFg1HluIHnm7TlhrIGMTIwMDAwZAIGD2QWAmYPFQQgL1ZpcnR1YWxHb29kRXhjaGFuZ2UuYXNweD9zaWduPTMuaHR0cDovL3R1Mi5qdWp1d2FuLmNvbS9NYWxsLzI1MDExNDgwMzg3MDY0LmpwZwsxMOWFg+a1gemHjwYxMjAwMDBkAgcPZBYCZg8VBCAvVmlydHVhbEdvb2RFeGNoYW5n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" />
</div>
<script src="/WebResource.axd?d=bnO43BAny2fLzXDnhC1UZnNdFLj_0m5Kfu2bCJYTtkDAiMwq3BR1rqKp1rscOz9WfP0g9ZRxQPx6LbXn_Qm-P9ZJEo0x6Kxcir4wl4y6OYo1&amp;t=635375563334701695" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=sdFIlEnnsg-hOmZ_gTfQwaqutNwVpvSvA_GLCXpVJjpyPVswf-gFCHzkOHobit3aDYUQ7rKkitEvCidladbVtBllj5NNtawypj51DNMYCdXgE8tf6owd_xHW8uCilMztNOWgvhdiP9m14AMoB_BuwfWUI5ZPG4D1RBcE8v9izaEDCgGoGrMiAhSG7-bCdE2X0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=F8C9ESjZBBEOBSW7epDN0cWSK-MZbbVGIF4IjXlERuKO5ZeOWgNJ524k0L0_jXeTuh4IfoDnL6I2CL_ZaXX6ab0oAHcqO-8iwrz-mHDSx_G8LQLz4DRt70yUPNJf_uhEaBAOrrfJHgn32yoMHuaYeg8DHHqouC-5s99e0nKuAAMYRLVcHrt_pnsp4A0qvXPd0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="90059987" />
</div>
        <%@include file="header.jsp"%>
        <script src="assets/main/js/dialog.js" type="text/javascript"></script>
        <script src="assets/main/js/common.js" type="text/javascript"></script>
        <script src="http://static.geetest.com/static/tools/gt.js"></script>       

    <div class='index'>
        <div class="w950 clearfix">
    	<!--左边-->
    <div class=" w700">
      <!---->           
            <div class="w700box">
            <div class="p24 clearfix">
              <ul class="image_text_list">
              	
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
								onclick="listpage(this.id)"><< 前一页</a>
						</c:if>
						
						<c:forEach begin="1" end="${pageNum}" varStatus="status">
							<c:if test="${currentPage == status.index}">
								<a href="#" class="current" id="${status.index}" onclick="listpage(this.id)">${status.index}</a>
							</c:if>
							<c:if test="${currentPage != status.index}">
								<a href="#" id="${status.index}" onclick="listpage(this.id)">${status.index}</a>
							</c:if>
						</c:forEach>
	
						<c:if test="${currentPage == pageNum}">
							<span class="disabled">后一页 >></span>
						</c:if>
						<c:if test="${currentPage != pageNum}">
							<a href="#" id="${currentPage+1}"
								onclick="listpage(this.id)">后一页 >></a>
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
    <script src="../scripts/exchangecoins.js"></script>
    <script type="text/javascript">
        $(function () {
            (function () {
                function initindex() {
                    cooperateMore();                    
                    init();
                }
                function init(){
                    //兑换聚豆
                    $('.exchangeJD').click(function () {                        
                        $("body").cashJD({"num":0});
                    })};
                function captcha() {
                    $('.gt_ajax_tip ready').hide();
                    var handler = function (captchaObj) {
                        captchaObj.appendTo($("#captchaIndex"));
                        captchaObj.onSuccess(function () {
                            $('#btnlogin').attr('data-enable', true);
                        })
                    };
                    $.ajax({
                        url: "/common/getcaptchacode.aspx?t=" + (new Date()).getTime(),
                        type: "get",
                        dataType: "json", // 使用jsonp格式
                        success: function (data) {
                            initGeetest({
                                gt: data.gt,
                                challenge: data.challenge,
                                product: "float", // 产品形式
                                offline: !data.success
                            }, handler);
                        }
                    });
                }
                captcha();
                function cooperateMore() {
                    moreContrul("merchant");
                    moreContrul("link");
                }
                initindex();
            })();
        })
    </script>


        <div id="ctl00_hiddencode" class="hiddencode" style="display: none">309b79a6-5fbc-4484-a951-12401afe8efb</div>
        
    <%@include file="footer.jsp"%>    
    <script type="text/javascript">
        $(function () {
            (function () {
                function init() {
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
