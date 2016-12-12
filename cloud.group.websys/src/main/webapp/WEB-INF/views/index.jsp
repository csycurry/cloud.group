<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>打码**-首页</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="keywords" content="打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" /><meta name="description" content="聚聚玩是一个玩游戏、体验产品赚积分。玩家可以通过玩游戏赚钱，打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
	<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="assets/main/js/scroll.js"></script>
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
    
<link type="text/css" rel="stylesheet" href="/assets/main/css/index.css" /></head>
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

    <div class="banner">
        <ul class="bannerImg">
            <c:forEach items="${banners}" var="banner" varStatus="status">
            		<li style="background: url('${banner.url}') no-repeat top center; display: none; position: absolute; left: 0; width: 100%; overflow: hidden; height: 100%;">
                        <a style="position: relative; z-index: 10;" href='${banner.link}' target="_blank"></a>
                    </li>
		    </c:forEach>
		    <c:if test="${userCode==null||userCode=='' }">
            <div class="container" style="height: 100%; width: 1200px!important; position: relative">
                <div class="register">
                    <div class="registerCtn">
                        
                        <div class="nologin">
                            <p>
                                <span class="pull-left">用户名：</span><input type="text" id="user" />
                            </p>
                            <p>
                                <span class="pull-left">密&nbsp;&nbsp;码：</span>
                                <input type="password" id="psd" />
                            </p>
                            <div id="captchaIndex" style="margin: 10px 0 10px; padding-top: 10px"></div>
                            <input id="btnlogin" class='btn btn-info btn-block' type="button" value="登录" />
                            <p class="dl"><a href="register.html?para='" + encodeURIComponent(window.location.href)); class='pull-left'>注册账号</a><a href="Password.aspx" class='pull-right'>忘记密码？</a></p>
                        </div>
                        
                    </div>
                </div>
            </div>
            </c:if>
        </ul>
        <ul class="bannerIcon text-center">
            
                    <li class='active'></li>
                
                    <li class=''></li>
                
                    <li class=''></li>
                
                    <li class=''></li>
                
        </ul>

    </div>
    <div class='index'>
        <div class="container mainWidth" style="width: 1200px !important">
            <div class="tryStep clearfix mt25">
                <div class="pull-left text-center tip">体验步骤</div>
                <p class="zxx_align_box_2">
                    <img src="assets/main/img/stepIcon1.png" class="icon" /><span class="zxx_align_word">注册账号<br> 无需任何押金</span>
                    
                </p>
                <p class="zxx_align_box_2">
                    <img src="assets/main/img/stepIcon2.png" class="icon" /><span class="zxx_align_word">赚取元宝<br> 任务简单轻松</span>
                </p>
                <p class="zxx_align_box_2">
                    <img src="assets/main/img/stepIcon3.png" class="icon" /><span class="zxx_align_word">元宝提现<br> 10000元宝=1元</span>
                </p>
                <div class="dh pull-left zxx_align_box_2">
                    <img src="assets/main/img/stepIcon5.png" class="money" /><span class="zxx_align_word">累计发放<br> 10000元宝</span>
                </div>
            </div>

            <div class="indexCtn clearfix mt25">
                <div class="pull-left prefecture">
                    <div class="prefectureCom play">
                        <h3 class='clearfix'>
                            <div class="pull-left title">
                                新手推荐
                            </div>
                            <div class="pull-right more">
                                <a href="#" id="trymore">更多>></a>
                            </div>
                        </h3>
                        <div class="tab-content">
                            <div class="tab-pane active in fade gameplay pull-left" id="play">
                                <div id="ctl00_ContentPlaceHolder1_UpdatePanel2">
	
                                        
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 100%" src="http://p1.bpimg.com/510468/b58c66e0e76b8a3a.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8013">混沌战域 2期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8013" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：15226人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">38万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">1000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 100%" src="http://i1.piimg.com/510468/3ce9dd863233466a.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8016">斗三国 12期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8016" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1380人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">28万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">300元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 100%" src="http://tu2.jujuwan.com/Game/2101480668121.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=7603">烈焰传说 1期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=7603" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：14188人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">48万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">600元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 100%" src="http://tu2.jujuwan.com/Game/2101479462675.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8002">天神战 9期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8002" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：4人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">21万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">600元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 100%" src="http://i1.piimg.com/510468/36365e8b44367e18.png" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8011">神魔 12期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8011" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：2050人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">28万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">1000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 100%" src="http://tu2.jujuwan.com/Game/2101479347418.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8022">剑侠情缘2 25服</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8022" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：14260人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">13万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">500元</span></p>
                                                </div>
                                            
                                    
