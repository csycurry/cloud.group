<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<title>
        	聚宝师
    </title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta property="qc:admins" content="0464336777661605166375" />
    <link rel="canonical" href="" />
    <link rel="icon" href="" type="image/x-icon" charset="utf-8" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="assets/css/index.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/base.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/home.css" />
    <script type="text/javascript" src="assets/js/jquery1.8.3.min.js"></script>

    <script type="text/javascript" src="assets/js/news.js"></script>
    <script src="http://static.geetest.com/static/tools/gt.js"></script>
    
    <meta name="Description" content="已经有1000多万用户使用返还网省钱" />
<meta name="Keywords" content="聚宝师,返现网,返利,返利网站,返现,返钱网" />
<link rel="stylesheet" type="text/css" href="assets/css/list.css" />
<link rel="stylesheet" type="text/css" href="assets/css/default.css" />
<link rel="stylesheet" type="text/css" href="assets/css/new_home.css" />

<script type="text/javascript">
    function browserRedirect() {
        if ($.cookie('viewPc')) {
            return false;
        };
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
        <!--if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
            window.location.href = "/";
        };-->
    };
    if (location.href.indexOf("?view=pc") < 0) {
        browserRedirect();
    } else {
        $.cookie('viewPc', true, { path: '/' });
    };
</script>

<!-- End of Google Analytics Content Experiment code -->

    <script type="text/javascript">
        var _hmt = _hmt || []; var _gaq = _gaq || [];
        var fp4 = new Fingerprint({ screen_resolution: true });
    </script>
