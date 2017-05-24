<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
		聚宝师-我的订单
    </title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="icon" href="" type="image/x-icon" charset="utf-8" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="assets/css/index.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/base.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/home.css" />
    <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.cookie.js"></script>
    <link href="/assets/stylesheets/bootstrap/bootstrap-table.min.css" rel="stylesheet">
    <script type="text/javascript" src="assets/js/user_base.js"></script>
    <script src="/assets/js/bootstrap-table.min.js"></script>  
   <script type="text/javascript" src="assets/js/news.js"></script>
   <link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common-user.css" type="text/css" rel="stylesheet" />
   <link href="/assets/main/css/main-user.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" media="screen" href="assets/css/mynew.css" />
<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />
<link href="assets/css/search_box.css" rel="Stylesheet"
    type="text/css" />
<style type="text/css">
    .gray
    {
        color: #fff;
        position: absolute;
        top: 0;
        right: 100px;
        width: 110px;
        height: 40px;
        display: block;
        text-align: center;
        line-height: 40px;
        cursor: pointer;
        background: #c6c6c6;
        border-radius: 4px;
    }
    .sent-yzm
    {
        position: absolute;
        top: 0;
        right: 100px;
        cursor: pointer;
        width: 110px;
        height: 40px;
        display: block;
        text-align: center;
        line-height: 40px;
        background: #00a0ed;
        color: #fff;
        border-radius: 4px;
    }
    .fuck:hover
    {
        background: #0096e4;
    }
    .fuck
    {
        cursor: pointer;
        position: relative;
        top: 87px;
        left: 218px;
        width: 108px;
        height: 41px;
        display: block;
        line-height: 41px;
        text-align: center;
        font-size: 14px;
        font-family: 宋体;
        background: #00a0ed;
        color: #fff;
        border: 1px solid #00a0ed;
        border-radius: 4px;
    }
    .tc-next
    {
        cursor: pointer;
        position: relative;
        top: 87px;
        left: 218px;
        width: 108px;
        height: 41px;
        display: block;
        line-height: 41px;
        text-align: center;
        font-size: 14px;
        font-family: 宋体;
        background: #c6c6c6;
        color: #fff;
        border: 1px solid #c6c6c6;
        border-radius: 4px;
    }
    .tc-del
    {
        cursor: pointer;
        position: relative;
        top: 130px;
        left: 88px;
        width: 108px;
        height: 41px;
        display: block;
        line-height: 41px;
        text-align: center;
        font-size: 14px;
        font-family: 宋体;
        color: #00a0ed;
        border: 1px solid #00a0ed;
        border-radius: 4px;
    }
    .tc-del:hover
    {
        background: #fafafa;
    }
    .tc-tips
    {
        display: block;
        font-size: 12px;
        font-family: 宋体;
        color: #ff0000;
        position: relative;
        top: 100px;
        left: 57px;
    }
    .chickNum-inp
    {
        width: 145px;
        height: 35px;
        line-height: 35px;
    }
    .chickNum
    {
        display: block;
        font-size: 14px;
        font-family: 宋体;
        color: #333;
        position: relative;
        top: 82px;
        left: 57px;
    }
    .tc-iphone em
    {
        margin-left: 5px;
    }
    .email-num
    {
        font-size: 14px;
        font-family: 宋体;
        color: #333;
        position: relative;
        top: 67px;
        left: 57px;
    }
    .email-num font
    {
        margin-left: 15px;
    }
    .tc-email
    {
        font-size: 14px;
        color: #555;
        display: block;
        font-weight: bold;
        margin: 0 auto;
        font-family: 宋体;
        position: relative;
        left: 57px;
        top: 50px;
    }
    .myaccount_banner
    {
        position: relative;
        width: 960px;
        margin-bottom: 12px;
    }
    .myaccount_banner a.close
    {
        position: absolute;
        right: 0px;
        width: 20px;
        height: 20px;
        text-indent: -999em;
        overflow: hidden;
    }
    .newjiulogospan2
    {
        display: block;
        width: 360px;
        height: 92px;
    }
    #TB_window
    {
        z-index: 180;
    }
    .iphonebg
    {
        display: none;
        position: fixed;
        _position: absolute;
        z-index: 170;
        width: 100%;
        height: 100%;
        bottom: 0;
        background: #000; /* IE 8 */
        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=40)"; /* IE5 - 7 */
        filter: alpha(opacity=40);
        opacity: 0.4;
        left: 0;
    }
    .tc-iphone
    {
        display: none;
        position: fixed;
        _position: absolute;
        left: 50%;
        top: 50%;
        width: 422px;
        height: 315px;
        z-index: 172;
        background: url(http://i.fanhuan.com/images/my/bindphone.png);
        margin-left: -211px;
        margin-top: -86px;
    }
    .newlogoshowindex
    {
        width: 310px;
        height: 70px;
        background: url("/assets/main/img/logo.png") no-repeat;
        position: absolute;
        top: 19px;
        display: block;
    }
    .myOrder .head{padding:20px 30px;border:1px solid #ccc;border-bottom:none;}
	.myOrder .userImg p{text-align:center;border:1px solid #fe6b01;color:#fe6b01;line-height:26px;margin-top:20px}
	.myOrder .userImg a{color:#fe6b01;}
	.myOrder .userCtn{margin-top:30px;margin-left:50px}
	.myOrder .userCtn p span{text-align:left;}
	.myOrder .userCtn p .mg{margin:0 14px;}
	.myOrder .userCtn .username{color:#FE6C00;}
    .myOrder .balance{width:280px;border:1px solid #ccc;margin-top:40px}
	.myOrder .balance .balanceHead{background:#fe6b01;color:#fff;line-height:40px;font-size:16px;}
	.myOrder .balance .balanceHead img{margin-left:5px;margin-right:3px;margin-top:-3px;}
	.myOrder .balance .balanceCtn{padding:15px 20px 5px 20px;font-size:16px;position:relative;}
	.myOrder .balance .balanceCtn .jb{margin-left:-3px;color:#fe6b01;}
	.myOrder .balance .balanceCtn .jb img{margin-right:5px;margin-top:-2px}
	.myOrder .balance .balanceCtn .sqtx{position:absolute;right:10px;top:20px;}
	.myOrder .balance .balanceCtn .sqtx img{width:105px;}
    
</style>
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
                                        <input type="text" class="SearchInputText2" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
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
                                        <input type="text" class="SearchInputText2" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
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
    
    <script type="text/javascript">
        FH.home.init();
    </script>
    <script type="text/javascript">
        $("#sign-in1").click(function () {
            //$("#nav_notice").css("background-color", "#fdfce4");
            $("#nav_notice").mouseleave(function () {
                $("#nav_notice").css("background", "none");
            })
            $(".signwi").css({ 'display': 'none' });
            $(".signwi1").css({ 'display': 'block' });
        })
        $("#nav_notice").mouseover(function () {
            $(this).css("background", "#1280dd")
        }).mouseleave(function () {
            $(this).css("background", "none")
            $("#sign-in1").css("color", "#fff");
            $(".signwi").css({ 'display': 'block' });
            $(".signwi1").css({ 'display': 'none' });
        })
    </script>
    
    <!-- show star -->
    
    <!-- show end -->
    
    <div id="wrapper">
        <div id="main" class="clearfix">
            
<div id="myaccount">
    <script type="text/javascript">
        function getCookie(name) {
            var strCookie = document.cookie;
            var arrCookie = strCookie.split("; ");
            for (var i = 0; i < arrCookie.length; i++) {
                var arr = arrCookie[i].split("=");
                if (arr[0] == name) return arr[1];
            }
            return "";
        }
        var strCookie = getCookie("close");
        if (strCookie != "") {
            $("#newright").hide();
        } else {
            $("#newright").css("display", 'block');
        }
    </script>
    <script type="text/javascript">
        $("#newclose").click(function () {
            $("#newright").hide();
            //设置cookie 
            var date = new Date();
            var expiresDays = 1;
            //将date设置为1天以后的时间 
            date.setTime(date.getTime() + expiresDays * 24 * 3600 * 1000);
            //将userId和userName两个cookie设置为1天后过期 
            document.cookie = "close=110; expires=" + date.toGMTString();
            //--> 
            alert(userId);
        });
    </script>
    <div id="account_container" class="clearfix">
        <div id="account_sidebar">
            
            <ul id="actside_ul">
                 
                <li><a class="selected" href="/userinfo.html"><i
                    class="iconfont iconfont-1"></i>我的收益</a></li>
                    <li><a class="" href="/affiliates.html"><i class="iconfont iconfont-credit">
                    </i>联盟推广</a></li>
                <li><a class="" href="/userPay.html">
                    <i class="iconfont iconfont-3"></i>申请提现</a></li>
                <li><a class="" href="/alipay.html"><i class="iconfont iconfont-5">
                </i>支付宝信息</a></li>
            </ul>
        </div>
        <div id="my_main_container" class="rightcontainer clearfix">
            
<div class="myOrder">
    <div class="head clearfix">
            <div class="userCtn pull-left">
                <p>您好，<span class='username'>${user.userCode}</span> <input type="button" class="btn" onclick="changePwd()" value="修改密码"	/></p>
                <p><span>ID：</span>${user.id}</p>
                <p><span>手机号码：</span>${user.userMobile} <c:if test="${user.userMobile==null||user.userMobile=='' }">
                <input type="button" onclick="bind()" class="btn" value="绑定手机号"	/></c:if></p>
                <p><span>QQ 号码：</span>${user.userQq}</p>
                <p><span>邮<span class='mg'></span>箱：</span>${user.userMail}</p>
                <p><span>注册日期：</span>${user.createDate}</p>
            </div>
            <div class="balance pull-right">
                <div class="balanceHead">
                    <img src="assets/main/img/userIcon10.png" />账户余额
                </div>
                <div class="balanceCtn">
                    <p class="jb">
                        <img src="assets/main/img/money.png" />${user.balance}元宝
                    </p>
                    <p>可兑换 = ${user.balanceRMB}元</p>
                    <a href="/userPay.html" class='sqtx'>
                        <img src="assets/main//img/sqtx.png" /></a>
                </div>
            </div>
        </div>
    <div class="userCommon">
            <h4>
                <img src="assets/main/img/userIcon11.png" />收益记录</h4>
            <ul id="myTab" class="nav nav-tabs">
			<li class="active">
				<a href="#one" data-toggle="tab">
					 待返还
				</a>
			</li>
			<li>
				<a href="#two" data-toggle="tab">
					 已返还
				</a>
			</li>
			<li>
				<a href="#three" data-toggle="tab">
					 无返还
				</a>
			</li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="one">
				<div class="panel panel-default" style="padding: 20px">
						<table data-toggle="table"
							data-url="/rebateslist.html?type=1" data-pagination="true"
							data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter" data-align="center">序号</th>
									<th data-field="earnings" data-align="center" data-sortable="true">结算金额</th>
									<th data-field="missionName" data-align="center" data-sortable="true">商品</th>
									<th data-field="typeCn" data-align="center" data-sortable="true">结算说明</th>
									<th data-field="statusCn" data-align="center" data-sortable="true">结算状态</th>
									<th data-field="createDate" data-align="center" data-sortable="true">结算时间</th>
								</tr>
							</thead>
						</table>
					</div>
			</div>
			<div class="tab-pane fade" id="two">
				<div class="panel panel-default" style="padding: 20px">
						<table data-toggle="table"
							data-url="/rebateslist.html?type=2" data-pagination="true"
							data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter" data-align="center">序号</th>
									<th data-field="earnings" data-align="center" data-sortable="true">结算金额</th>
									<th data-field="missionName" data-align="center" data-sortable="true">商品</th>
									<th data-field="typeCn" data-align="center" data-sortable="true">结算说明</th>
									<th data-field="statusCn" data-align="center" data-sortable="true">结算状态</th>
									<th data-field="createDate" data-align="center" data-sortable="true">结算时间</th>
								</tr>
							</thead>
						</table>
					</div>
			</div>
			<div class="tab-pane fade" id="three">
				<div class="panel panel-default" style="padding: 20px">
						<table data-toggle="table"
							data-url="/rebateslist.html?type=3" data-pagination="true"
							data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter" data-align="center">序号</th>
									<th data-field="earnings" data-align="center" data-sortable="true">结算金额</th>
									<th data-field="missionName" data-align="center" data-sortable="true">商品</th>
									<th data-field="typeCn" data-align="center" data-sortable="true">结算说明</th>
									<th data-field="statusCn" data-align="center" data-sortable="true">结算状态</th>
									<th data-field="createDate" data-align="center" data-sortable="true">结算时间</th>
								</tr>
							</thead>
						</table>
					</div>
			</div>
		</div>
            
        </div> 
    </div>
</div>
<input id="userName" type="hidden" value="18072742895" />
<script type="text/javascript">
	function runningFormatter(value, row, index) {
		return index + 1;
	}
</script>

        </div>
    </div>
</div>

        </div>
    </div>
    <div id="footer" class="clearfix">
        <div class="footer-top-outer">
            <div class="footer-inner clearfix">
                <div id="tbfaq" class="footer_help clearfix">
                    <dl class="fo_a">
                        <dt>新手指南</dt>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=fanhuanwenti&href=b1" class="faqtips">什么是购物返还？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=fanhuanwenti&href=b3" class="faqtips">为什么会返还？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=fanhuanwenti&href=b2" class="faqtips">怎样从返还网去购物？</a>
                        </dd>
                    </dl>
                    <dl class="fo_b">
                        <dt>返还问题</dt>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=fanhuanwenti&href=b6" class="faqtips">返还可以用来做什么？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=fanhuanwenti&href=b8" class="faqtips">返还会影响原有的优惠吗？</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=fanhuanwenti&href=b15" class="faqtips">必须购物才有返还吗？</a>
                        </dd>
                    </dl>
                    <dl class="fo_c">
                        <dt>订单问题</dt>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=dingdanwenti&href=c1"
                                class="faqtips">什么是订单跟踪？</a></dd>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=dingdanwenti&href=c2"
                                class="faqtips">跟单不成功怎么办？</a></dd>
                        <dd>
                            <a target="_blank" href="http://www.fanhuan.com/service/?type=dingdanwenti&href=c4"
                                class="faqtips">如何知道订单已经返还了？</a></dd>
                    </dl>
                    <dl class="fo_d online_work_time">
                        <dt>人工服务</dt>
                        <dd class="online_servers on">
                            客服在线：<a class="btn btn-1-30" href="javascript:viod(0);" onclick="ysf.open();return false;"><span>点击开始对话</span></a></dd>
                        <dd class="call_servers on">
                            热线电话：400-0053-000</dd>
                        <dd class="bottom_suggest on">
                            <a target="_blank" href="http://my.fanhuan.com/fankui" class="faqtips">投诉与建议</a></dd>
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
                    <a class="ftips1" target="_blank" href="http://www.fanhuan.com/help/#cctv">CCTV央视专题报道</a>
                    <a class="ftips2" target="_blank" href="http://www.51honest.org/wscredit/detail.credit?action=preLevel&credcode=NO.20000035756&axbFlag=axb">信用之星好评网站</a>
                    <a class="ftips3" href="https://ss.knet.cn/verifyseal.dll?sn=e16040635020063012ex5z000000&amp;ct=df&amp;a=1&amp;pa=0.4608156487811357" id="kx_verify" tabindex="-1" target="_blank" kx_type="图标式" style="display:inline-block;" src="http://rr.knet.cn/static/images/logo/cnnic.png" style="border:none;" oncontextmenu="return false;" alt="可信网站"></a> 
                    <a class="ftips4" target="_blank" href="http://www.315online.com.cn/member/315120006.html">交易保障放心购物</a> 
                    <a class="ftips5" target="_blank" href="http://www.miibeian.gov.cn/">工信备案备案网站</a>
                    <a class="ftips6" href="http://xmwj.gov.cn/ei/Ei!certificate.action?id=40288a8556c64ea30156dab86ec30038" target="_blank" style="border:0;"><img src="http://xmwj.gov.cn/ei/Ei!readEiImgByMemory.action" style="border:0;height:47px"></a>
                </div>
                <p class="footer_link">
                    <span class="copyright">&nbsp;&copy;2008-2016返还网 fanhuan.com</span>
                    <a target="_blank" href="http://www.fanhuan.com/kexinma/" rel="nofollow">关于返还网</a><span>|</span>
                    <a target="_blank" href="http://gou.fanhuan.com">今日好货</a><span>|</span>
                    <a target="_blank" href="http://www.fanhuan.com/joinus.html" rel="nofollow">人才招聘</a><span>|</span>
                    <a target="_blank" href="http://www.fanhuan.com/privacy.html" rel="nofollow">隐私政策</a><span>|</span>
                    <a target="_blank" href="http://www.fanhuan.com/links/" rel="nofollow">友情链接</a><span>|</span>
                    <a target="_blank" href="http://www.fanhuan.com/help/">帮助</a><span>|</span>
                    <a target="_blank" href="http://www.meiyou.com/">美柚</a><span>|</span>
                    <a target="_blank" href="http://www.xixiaoyou.com/">柚子街</a>
                </p>
                <div class="police-icon">
		 		    <a target="_blank" class="police-icon-a" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=35020302000080">
                        <img src="http://www.beian.gov.cn/img/ghs.png" style="float:left;"/><span class="police-icon-span">闽公网安备 35020302000080号</span> 
                    </a>
		 	    </div>
            </div>
        </div>
    </div>
    <div id="forajax" style="display: none"></div>
    
    <script type="text/javascript" src="assets/js/jquerysession.js"></script>
    <script type="text/javascript" src="assets/js/json2.js"></script>
    <script type="text/javascript" src="assets/js/thickbox_v2.js"></script>
    <script type="text/javascript" src="assets/js/base.js"></script>
    <script type="text/javascript" src="assets/js/jquery.base64.min.js"></script>

    <!--[if IE 6]>
         <script type="text/javascript" src="//js.fanhuan.com/common/js/png.js"></script>
         <script type="text/javascript">
            DD_belatedPNG.fix('.download-spread,.bg-cgf,.bg-fan,.ico-qg,.show-sign-one,.show-sign-two,.show-sign-three,.show-sign-four,.show-sign-five,.signwi,.signwi1,.greNewnow,.tenNewnow,.logotaobaofanhuan,#search');
         </script>  
     <![endif]-->

</body>
</html>
<script type="text/javascript">
	function changePwd(){
		location.href= "/newpwd.html";
	}
	
	function bind(){
		location.href= "/userDetail.html";
	}
</script> 