</div>
                            </div>
                            <div class="tab-pane in fade chessplay pull-left" id="chess">
                                <div id="ctl00_ContentPlaceHolder1_UpdatePanel4">
	
                                        
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://tu2.jujuwan.com/Chess/210-11480930365.gif" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8023">236棋牌-236棋牌3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8023" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1046人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">20459万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">24000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i1.piimg.com/510468/cb6cab90dad01a51.png" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8021">3386-《3386棋牌》3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8021" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1590人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">27852万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">8000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i4.buimg.com/44df7410fb4d8571.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8006">奇游棋牌 4期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8006" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1780人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">12883万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">8000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://p1.bqimg.com/510468/d8b515e8e74e5b02.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8005">G9969-神兽转盘3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8005" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1994人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">15855万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">12800元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i1.buimg.com/510468/f9f0f5b96e93b233.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=7881">《2378棋牌》3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=7881" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1255人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">12300万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">8000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i4.piimg.com/510468/8e7c0ce10b7a83c5.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=7998">1891-神兽转盘4期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=7998" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：12210人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">8280万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">10000元</span></p>
                                                </div>
                                            
                                    
</div>
                            </div>
                        </div>
                    </div>

                    

                    <div class="prefectureCom cash mt20">
                        <h3 class="clearfix">
                            <div class="pull-left title">
                                热门推荐
                            </div>
                            <div class="pull-right more">
                                <a href="/codes.html">更多>>
                              </a>
                            </div>
                        </h3>
                        <div class="tab-content">
                            <div class="tab-pane active in fade gameplay pull-left" id="play">
                                <div id="ctl00_ContentPlaceHolder1_UpdatePanel2">
	
                                        <c:forEach items="${missions}" var="m" varStatus="status">
                                        		<div class="item">
                                        		
                                                    <div class="img">
                                                    	<a style="color: white" href="/code.html?missionId=${m.id}">
                                                        	<img style="width: 100%" src="${m.imageUrl}" alt="" />
                                                       	</a>
                                                    </div>
                                                    <p>${m.missionTitle}</p>
                                                    <p>报名人数：<span class="red">${m.signNum}人</span></p>
                                                    
                                                </div>
										</c:forEach>
                                            
                                    
</div>
                            </div>
                            <div class="tab-pane in fade chessplay pull-left" id="chess">
                                <div id="ctl00_ContentPlaceHolder1_UpdatePanel4">
	
                                        
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://tu2.jujuwan.com/Chess/210-11480930365.gif" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8023">236棋牌-236棋牌3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8023" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1046人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">20459万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">24000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i1.piimg.com/510468/cb6cab90dad01a51.png" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8021">3386-《3386棋牌》3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8021" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1590人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">27852万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">8000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i4.buimg.com/44df7410fb4d8571.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8006">奇游棋牌 4期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8006" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1780人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">12883万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">8000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://p1.bqimg.com/510468/d8b515e8e74e5b02.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=8005">G9969-神兽转盘3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=8005" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1994人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">15855万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">12800元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i1.buimg.com/510468/f9f0f5b96e93b233.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=7881">《2378棋牌》3期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=7881" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：1255人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">12300万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">8000元</span></p>
                                                </div>
                                            
                                                <div class="item">
                                                    <div class="img">
                                                        <img style="width: 215px; height: 152px;" src="http://i4.piimg.com/510468/8e7c0ce10b7a83c5.jpg" alt="" />
                                                        <p><a style="color: white" href="CardDetailContent.aspx?gid=7998">1891-神兽转盘4期</a></p>
                                                        
                                                        <div class='shadow'>
                                                            <div class="shadowBtn"><a href="CardDetailContent.aspx?gid=7998" target="_blank">立即试玩</a></div>
                                                            <span>体验热度：12210人</span>
                                                        </div>
                                                    </div>
                                                    <p>每人奖励：<span class="red">8280万</span><img src="img/codeJB.png" class='JB' alt=""></p>
                                                    <p>冲级奖励：<span class="red">10000元</span></p>
                                                </div>
                                            
                                    
