<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common-user.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/main-user.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />    
    <title>

</title>
</head>
<body>
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjA3NTMyOTA3Nw9kFgJmD2QWAgIDD2QWBmYPZBYCAgEPFgIeCWlubmVyaHRtbAUkNTdkZTU4NmQtYjUwNi00ZjFmLTgzMTMtMDRjNmVlYTg4ZTc3ZAIBDw8WAh4EVGV4dAUDMTU0ZGQCAg9kFgICAw9kFgJmD2QWAgIBDxBkZBYBZmRkcxwpGnAyk3aODhOzAdAKEaY6opcbamU38VhwpAAey5w=" />
</div>



<script src="/WebResource.axd?d=bnO43BAny2fLzXDnhC1UZnNdFLj_0m5Kfu2bCJYTtkDAiMwq3BR1rqKp1rscOz9WfP0g9ZRxQPx6LbXn_Qm-P9ZJEo0x6Kxcir4wl4y6OYo1&amp;t=635375563334701695" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=sdFIlEnnsg-hOmZ_gTfQwaqutNwVpvSvA_GLCXpVJjpyPVswf-gFCHzkOHobit3aDYUQ7rKkitEvCidladbVtBllj5NNtawypj51DNMYCdXgE8tf6owd_xHW8uCilMztNOWgvhdiP9m14AMoB_BuwfWUI5ZPG4D1RBcE8v9izaEDCgGoGrMiAhSG7-bCdE2X0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=F8C9ESjZBBEOBSW7epDN0cWSK-MZbbVGIF4IjXlERuKO5ZeOWgNJ524k0L0_jXeTuh4IfoDnL6I2CL_ZaXX6ab0oAHcqO-8iwrz-mHDSx_G8LQLz4DRt70yUPNJf_uhEaBAOrrfJHgn32yoMHuaYeg8DHHqouC-5s99e0nKuAAMYRLVcHrt_pnsp4A0qvXPd0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="837E1E06" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAchHJNOReeR8/qx59iiLT8SU0tG1Q6ILoOZKKWbf3w+hEqHqAVxcZUQLKMACkCf0nDVEsaOJ/2nEX4uKFYA9x1tvGtG7xWzVeSHULOfVCm+fSzmyEfe5udHA06JStoMqUr6G0uw+IsZ/614dwreR7cEZF4R2xdlU03hd2WG+nOhUqehRQE6YbtnQPPdHNRhZn0=" />
</div>        
        <div class="header">
            
<script src="http://static.geetest.com/static/tools/gt.js"></script>
<div class="container mainWidth">
    <div class="logo pull-left">
        <img src="" alt="" />
    </div>
    <ul class="pull-left clearfix">
        <li><a href="/index.html" target="_blank">首页</a></li>
        <li><a href="/codes.html" target="_blank">打码专区</a></li>
        <li><a href="/newslist.html?page=1" target="_blank">资讯中心</a></li>        
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
                            <img src="assets/main/img/userIcon3-2.png" class='icon' /><span>账号设置</span>
                        <p><a href="/userinfo.html">个人中心</a></p>
                        <p><a href="/userDetail.html">基本信息</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="assets/main/img/userIcon4-1.png" class='icon' /><span>我的资产</span>
                        <p><a href="/userPay.html">申请提现</a></p>
                        <p><a href="/account_CashDeatil.html">我的账本</a></p>
                        <p><a href="/alipay.html">支付宝信息</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="assets/main/img/userIcon5-1.png" class='icon' /><span>任务体验</span>
                        <p><a href="/user_codes.html">打码记录</a></p>
                    </div>

                </div>
                <div class="userContent pull-left">
                    <script src="/scripts/sweetalert2.min.js"></script>
                    <!-- for IE support -->
                    <script src="/scripts/es6-promise.min.js"></script>
                    <script src="/scripts/peronalhadler.js?1.0" type="text/javascript"></script>
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
                            
    <div class="alert alert-success">
        <h4 class="text-center">用户须知</h4>
        <hr style="color: #6D6D6D" />
        <p>
            账户修改：设置后不能再修改，如需修改请同客服人员联系QQ:xxxxxx
        </p>
        <p>
            提现说明：提现金额为1元的整数倍，满1元可申请提现,确认<span class="red" style="font-size:18px">48小时</span>内支付玩家
        </p>
        <p>
            官网申明：提现前请确认自己的收款账号无误，我们只支付一次支付后由于收款账号问题造成的资金退回、冻结、消失本站概不负责。
        </p>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default" style="padding: 20px">
                <div class="panel-heading">
                    <span>支付宝信息</span>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">真实姓名</label>
                        <div class="col-sm-10">
                            
                            <span id="ctl00_ContentPlaceHolder1_lbname" class="form-control">${user.realName}</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="account" class="col-sm-2 control-label">支付宝账户</label>
                        <div class="col-sm-10">
                            
                            <span id="ctl00_ContentPlaceHolder1_lbaccount" class="form-control">${user.userAlipay}</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group text-center">
                        <input type="submit" name="ctl00$ContentPlaceHolder1$btnSet" value="确定" id="ctl00_ContentPlaceHolder1_btnSet" disabled="disabled" class="btn btn-md btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </div>

                </div>
            </div>
        </section>
 <%@include file="footer.jsp"%>
</body>
</html>
