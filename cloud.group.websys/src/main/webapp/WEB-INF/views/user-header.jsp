<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="header">
<div class="container mainWidth">
    <div class="logo pull-left">
        <img src="" alt="" />
    </div>
    <ul class="pull-left clearfix">
        <li><a href="/index.html" target="_blank">首页</a></li>
        <li><a href="/codes.html" target="_blank">打码专区</a></li>
        <li><a href="/newslist.html?page=1&type=1" target="_blank">资讯中心</a></li>        
    </ul>

    <div class="register pull-right">
        
        <a class="dropdown-toggle abtn pull-left" href="/user/UserManage.aspx" style="width:120px">            
            <span class="apostrophe pull-right" style="width:80px;display:block;color:#f5894e"> 您好：${user.userCode}</span>
            <img src="/img/header/head-005.png" alt="" class="pull-right img-circle" style="height: 20px;margin-top:15px" />
        </a>
        <span class="pull-left">|</span>
        <a id="ctl00_ctl09_linkExit" class="dropdown-toggle abtn" href="javascript:__doPostBack(&#39;ctl00$ctl09$linkExit&#39;,&#39;&#39;)" style="margin-top:30px">
            <i class="glyphicon glyphicon-off pull-left" style="margin-top:20px"></i>退出
        </a>
        
    </div>
    <div id="ctl00_ctl09_hiddencode" class="hiddencode" style="display:none">57de586d-b506-4f1f-8313-04c6eea88e77</div>
</div>


        </div>
        <section class='user'>
            <div class="mainWidth container clearfix">
                <div class="aside pull-left">
                    <div class="userCenter">
                        <h3>
                            <img src="assets/main/img/user.png" />个人中心</h3>
                        <p class='zh'><span>ID：</span>${user.id}</p>
                        <p class='zh'><span>账号：</span>${user.userCode}</p>
                        <p>余<span>&nbsp;&nbsp;&nbsp;</span>额：<span class='orange'>
                            ${user.balance}
                            </span>
                            <img src="assets/main/img/money.png" class='money' /></p>
                    </div>

                    <div class="accout">
                        <h4 class='prl20 orange'>
                            <img src="assets/main/img/userIcon3-2.png" class='icon' /><span>账号设置</span></h4>
                        <p><a href="/userinfo.html">个人中心</a></p>
                        <p><a href="/userDetail.html">基本信息</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="assets/main/img/userIcon4-1.png" class='icon' /><span>我的资产</span></h4>
                        <p><a href="/userPay.html">申请提现</a></p>
                        <p><a href="/account_CashDeatil.html">我的账本</a></p>
                        <p><a href="/alipay.html">支付宝信息</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="assets/main/img/userIcon5-1.png" class='icon' /><span>任务体验</span></h4>
                        <p><a href="/user_codes.html">收益记录</a></p>
                    </div>
                </div>
                <div class="userContent pull-left">
                    <script>
                        function accout() {
                            var $accoutBtn = $(".accout p a");
                            $accoutBtn.click(function () {
                                var $parents = $(this).closest(".accout");
                                $parents.find("h4").css({ "color": "#FE6E00", "border-left": "2px solid #FE6C00" });
                                var src = $parents.find("h4 img").each(function () {
                                    var src = $(this).attr("src");
                                    $(this).attr("src", src.replace(/-1/, "-2"));
                                });
                                var $other = $parents.siblings(".accout");
                                $other.find("h4").css({ "color": "#333", "border-left": "2px solid transparent" });
                                $other.each(function () {
                                    $(this).find("h4 img").each(function () {
                                        var src = $(this).attr("src");
                                        $(this).attr("src", src.replace(/-2/, "-1"));
                                    })
                                })
                            })
                        }
                        accout();
                    </script>