</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pull-left aside">
                    <div class="serve">
                        <a href="http://wpa.qq.com/msgrd?v=3&uin=2851175659&site=qq&menu=yes" target="_blank">
                            <img src="img/index4-1.png" alt="" /></a>
                    </div>
                    <div class="weekRank common mt20">
                        <h4>
                            <img src="img/index4-2.png" alt="">实时提现						
                        </h4>
                        <div class="chessRank">
                            <div id="ctl00_ContentPlaceHolder1_UpdatePanel6">
								 <div class='tv'>
                            <div class="list_lh">
                                <ul>
                                    
                                            <li>用户:<span class='green1 apostrophe'>deddeeeed</span>提现了<span class="red">10元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>p854251109</span>提现了<span class="red">14元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>dukw0526</span>提现了<span class="red">2348元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>200482</span>提现了<span class="red">1元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>haizhong123</span>提现了<span class="red">58元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>zx294113647</span>提现了<span class="red">42元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>13175831806</span>提现了<span class="red">4元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>denniscui</span>提现了<span class="red">1元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>tianjiao1200</span>提现了<span class="red">11元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>biw123</span>提现了<span class="red">5元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>3441407735</span>提现了<span class="red">31元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>qq549385465</span>提现了<span class="red">10元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>dfffiw521</span>提现了<span class="red">14元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>wyj3957</span>提现了<span class="red">11元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>sunuo1</span>提现了<span class="red">13元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>q18065167130</span>提现了<span class="red">100元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>yiyepiaoling</span>提现了<span class="red">79元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>wudi111</span>提现了<span class="red">30元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>ll23852</span>提现了<span class="red">80元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>a912001740</span>提现了<span class="red">10元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>mmm32336</span>提现了<span class="red">340元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>ruiven0317</span>提现了<span class="red">1元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>dai19910705</span>提现了<span class="red">10元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>q3252515</span>提现了<span class="red">666元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>hzfcyzf</span>提现了<span class="red">722元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>皇族天赐</span>提现了<span class="red">101元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>libieshanggan</span>提现了<span class="red">279元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>woyaohuijia</span>提现了<span class="red">288元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>mingtianjiuzou</span>提现了<span class="red">588元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>shiwei1235</span>提现了<span class="red">22元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>a700733</span>提现了<span class="red">226元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>xq12080</span>提现了<span class="red">74元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>xuewen1021</span>提现了<span class="red">459元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>13980863852</span>提现了<span class="red">68元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>TIANGUIJIN</span>提现了<span class="red">2元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>lsl123456</span>提现了<span class="red">70元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>shanye</span>提现了<span class="red">66元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>ltw12345</span>提现了<span class="red">9元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>likai520</span>提现了<span class="red">50元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>kaleb0522</span>提现了<span class="red">9元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>y52111125y</span>提现了<span class="red">8元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>13161860445</span>提现了<span class="red">3元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>whq518</span>提现了<span class="red">740元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>18207741560</span>提现了<span class="red">3元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>lx886966</span>提现了<span class="red">3元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>q519184804</span>提现了<span class="red">9元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>name314</span>提现了<span class="red">45元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>15008838979</span>提现了<span class="red">350元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>m1044889812</span>提现了<span class="red">9元</span></li>
                                        
                                            <li>用户:<span class='green1 apostrophe'>15336656765</span>提现了<span class="red">150元</span></li>
                                        
                                </ul>
                            </div>
                        </div>

		</div>
                        </div>
                        
                    </div>
                    <div class="notice common mt20">
                        <h4>
                            <img src="img/index4-3.png" alt="" />最新资讯<a href="#">更多&gt;&gt;</a></h4>
                        <div id="ctl00_ContentPlaceHolder1_UpdatePanel3">
										<c:forEach items="${news}" var="n">
										<p class="apostrophe">
                                            <a href='/detail.json?newsId=${n.id}' target='_blank' title="">【重要资讯】${n.title}</a></p>
											
										</c:forEach>
                            