</head>
<body>
    <div class="top_content">
        <div id="top_header">
            <div class="top_header_r">
                <ul>
                </ul>
            </div>
            <div class="top_header_l">
                <p class="login_info" id="site_userinfo"></p>
            </div>
        </div>
    </div>
    
    
    
    <div class="headerPlaceBlock">
    </div>
    <div class="headeBlock">
        <div id="header">
            <div class="inner clearfix" style="position: relative;">
                <div class="newlogoshowindex" id="header_l" style="display:block">
                    <a class="gwa" href="/"></a>
                </div>
                
                <div class="newlogoshowtaobao">
                    <a class="gwa" href="/"></a>
                    <a class="cgfa" href="/"></a>
                </div>
                
                <div class="home-search clearfix blue">
                    <div class="search">
                        <div class="search_input">
                            <form action="" method="post" onsubmit="return SearchMall()" target="_blank" class="head_form">
                                <div class="Text_Ts_Box blue">
                                    <div class="TextBox">
                                        <input type="text" class="SearchInputText" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
                                        <span class="icon-search"></span>
                                    </div>
                                    <div class="show J_show" id=""></div>
                                </div>
                                <input type="submit" class="searchInputImage" class="blue" value=""/>
                            </form>
                        </div>
                    </div>
                </div>
                
                
                
                <input type="hidden" id="homeNavId" value="hs_tb" />
            </div>
        </div>
    </div>

    
    <div class="opacity_background animate_block"></div>
    <div class="float_search_box animate_block">
        <div class="content">
            <div class="logotaobaofanhuan">
                    <a class="gwa" href="#" target="_blank"></a>
            </div>
            <div class="home-search clearfix blue">
                    <div class="search">
                        <div class="search_input">
                            <form action="" method="post" onsubmit="return SearchMall()" target="_blank" class="head_form">
                                <div class="Text_Ts_Box blue">
                                    <div class="TextBox">
                                        <input type="text" class="SearchInputText" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
                                        <span class="icon-search"></span>
                                    </div>
                                </div>
                                <input type="submit" class="searchInputImage" class="blue" value=""/>
                            </form>
                        </div>
                    </div>
                </div>
        </div>
    </div>



    
    <div id="navouter">
        <div class="navinner clearfix">
            <div id="nav">
                <ul> 
                    <li class="navfirst"><a class="nav-a" href="/" name="nav-www">今日好货</a></li>
                    <li><a class="nav-a" href="/rebate.html" name="nav-tb"><i class="icon-nav2"></i>热门商品</a> </li>
                    <li><a class="nav-a act-login" href="/userinfo.html" name="nav-my">我的返还</a></li>
                    
                </ul>
            </div>
            <div id="nav_notice">
            </div>
        </div>
    </div>
    
                    <div id="box-play">
	                    <ul class="img-list">
                            <c:forEach items="${banners}" var="b">
    	                            <li class="cur"  style="background:url('${b.url}') 49.99% top no-repeat;" data-url="√">
                                        <a href="${b.link}" class="" target="_blank" hidefocus="true"></a>
                                    </li>
                            </c:forEach>
                        </ul>
                        <ul class="count-num"></ul> 
                    </div>
        
    <!-- show star -->
    
    <!-- show end -->
    
    <div id="wrapper">
        <div id="main" class="clearfix">
            
    
    <!--十点提示窗口-->
    <style>
        .home-search{display:block;}
    </style>
    <div id="showindow">
        <a id="showClose"></a>
        <a id="showReload"></a>
    </div>
    
    <div class="index_tab clearfix" id="index_tab">
        <div class="fl bh-fl">
            <ul class="clearfix">
                <li class="curr"><a href="javascript:;" onclick="FH.home.getMAPgoods($(this),1)">每天早10晚8点上新</a></li>
                
            </ul>
        </div>
        <div class="fr bh-fr">
			<div class="titile-bar" style=" margin-top:7px;">
                            <ul class="leimu" id="cgfCategory">
                            <li><a id="category18" data-id="-1" onclick="FH.home.switchCategory(-1,$(this))" target="_blank">精选</a></li>
                        <li><a id="category18" data-id="0" onclick="FH.home.switchCategory(0,$(this))" target="_blank">全部</a></li>
                                
                        <li><a id="category19" data-id="1" onclick="FH.home.switchCategory(1,$(this))" target="_blank">食品</a></li>
                                
                        <li><a id="category20" data-id="2" onclick="FH.home.switchCategory(2,$(this))" target="_blank">女装</a></li>
                                
                        <li><a id="category21" data-id="3" onclick="FH.home.switchCategory(3,$(this))" target="_blank">居家</a></li>
                                
                        <li><a id="category22" data-id="4" onclick="FH.home.switchCategory(4,$(this))" target="_blank">母婴童装</a></li>
                                
                        <li><a id="category23" data-id="5" onclick="FH.home.switchCategory(5,$(this))" target="_blank">男装</a></li>
                                
                        <li><a id="category24" data-id="6" onclick="FH.home.switchCategory(6,$(this))" target="_blank">内衣</a></li>
                                
                        <li><a id="category25" data-id="7" onclick="FH.home.switchCategory(7,$(this))" target="_blank">数码家电</a></li>
                                
                        <li><a id="category26" data-id="8" onclick="FH.home.switchCategory(8,$(this))" target="_blank">美妆个护</a></li>
                                
                        <li><a id="category27" data-id="9" onclick="FH.home.switchCategory(9,$(this))" target="_blank">鞋包配饰</a></li>
                                
                        <li><a id="category28" data-id="10" onclick="FH.home.switchCategory(10,$(this))" target="_blank">运动</a></li>
                            </ul>
                            
                            
                        </div>
		</div>
    </div>
    <div class="zdm-wrap-box"></div>
       <div class="zdm-wrap clearfix">
       <div class="newrightfie" id="newrightfie">
            <div style=" position:relative;">
                <div id="newclose" style=" position:absolute; top:0;right:0; cursor:pointer; width:10px; height:10px;"></div>
            </div>
       </div>
        <div class="zdm-main">
            <div class="shop-box" id="J_shop_list">
                <div class="cont" style="display:block;">
                    
                    <div class="zdm-list cgf-list home_lists_vbox_1" style="display:block">
                        <ul id="J_box_cgf" class="clearfix list_box_m" style="position:relative"></ul>  
                    </div>
                    <div class="cgf-list home_lists_vbox_2">
                        <div class="clearfix list_box_m Brand_box"></div>
                    </div>
                    <div class="cgf-list home_lists_vbox_3">
                        <div class="titile-bar" style=" margin-top:7px;">
                            <ul class="leimu clearfix" id="leimu">
                                
                            </ul>
                        </div>
                        <ul id="J_jiujiu" class="clearfix list_box_m jiujiu-list"></ul> 
                    </div>
                </div>
                <div class="loading f-tc loading_j">
                    <img alt="Loading..." src="assets/images/loader.gif" />
                </div>
                <div class="clear"></div>
                <div class="m-ad f-hide" id="J_ad">
                    <img src="" data-url="assets/images/banner.png" width="960" height="100" alt="" />
                </div>
                <!-- 商品分页 -->
                <div class="pagination2" id="pagination1">
                    <span id="pagination"></span>
                    <span class="page-tips f-hide" id="J_pageTip" style="display:none;"></span>
                </div>
            </div>
        </div>
        <input type="hidden" id="requestTime" value="2014-10-15 18:06:43" />
        <input type="hidden" id="requestTimeCheck" value="" />
        <input type="hidden" id="zdm_page" value="" />
        <input type="hidden" id="zdm_pageindex" value="1" />
        <input type="hidden" id="J_shop" value="" />
        <input type="hidden" id="J_page_status" value="0" />
        <input type="hidden" id="curPage" value="1" />
        <input type="hidden" id="curType" value="1" />
        <input type="hidden" id="curTotalpage" value="" />
    </div>
    <div class="lastb" id="showend" style="margin:0 auto; width:960px; margin-top:20px; display:none;">
        <img src="http://i.fanhuan.com/images/cgffl/footerBanner.png?v=20160225" data-url="http://i.fanhuan.com/images/cgffl/footerBanner.png?v=20160225" width="960" height="100" alt="" />
    </div>


