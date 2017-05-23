<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
		聚宝师-我的订单
    </title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta property="qc:admins" content="0464336777661605166375" />
	<link rel="icon" href="" type="image/x-icon" charset="utf-8" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="assets/css/index.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/base.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/home.css" />
    <script type="text/javascript" src="assets/js/jquery1.8.3.min.js"></script>
    <link href="/assets/stylesheets/bootstrap/bootstrap-table.min.css" rel="stylesheet">
   <script type="text/javascript" src="assets/js/news.js"></script>
    
<div id="wpop_bg" style="display: none;">
</div>
<link rel="stylesheet" type="text/css" media="screen" href="http://js.fanhuan.com/css/mynew.css?v=20170417" />
<link rel="stylesheet" type="text/css" media="screen" href="http://js.fanhuan.com/css/account.css?v=201604261415" />
<link rel="stylesheet" type="text/css" media="screen" href="http://js.fanhuan.com/css/my_v2.css?v=20160811" />
<link href="http://js.fanhuan.com/css/search_box.css?v=201604282032" rel="Stylesheet"
    type="text/css" />
<script type="text/javascript" src="http://js.fanhuan.com/js/jquery.history.js?v=0104"></script>
<script type="text/javascript">
    $(function () {
        var url = "http://my.fanhuan.com/ajax/GetUserInfo?callback=newmsg";
        if (CurrentUser.UserId) {
            CreateJScript("newmsg", url + "&_=" + Math.random());
        } else {
            CreateJScript("", url);
        }
    });
    function newmsg(data) {
        var unread_msg = data.unread_msg;
        if (unread_msg > 0) {
            $(".newnews").show();
        } else {
            $(".newnews").hide();
        }
    }