</div>
                    </div>
                   
                </div>
            </div>
            
            <div class='blogroll'>
                <h4>友情链接</h4>
                <ul>
                	<c:forEach items="${blogs}" var="b">
							<li>
								<a href="${b.link}" target="_blank">${b.title}</a>
							</li>
					</c:forEach>
                </ul>
            </div>
        </div>
    </div>        
    <script src="../scripts/exchangecoins.js"></script>
    <script type="text/javascript">
        $(function () {
            (function () {
            	$("div.list_lh").myScroll({
            		speed:40, //数值越大，速度越慢
            		rowHeight:68 //li的高度
            	});
            	
                function initindex() {
                    more();
                    roll();
                    banner();
                    weekRank();
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
                
                $('#btnlogin').click(function () 
                        {
                            if (true) {
                                var user = $('#user').val();
                                if (user.length == 0) { alert("用户名为空"); return; };
                                var psw = $('#psd').val();
                                if (psw.length == 0) { alert("密码不可以为空"); return; };
                                $.post("/user/login.json", {"userCode":user,"userPwd":psw} , function (data) {
                                    if (data.status == "1") {
                                        window.location.reload();
                                        return;
                                    }
                                    else {
                                            alert(data.msg);
                                        	return;
                                    }
                                });
                            }
                            else {
                                alert('请先进行验证！');
                            }
                        });

                
                function more() {
                    var $tryli = $('#tryul li');
                    var $trymore = $('#trymore');
                    $trymore.click(function () {
                        var index = $tryli.index($('#tryul li.active'));
                        if (index == 0) window.open("GameMainContent.aspx");
                        else window.open("CardMainContent.aspx");
                    })
                }                
                function cooperateMore() {
                    moreContrul("merchant");
                    moreContrul("link");
                }
                function moreContrul(parent) {
                    var mark = true;
                    $cooperateMore = $('.' + parent + ' h3 a');
                    $cooperateMore.click(function () {
                        if (mark) {
                            $(this).find('img')[0].src = "img/more1.png";
                            $(this).find('span').text("收起");
                            var $parent = $(this).closest(".cooperate");
                            $parent.find(".moreItem").addClass('active');
                            mark = false;
                        } else {
                            $(this).find('img')[0].src = "img/more.png";
                            $(this).find('span').text("更多");
                            var $parent = $(this).closest(".cooperate");
                            $parent.find(".moreItem").removeClass('active');
                            $parent.find(".moreItem").eq(0).addClass('active');
                            mark = true;
                        }

                    })
                }

                function banner() {
                    var $bannerIcon = $('.bannerIcon li');
                    var $bannerImg = $('.bannerImg li');
                    $bannerImg.eq(0).show();
                    var length = $bannerIcon.length;
                    $bannerIcon.hover(function () {
                        $(this).addClass('active').siblings().removeClass('active');
                        var index = $(this).index();
                        $bannerImg.eq(index).fadeIn(1000).siblings('li').fadeOut(1000);
                        clearInterval(timer);
                    }, function () {
                        var inum = $(this).index();
                        interval(inum);
                    })
                    var inum = 0;
                    var timer;
                    function interval(inum) {
                        timer = setInterval(function () {
                            inum++;
                            if (inum > length - 1) { inum = 0 }
                            $bannerImg.eq(inum).fadeIn(1000).siblings('li').fadeOut(1000);
                            $bannerIcon.eq(inum).addClass('active').siblings().removeClass('active');
                        }, 3000)
                    }
                    interval(0);
                }
                function roll() {
                    var $dynamicUl = $('.dynamic ul');
                    var $dynamicUlLi = $dynamicUl.find('li');
                    var $dynamicCtn = $('.dynamic .dynamicCtn');
                    var height = $dynamicCtn.height() - $dynamicUl.height();
                    var iNum = 0;
                    var count = 0;//重复的个数;

                    for (var i = 0; i < $dynamicUlLi.length; i++) {
                        if ($dynamicUlLi.eq(i).position().top > $dynamicCtn.height()) {
                            count = i;
                            break;
                        }
                    };
                    for (var i = 0; i < count; i++) {
                        $dynamicUl.append($dynamicUlLi.eq(i).clone());
                    };

                    $dynamicUl.hover(function () {
                        clearInterval(timer);
                    }, function () {
                        intervalRoll();
                    })
                    var timer;
                    function intervalRoll() {
                        timer = setInterval(function () {
                            $dynamicUl.css('top', iNum);
                            if ($('.dynamic ul li').length>0&&('.dynamic ul li').eq(-count).position().top < Math.abs(iNum)) { iNum = 0; }
                            iNum -= 1;
                        }, 33)
                    }
                    intervalRoll()
                }
                function weekRank() {
                    var $rankSel = $("select");
                    $rankSel.change(function () {
                        var $table = $('.' + $(this).val()).show();
                        $table.siblings('div').hide();
                    })
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
                    navbar();
                    adminhover();
                    backTOP();
                    navbarMove();
                    loginmodal();
                    surprise();
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
                function surprise() {
                    var $surprise = $('.surprise');
                    var $close = $surprise.find('span');
                    var timer;
                    var top = 200;
                    var mark = true;
                    function surpriseInterval() {
                        timer = setInterval(function () {
                            if (mark) {
                                top++;
                                $surprise.css('top', top)
                                if (top > 400) { mark = false }
                            } else {
                                top--;
                                if (top < 200) { mark = true }
                                $surprise.css('top', top)
                            }
                        }, 33)
                    }
                    surpriseInterval();
                    $surprise.hover(function () {
                        clearInterval(timer);
                    }, function () {
                        surpriseInterval();
                    })
                    $close.click(function () {
                        $surprise.remove()
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