<input type="hidden" id="timeoutToTen" value="45860" />
<input type="hidden" id="timeoutToTenType" value="0" />
<script type="text/javascript" src="assets/js/refreshTip.js?v=20161020"></script>

        </div>
    </div>
    <div id="footer" class="clearfix">
        <div class="footer-top-outer">
            <div class="footer-inner clearfix">
                <div id="tbfaq" class="footer_help clearfix">
                    <dl class="fo_a">
                        <dt>新手指南</dt>
                        <dd>
                            <a target="_blank" href="" class="faqtips">什么是购物返还？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="" class="faqtips">为什么会返还？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="" class="faqtips">怎样从返还网去购物？</a>
                        </dd>
                    </dl>
                    <dl class="fo_b">
                        <dt>返还问题</dt>
                        <dd>
                            <a target="_blank" href="" class="faqtips">返还可以用来做什么？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="" class="faqtips">返还会影响原有的优惠吗？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="" class="faqtips">必须购物才有返还吗？</a>
                        </dd>
                    </dl>
                    <dl class="fo_c">
                        <dt>订单问题</dt>
                        <dd>
                            <a target="_blank" href=""
                                class="faqtips">什么是订单跟踪？</a></dd>
                        <dd>
                            <a target="_blank" href=""
                                class="faqtips">跟单不成功怎么办？</a></dd>
                        <dd>
                            <a target="_blank" href=""
                                class="faqtips">如何知道订单已经返还了？</a></dd>
                    </dl>
                    <dl class="fo_d online_work_time">
                        <dt>人工服务</dt>
                        <dd class="online_servers on">
                            客服在线：<a class="btn btn-1-30" href="javascript:viod(0);" onclick="ysf.open();return false;"><span>点击开始对话</span></a></dd>
                        <dd class="call_servers on">
                            热线电话：400-0053-000</dd>
                        <dd class="bottom_suggest on">
                            <a target="_blank" href="" class="faqtips">投诉与建议</a></dd>
                    </dl>
                </div>
                <div class="footer_server clearfix">
                    <dl class="fo_e fo_qrcode">
                        <dt>返还微信</dt>
                        <dd class="ico-footer i-f-qrcode"></dd>
                    </dl>
                    <dl class="fo_e">
                        <dt>手机版</dt>
                        <dd class="ico-footer2"></dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="footer-bot-outer">
            <div class="footer-inner">
                <div class="footer_tips clearfix">
                    <a class="ftips2" target="_blank" href="http://www.51honest.org/wscredit/detail.credit?action=preLevel&credcode=NO.20000035756&axbFlag=axb">信用之星好评网站</a>
                    <a class="ftips3" href="https://ss.knet.cn/verifyseal.dll?sn=e16040635020063012ex5z000000&amp;ct=df&amp;a=1&amp;pa=0.4608156487811357" id="kx_verify" tabindex="-1" target="_blank" kx_type="图标式" style="display:inline-block;" src="http://rr.knet.cn/static/images/logo/cnnic.png" style="border:none;" oncontextmenu="return false;" alt="可信网站"></a> 
                    <a class="ftips4" target="_blank" href="http://www.315online.com.cn/member/315120006.html">交易保障放心购物</a> 
                    <a class="ftips5" target="_blank" href="http://www.miibeian.gov.cn/">工信备案备案网站</a>
                    <a class="ftips6" href="http://xmwj.gov.cn/ei/Ei!certificate.action?id=40288a8556c64ea30156dab86ec30038" target="_blank" style="border:0;"><img src="http://xmwj.gov.cn/ei/Ei!readEiImgByMemory.action" style="border:0;height:47px"></a>
                </div>
                <p class="footer_link">
                    <span class="copyright">&nbsp;&copy;2008-2016XX网 XXXX.com</span>
                    <a target="_blank" href="/" rel="nofollow">关于返还网</a><span>|</span>
                    <a target="_blank" href="privacy.html" rel="nofollow">隐私政策</a><span>|</span>
                    <a target="_blank" href="#" rel="nofollow">友情链接</a><span>|</span>
                    <a target="_blank" href="http://www.fanhuan.com/help/">帮助</a><span>|</span>
                    <a target="_blank" href="http://www.meiyou.com/">美柚</a><span>|</span>
                    <a target="_blank" href="http://www.xixiaoyou.com/">柚子街</a>
                </p>
                <div class="police-icon">
		 		    <a target="_blank" class="police-icon-a" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=35020302000080">
                        <img src="http://www.beian.gov.cn/img/ghs.png" style="float:left;"/><span class="police-icon-span">公网安备 35020302000080号</span> 
                    </a>
		 	    </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="J_signday" value="5" />
    <!-- 登录后提示连续签到的天数 -->
    <input type="hidden" id="J_signCode" value="" />
    <input type="hidden" id="J_day" value="" />
    <input type="hidden" id="J_week" value="" />
    <input type="hidden" id="J_yi" value="" />
    <input type="hidden" id="J_yi_url" value="" />
    <input type="hidden" id="J_ji" value="" />
    <input type="hidden" id="J_date" value="" />
    <input type="hidden" id="Hidden1" value="" />
    <input type="hidden" id="J_year" value="" />
    <input type="hidden" id="J_month" value="" />
    <div id="forajax" style="display: none"></div>
    
    <script type="text/javascript" src="assets/js/json2.js"></script>
    <script type="text/javascript" src="assets/js/thickbox_v2.js"></script>
    <script type="text/javascript" src="assets/js/base.js"></script>
    <script type="text/javascript" src="assets/js/jquery.base64.min.js"></script>
    
    
    <script type="text/javascript" src="assets/js/home.js"></script>
    
    <script type="text/javascript" src="assets/js/new_home.js"></script>
    <script type="text/javascript" src="assets/js/Navigation.js"></script>
    
    <script type="text/javascript" src="assets/js/slides.min.js"></script>
    <script type="text/javascript">
        $("a[biz-sellerid]").live("click", function () {
            return shopChannel($(this).data("code"), $(this).data("title"), $(this).data("fh"), this);
        })
        function shopChannel(userId, shopName, commRate, click) {
            window.open('http://taobao.fanhuan.com/redirect?type=shop&id=' + userId + '&shopname=' + encodeURIComponent(shopName) + '&commrate=' + commRate.replace('元', '').replace('%', ''));
            return false;
        }
        $(document).bind('keydown', function (e) {
            var e = e || window.event;
            if (e.keyCode == 116) {//116 是f5按键代码
                var cateName = $('.tit ul li[class*="cur"] a').html();
                $.cookie("product_cur_catename", cateName, { path: "/", domain: _domain });
                location.href = "/";
                event.keyCode = 0;
                event.cancelBubble = true;
                return false;
            }
        });
        //FH.chaogaofan.init(-1, 1, 0, $("#J_box_cgf"));
        FH.home.init();
        $(function () {
            $("#Show-build").css({ 'display': 'inline-block' });
//            $(".inner").css({ 'margin-bottom': '20px' });
            $("#box-play").css({ 'display': 'block' });
            $("img[src='http://exp.jiankongbao.com/loadtrace_logo1.gif']").css({ 'display': 'none' });
        });
        $("#newclose").click(function () {
            $("#newrightfie").hide();
        });
    </script>
    <script type="text/javascript" src="assets/js/floatSearch.js"></script>
    ﻿<script type="text/javascript">
         initFloatSearchBox($(".cont"), $(".newlogoshowindex"), null, 0);
         window["_BFD"] = window["_BFD"] || {};
         _BFD.BFD_INFO = {
             "user_id": CurrentUser.UserId != undefined ? CurrentUser.UserId : "", //网站当前用户id，如果未登录就为0或空字符串
             "page_type": "homepage" //当前页面全称，请勿修改
         };
         
    </script>


    <script type="text/javascript">
        $("#nav_notice").mouseover(function () {
               $("#nav_notice").css({ 'z-index': '20' });
        }).mouseleave(function () {
            $("#nav_notice").css({ 'z-index': '0' });
        })
        $(function () {
            var $height = $("#waterfall a img").height();
            $("#waterfall a").css("height", $height)
        })

    </script>
    <script type="text/javascript">
        //阻止弹窗事件
        function stop() {
            return false;
        }
    </script>
    <script type="text/javascript">
        window["_BFD"] = window["_BFD"] || {};
        _BFD.bfd_pid = ""; //当前页面的页面id
        _BFD.script = document.createElement("script");
        _BFD.script.type = "text/javascript";
        _BFD.script.async = true;
        _BFD.script.charset = "utf-8";
        document.getElementsByTagName("head")[0].appendChild(_BFD.script);
    </script>
</body>
</html>