</script>
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
    .newright
    {
        background: url(http://i.fanhuan.com/images/my/newright.jpg?v=20150728) no-repeat;
        width: 120px;
        height: 189px;
        position: absolute;
        right: -140px;
        top: 180px;
        display: none;
    }
    .newjiulogospan2
    {
        display: block;
        width: 360px;
        height: 92px;
    }
    .newnews
    {
        background: url(http://i.fanhuan.com/images/my/icon/newnews.png) no-repeat;
        position: absolute;
        right: -2px;
        top: 5px;
        width: 30px;
        height: 14px;
        display: none;
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
        height: 53px;
        background: url("http://i.fanhuan.com/images/baseimages/logo_www2.png?v=2016041822") no-repeat;
        position: absolute;
        top: 19px;
        display: block;
    }
</style>
<script type="text/javascript">
    var IsNewUser = true; //是否新用户，即2013.5.2号后注册的用户。
</script>

    <script type="text/javascript">
        var _hmt = _hmt || []; var _gaq = _gaq || [];
        var _paq = _paq || [];
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
    
    <script type="text/javascript">
        FH.signIn.init();
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
            
<div class="iphonebg">
</div>
<div id="myaccount">
    <!--广告位开始-->
    <!--广告位结束-->
    
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
        //阻止弹窗事件
        function stop() {
            return false;
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
                 
                <li><a class="selected" href="/my/AllOrder_V3"><i
                    class="iconfont iconfont-1"></i>我的订单</a></li>
                    <li><a class="" href="/my/Credit"><i class="iconfont iconfont-credit">
                    </i>信用等级</a></li>
                <li><a class="" href="/my/MallMoneyDetail">
                    <i class="iconfont iconfont-3"></i>收支明细</a></li>
                <li><a class="" href="/my/safe"><i class="iconfont iconfont-5">
                </i>安全中心</a></li>
                
                <li><a class="" href="/my/mail"><i class="iconfont iconfont-6">
                </i>我的消息 </a><span class="newnews"></span></li>
                
            </ul>
        </div>
        <script type="text/javascript">
            function NewCreateJScript(id, url) {
                if (document.getElementById(id) != null) {
                    var children = document.getElementById(id);
                    if (children != null) {
                        var parent = children.parentNode;
                        parent.removeChild(children);
                        children = null;
                    }
                }
                var s = document.createElement("script");
                s.setAttribute("src", url);
                s.setAttribute("id", id);
                s.setAttribute("type", "text/javascript");
                document.getElementsByTagName("head")[0].appendChild(s);
                s = null;
            }
            if ('false' == "false" && CurrentUser.UserId) {
                NewCreateJScript("IsApplyTBCoupon", "http://quan.fanhuan.com/ajax/IsAddTBCoupon?callback=IsApplyTBCoupon&userid=" + CurrentUser.UserId + "&d=" + new Date().getMilliseconds());
            }
            function IsApplyTBCoupon(data) {
                var json = eval(data);
                if (json.isApply == 1) {
                    $('#actside_ul').prepend('<li><a class="" href="/my/sellerapply"><i class="iconfont">&#xe60b;</i>卖家中心</a></li>');
                }
            }
        </script>
        <div id="my_main_container" class="rightcontainer clearfix">
            
<div class="myOrder">
    <div class="account clearfix">
        <div class="a-asset">
            <div>
                账户资金<span class="a-asset-total"><span>￥</span>0.00</span><span
                    class="a-asset-freeze">+0.00</span>未返还</div>
            <a class="btn btn-1-40" href="/my/cash"><span>提现</span></a> 
            <a class="charge-btn">充话费</a>
        </div>
        <div class="a-asset-right">
            <div class="item">
                <div>
                    0.00</div>
                <div class="bottom">
                    淘宝返还<span class="show-title" name="v">[?]</span></div>
            </div>
            <div class="item">
                <div>
                    0.00</div>
                <div class="bottom">
                    商城返还<span class="show-title" name="sc">[?]</span></div>
            </div>
            <div class="item">
                <div>
                    0</div>
                <div class="bottom">
                    积分</div>
            </div>
            <div class="item">
                <div>
                    0.00</div>
                <div class="bottom">
                    累计省钱</div>
            </div>
        </div>
    </div>
    <div class="myOrder-nav clearfix">
        <ul>
            <li class="active" ><a href="/my/AllOrder_V3">全部订单</a></li>
            <li ><a href="/my/AllOrder_V3?s=1">已返还</a></li>
            <li ><a href="/my/AllOrder_V3?s=0">未返还</a></li>
            <li ><a href="/my/AllOrder_V3?s=2">无返还</a></li>
            
        </ul>
        <span class="notice-drop" id="J_slideDoit">下单了，却没看到记录？<i></i></span>
    </div>
    <div class="notice-txt">
        <h3>
            淘宝/天猫订单</h3>
        <p>
            在淘宝点击“确认收货”后，10分钟内可在本页看到记录。<a href="http://my.fanhuan.com/my/CompensationExplain">丢单了？申请赔付。</a></p>
        <h3>
            京东、唯品会等商城订单</h3>
        <p>
            下单后30分钟内可在本页看到记录（亚马逊订单需在第二天上午11点后才可看到）。</p>
    </div>
    <div class="myOrder-list">
        <div class="list-body">
                <div class="sz-nodate">
                        <span class="sz-nodate-1" style="font-family: 'Microsoft YaHei'">您还没有订单记录哦，快来用返还网省钱吧！<a
                            class="btn btn-1-40" href="http://www.fanhuan.com"><span>去购物,拿返还&gt;</span></a></span>
                </div>
        </div>
    </div>
    <div class="pagination" id="pagination">
    </div>
</div>
<input id="userName" type="hidden" value="18072742895" />
<script type="text/javascript" src="http://js.fanhuan.com/js/my/my_v2.js?v=20161108"></script>
<script type="text/javascript" src="http://js.fanhuan.com/js/paging.js?v=0513"></script>
<script type="text/javascript">
    var timestamp='20170523105905';
    var sign='7ed2cf29295b0e8fc6facd3fc530629f';
    var _page = Math.ceil(0 / 10);
    var _pg = new showPages('_pg', _page, "n");
    _pg.printHtml("pagination");
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
    
    <script type="text/javascript" src="//js.fanhuan.com/common/js/json2.js?v=2016042118"></script>
    <script type="text/javascript" src="//www.fanhuan.com/content/js/mall.js?v=20170522093819"></script>
    <script type="text/javascript" src="//js.fanhuan.com/js/thickbox_v2.js?v=2016081614"></script>
    <script type="text/javascript" src="//js.fanhuan.com/js/base.js?v=20170509"></script>
    <script type="text/javascript" src="http://js.fanhuan.com/taobao/js/jquery.base64.min.js?v=2016042118"></script>
    
<script type="text/javascript" src="http://js.fanhuan.com/js/my/my.js?v=20160420123"></script>
<script type="text/javascript" src="//js.fanhuan.com/js/thickbox.js?v=2016080514"></script>
<script type="text/javascript">

    $("#topintro").html(CurrentUser.UserName);

    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Ffa7facebe4b0e30fceffd5c55b20bd50' type='text/javascript'%3E%3C/script%3E"));
</script>

    <!--[if IE 6]>
         <script type="text/javascript" src="//js.fanhuan.com/common/js/png.js"></script>
         <script type="text/javascript">
            DD_belatedPNG.fix('.download-spread,.bg-cgf,.bg-fan,.ico-qg,.show-sign-one,.show-sign-two,.show-sign-three,.show-sign-four,.show-sign-five,.signwi,.signwi1,.greNewnow,.tenNewnow,.logotaobaofanhuan,#search');
         </script>  
     <![endif]-->
    <script class="tongji" type="text/javascript">       
        UrlTj("");
        var unneedtj = ["/my", "/ajax", "/login"];var tj = true;for (var i = 0; i < unneedtj.length; i++) { if (_path.toLowerCase().indexOf(unneedtj[i]) == 0) { tj = false; break; } }
        if (tj) { var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F29a7ebc4f6a8c90821d8b062a0bf830e' type='text/javascript'%3E%3C/script%3E")); }
    </script>
    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//js.fanhuan.com/js/analytics.js', 'ga');
        ga('create', 'UA-1068666-2', 'auto');
        ga('send', 'pageview');
        //var fp4 = new Fingerprint({ screen_resolution: true });
    </script>

    <script type="text/javascript">
        var _paq = _paq || [];
        _paq.push(["setCookieDomain", "*.fanhuan.com"]);
        _paq.push(["setDomains", "*.fanhuan.com"]);
        _paq.push(["setCampaignNameKey", "utm_source"]);
        _paq.push(["setCampaignKeywordKey", "utm_term"]);
        _paq.push(["setAppId","3"]);
        _paq.push(["setUserId",CurrentUser.UserId != undefined ? CurrentUser.UserId : ""]);
        _paq.push(["setCustomVariable", 1, 'clientID', fp4.get(), 'page']);  //fp4.get()
        _paq.push(['trackPageView']);

        (function () {
            var u = "//stat.upin.com/";
            _paq.push(['setTrackerUrl', u + 'track']);
            _paq.push(['setSiteId', 'www.fanhuan.com']);
            var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
            g.type = 'text/javascript'; g.async = true; g.defer = true; g.src = '//js.fanhuan.com/common/js/piwik.min.js?v=20170502'; s.parentNode.insertBefore(g, s);
        })();
    </script>

    <script type="text/javascript">
        $("#nav_notice").mouseover(function () {
            if (location.hostname == "taobao.fanhuan.com" || location.hostname == "pinpai.fanhuan.com") {
                $("#nav_notice").css({ 'z-index': '301' });
            } else {
                $("#nav_notice").css({ 'z-index': '20' });
            }
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
        _BFD.client_id = "Cfanhuan";
        _BFD.BFD_USER = {
            "user_id": CurrentUser.UserId != undefined ? CurrentUser.UserId : "", //网站当前用户id，如果未登录就为0或空字符串
            "user_cookie": $.cookie("cookie_clientid")
        };
        _BFD.script = document.createElement("script");
        _BFD.script.type = "text/javascript";
        _BFD.script.async = true;
        _BFD.script.charset = "utf-8";
        _BFD.script.src = (('https:' == document.location.protocol ? 'https://ssl-static1' : 'http://static1') + '.bfdcdn.com/service/fanhuan/fanhuan.js');
        document.getElementsByTagName("head")[0].appendChild(_BFD.script);
    </script>

    <script src="https://qiyukf.com/script/310c8bbae562b0f3146f0e9de9211bdb.js" defer async></script>
    <script>
        if (CurrentUser.UserId) {
            $.getJSON("http://my.fanhuan.com/simple/GetUserCompensation?callback=?", function (data) {
                if (data.rt == 1) {
                    ysf.config({
                        uid: data.UserId,
                        name: data.UserName,
                        email: data.Email,
                        mobile: data.Mobile,
                        data: JSON.stringify([
                        { "index": 0, "key": "IsCash", "label": "提现中", "value": (data.IsCash == 1 ? "是" : "否") },
                        { "index": 1, "key": "IsExistOrderCompensation", "label": "未处理订单", "value": (data.IsExistOrderCompensation == 1 ? "是" : "否") }
                    ])
                    });
                }
            });
        }
    </script>
</body>
</html>
<script type="text/javascript">
    ga('create', 'UA-1068666-14', 'auto', { 'name': 'v2' });
    ga('v2.send', 'pageview');
</script>
<!--[if IE 6]>
        <script type="text/javascript" src="http://js.fanhuan.com/common/js/png.js"></script>
        <script type="text/javascript">
            DD_belatedPNG.fix('.iconfont-1,.newnews');
        </script>  
<![endif]-->
<script type="text/javascript">
    window["_BFD"] = window["_BFD"] || {};
    _BFD.BFD_INFO = {
        "user_id": CurrentUser.UserId != undefined ? CurrentUser.UserId : "",  //网站当前用户id，如果未登录就为0或空字符串
        "page_type": "my" //当前页面全称，请勿修改
    };
</script>
<script>
    $("#redPacket").on("click", function () {
        var that = this;
        var id = $("#maxId").val();
        if (id !== "") {
            $.ajax({
                type: "GET",
                url: "/ajax/UpLoadMaxId?id=" + id,
                cache: false,
                success: function (data) {
                    $("#redPacketNum").remove();
                    location.href = $(that).attr("href");
                }, error: function () {
                    
                }
            })

            return false;
        }
    })
    
</script>
