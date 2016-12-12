<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><link href="../plugins/bootstrap-3.3.6/css/bootstrap.min.css" type="text/css" rel="stylesheet" /><link href="../plugins/DataTables/css/dataTables.bootstrap.min.css" type="text/css" rel="stylesheet" /><link href="/css/main.css" type="text/css" rel="stylesheet" /><link href="/css/common.css" type="text/css" rel="stylesheet" /><link href="/css/user/user.css" type="text/css" rel="stylesheet" />    
    <script src="/plugins/jQuery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/plugins/respond.min.js"></script>
    <script src="/plugins/html5shiv.min.js"></script>
    <title>

</title>
</head>
<body>
    <form name="aspnetForm" method="post" action="UserBasicDetail.aspx" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjM1MjQwODAyD2QWAmYPZBYCAgMPZBYGZg9kFgICAQ8WAh4JaW5uZXJodG1sBSRhM2NlOGE3Mi0yMmM3LTRjNWMtODNhNS0wZGE2YjFkMTQzMmRkAgEPDxYCHgRUZXh0BQMxNTVkZAICD2QWCgIBDw8WAh8BBQl3dWZlbmcwMDFkZAICDw8WAh8BBQl3dWZlbmcwMDFkZAIHDw8WAh8BBRAyMDE2LTEyLTExIDA0OjIzZGQCCw9kFgJmD2QWAgIBDxYCHgtfIUl0ZW1Db3VudAIrFlZmD2QWAmYPFQIXL2ltZy9oZWFkZXIvYXZhdGFyMS5wbmcBMWQCAQ9kFgJmDxUCFy9pbWcvaGVhZGVyL2F2YXRhcjIucG5nATJkAgIPZBYCZg8VAhcvaW1nL2hlYWRlci9hdmF0YXIzLmpwZwEzZAIDD2QWAmYPFQISL2ltZy9oZWFkZXIvMjUuanBnATRkAgQPZBYCZg8VAhIvaW1nL2hlYWRlci8yMS5qcGcBNWQCBQ9kFgJmDxUCEi9pbWcvaGVhZGVyLzIyLmpwZwE2ZAIGD2QWAmYPFQISL2ltZy9oZWFkZXIvMTEuanBnATdkAgcPZBYCZg8VAhIvaW1nL2hlYWRlci8xNy5qcGcBOGQCCA9kFgJmDxUCEi9pbWcvaGVhZGVyLzIzLmpwZwE5ZAIJD2QWAmYPFQISL2ltZy9oZWFkZXIvMjQuanBnAjEwZAIKD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDEucG5nAjExZAILD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDIucG5nAjEyZAIMD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDMucG5nAjEzZAIND2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDQucG5nAjE0ZAIOD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDUucG5nAjE1ZAIPD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDYucG5nAjE2ZAIQD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDcucG5nAjE3ZAIRD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDgucG5nAjE4ZAISD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDkucG5nAjE5ZAITD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTAucG5nAjIwZAIUD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTEucG5nAjIxZAIVD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTIucG5nAjIyZAIWD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTMucG5nAjIzZAIXD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTQucG5nAjI0ZAIYD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTUucG5nAjI1ZAIZD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTYucG5nAjI2ZAIaD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTcucG5nAjI3ZAIbD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTgucG5nAjI4ZAIcD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTkucG5nAjI5ZAIdD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjAucG5nAjMwZAIeD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjEucG5nAjMxZAIfD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjIucG5nAjMyZAIgD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjMucG5nAjMzZAIhD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjQucG5nAjM0ZAIiD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjUucG5nAjM1ZAIjD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjYucG5nAjM2ZAIkD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjcucG5nAjM3ZAIlD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjgucG5nAjM4ZAImD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjkucG5nAjM5ZAInD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzAucG5nAjQwZAIoD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzEucG5nAjQxZAIpD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzIucG5nAjQyZAIqD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzMucG5nAjQzZAIPDxYCHgdWaXNpYmxlaGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFJGN0bDAwJENvbnRlbnRQbGFjZUhvbGRlcjEkY2hlY2tlbWFpbPpRBnKtuiDVWgEx8T4BLFLn89sOdUHnBbUIDA1kq9B9" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=bnO43BAny2fLzXDnhC1UZnNdFLj_0m5Kfu2bCJYTtkDAiMwq3BR1rqKp1rscOz9WfP0g9ZRxQPx6LbXn_Qm-P9ZJEo0x6Kxcir4wl4y6OYo1&amp;t=635375563334701695" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=sdFIlEnnsg-hOmZ_gTfQwaqutNwVpvSvA_GLCXpVJjpyPVswf-gFCHzkOHobit3aDYUQ7rKkitEvCidladbVtBllj5NNtawypj51DNMYCdXgE8tf6owd_xHW8uCilMztNOWgvhdiP9m14AMoB_BuwfWUI5ZPG4D1RBcE8v9izaEDCgGoGrMiAhSG7-bCdE2X0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=F8C9ESjZBBEOBSW7epDN0cWSK-MZbbVGIF4IjXlERuKO5ZeOWgNJ524k0L0_jXeTuh4IfoDnL6I2CL_ZaXX6ab0oAHcqO-8iwrz-mHDSx_G8LQLz4DRt70yUPNJf_uhEaBAOrrfJHgn32yoMHuaYeg8DHHqouC-5s99e0nKuAAMYRLVcHrt_pnsp4A0qvXPd0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1FF50F64" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAA1rmZpdSAmDEWM535zbxaDtU0tG1Q6ILoOZKKWbf3w+hMS63KnrtlYkNQ4bgfHZcSedOroKRyvCR56LFD3Kpl8LzL343bVOIk85yjuEIVxFQBp33ayz7pzV7KfF82ugVEf58ZFpJcGF8jiMqRXA83qpr/+HRgUHSJTiasfn6u4bBPJBnwOoA8DFcPPJ4zMJToNMXqq7ThBRSWtboXHh7WK2vaAitb9hqGe0R0+v/kezzeDawqsR5uU3KskavvVFiIKeu9hwE+wpOfJCGOb5m+VWKxSeRoLuTxPuQWjuuAIdfODV69HnMB22bEB8uQERLL0=" />
</div>        
        <div class="header">
            
<script src="/scripts/common.js"></script>
<script src="http://static.geetest.com/static/tools/gt.js"></script>
<div class="container mainWidth">
    <div class="logo pull-left">
        <img src=/img/logo1.png alt="" />
    </div>
    <ul class="pull-left clearfix">
        <li><a href="/Index.aspx" target="_blank">首页</a></li>
        <li><a href="/GameMainContent.aspx" target="_blank">开心游戏</a></li>
        <li><a href="/CardMainContent.aspx" target="_blank">疯狂棋牌</a></li>        
        <li><a href="/FinacialMainContent.aspx" target="_blank">广告体验</a></li>
        <li><a href="/Recreation/Bet28MainPage.aspx" target="_blank">娱乐竞猜</a></li>
        <li><a href="/CaptchaMainContent.aspx" target="_blank">打字专区</a></li>
    </ul>

    <div class="register pull-right">
        
        <a class="dropdown-toggle abtn pull-left" href="/user/UserManage.aspx" style="width:120px">            
            <span class="apostrophe pull-right" style="width:80px;display:block;color:#f5894e"> 您好：wufeng001</span>
            <img src="/img/header/head-005.png" alt="" class="pull-right img-circle" style="height: 20px;margin-top:15px" />
        </a>
        <span class="pull-left">|</span>
        <a id="ctl00_ctl09_linkExit" class="dropdown-toggle abtn" href="javascript:__doPostBack(&#39;ctl00$ctl09$linkExit&#39;,&#39;&#39;)" style="margin-top:30px">
            <i class="glyphicon glyphicon-off pull-left" style="margin-top:20px"></i>退出
        </a>
        
    </div>
    <div id="ctl00_ctl09_hiddencode" class="hiddencode" style="display:none">a3ce8a72-22c7-4c5c-83a5-0da6b1d1432d</div>
</div>


        </div>
        <section class='user'>
            <div class="mainWidth container clearfix">
                <div class="aside pull-left">
                    <div class="userCenter">
                        <h3>
                            <img src="/img/user.png" />个人中心</h3>
                        <p class='zh'><span>ID：</span>82690</p>
                        <p class='zh'><span>账号：</span>wufeng001</p>
                        <p>聚<span>&nbsp;&nbsp;</span>币：<span class='orange'>
                            0
                            </span>
                            <img src="/img/userIcon8.png" class='money' /></p>
                        <p>聚<span>&nbsp;&nbsp;</span>豆：<span class='orange'>
                            0
                            </span>
                            <img src="/img/jd.png" class='money' />
                        </p>
                        <p>
                            消<span>&nbsp;&nbsp;&nbsp;</span>息：
                                <a href="/user/UserMessageInfo.aspx">
                                    <span class='orange'>
                                        <span id="ctl00_lbNoticeCount">155</span>
                                    </span>
                                </a>
                            <img src="/img/userIcon7.png" class='gb' />
                        </p>
                    </div>

                    <div class="accout">
                        <h4 class='prl20 orange'>
                            <img src="/img/userIcon3-2.png" class='icon' /><span>账号设置</span>
                            <img src="/img/userIcon2-2.png" class='next' /></h4>
                        <p><a href="/user/UserManage.aspx">个人中心</a></p>
                        <p><a href="/user/UserBasicDetail.aspx">基本信息</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="/img/userIcon4-1.png" class='icon' /><span>我的资产</span>
                            <img src="/img/userIcon2-1.png" class='next' /></h4>
                        <p><a href="/user/Account_AskCash.aspx">申请提现</a></p>
                        <p><a href="/user/Account_CashDeatil.aspx">我的账本</a></p>
                        <p><a href="/user/Account_ZhiFuBao.aspx">支付宝信息</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="/img/userIcon5-1.png" class='icon' /><span>任务体验</span>
                            <img src="/img/userIcon2-1.png" class='next' /></h4>
                        <p><a href="/user/Experience_Finacial.aspx">理财风险</a></p>
                        <p><a href="/user/FinacialPayInfo.aspx">风险奖励</a></p>
                        <p><a href="/user/Experience_Game.aspx">游戏体验</a></p>
                        <p><a href="/user/Experience_RewardRecord.aspx">奖励记录</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="/img/userIcon6-1.png" class='icon' /><span>好友管理</span>
                            <img src="/img/userIcon2-1.png" class='next' /></h4>
                        <p><a href="/user/FriendManage.aspx">我的好友</a></p>
                        <p><a href="/user/FriendRewardManage.aspx">好友收益</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="/img/userIcon7-1.png" class='icon' /><span>商品管理</span>
                            <img src="/img/userIcon2-1.png" class='next' /></h4>
                        <p><a href="/user/Acccount_BeansDetail.aspx">聚豆管理</a></p>
                        <p><a href="/user/MyExchangeGoods.aspx">兑换商品</a></p>
                        <p><a href="/user/userFreeca.aspx">兑换福利卡</a></p>
                    </div>

                </div>
                <div class="userContent pull-left">
                    <script src="/plugins/bootstrap-3.3.6/js/bootstrap.min.js"></script>
                    <script src="/plugins/DataTables/js/jquery.dataTables.min.js"></script>
                    <script src="/plugins/DataTables/js/dataTables.bootstrap.min.js"></script>
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
                       
    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ScriptManager1', 'aspnetForm', ['tctl00$ContentPlaceHolder1$UpdatePanel2','','tctl00$ContentPlaceHolder1$UpdatePanel3','','tctl00$ContentPlaceHolder1$updatepanel1',''], ['ctl00$ContentPlaceHolder1$rpmail',''], [], 90, 'ctl00');
//]]>
</script>

    <div class="panel panel-default" style="padding: 20px">
        <div class="panel-heading">
            <span>基本信息</span>
        </div>
        <div class="panel-body">
            <ul class="nav nav-tabs" id="myTab">
                <li class="active"><a href="#edit-basic" data-toggle="tab">基本信息</a></li>
                <li class=""><a href="#edit-password" data-toggle="tab">密码修改</a></li>
            </ul>
            <div class="tab-content profile-edit-tab-content editMail">
                <div id="edit-basic" class="tab-pane active">
                    <div class="form-group">
                        <label for="inputusername" class="col-sm-2 control-label">登录账户</label>
                        <div class="col-sm-10">
                            <span id="ctl00_ContentPlaceHolder1_loginname" class="form-control">wufeng001</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="inputusername" class="col-sm-2 control-label">用户昵称</label>
                        <div class="col-sm-10">
                            <span id="ctl00_ContentPlaceHolder1_txtusername" class="form-control">wufeng001</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="phone" class="col-sm-2 control-label">手机号码</label>
                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtphone" type="text" value="18072742895" id="ctl00_ContentPlaceHolder1_txtphone" class="form-control" placeholder="请输入手机号码" />
                        </div>
                    </div>
                    <div id="ctl00_ContentPlaceHolder1_divVerify">
                        <div class="space-4"></div>
                        <div class="form-group">
                            <label id="ctl00_ContentPlaceHolder1_lbverify" class="col-sm-2 control-label">短信验证码</label>
                            <div class="col-sm-6">
                                <input name="ctl00$ContentPlaceHolder1$txtphoneverify" type="text" id="ctl00_ContentPlaceHolder1_txtphoneverify" class="form-control" />
                            </div>
                            <div class="col-sm-4" style="padding-right: 0px; padding-left: 0px">
                                <input type="button" id="getting" value="发送验证码" class="btn btn-info" />
                            </div>
                        </div>
                    </div>                    
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="inputdate" class="col-sm-2 control-label">QQ号码</label>
                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtqqinfo" type="text" id="ctl00_ContentPlaceHolder1_txtqqinfo" class="form-control" />
                        </div>
                    </div>                    
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="inputmail" class="col-sm-2 control-label">邮件</label>
                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtmail" type="text" value="1498732845@qq.com" id="ctl00_ContentPlaceHolder1_txtmail" class="form-control" />
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="inputdate" class="col-sm-2 control-label">注册日期</label>
                        <div class="col-sm-10">
                            <span id="ctl00_ContentPlaceHolder1_regdate" class="form-control">2016-12-11 04:23</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="phone" class="col-sm-2 control-label">邮件通知</label>
                        <div class="col-sm-10 control-label" style="text-align: left">
                            <input name="ctl00$ContentPlaceHolder1$checkemail" type="checkbox" id="ctl00_ContentPlaceHolder1_checkemail" />
                            <span>自动接收</span>
                        </div>
                    </div>
                </div>
                <div id="edit-password" class="tab-pane">
                    <div class="form-group">
                        <label for="txtoldpsd1" class="col-sm-2 control-label">原密码</label>
                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtoldpsd1" type="password" id="ctl00_ContentPlaceHolder1_txtoldpsd1" class="form-control" />
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="txtnewpsd1" class="col-sm-2 control-label">新密码</label>

                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtnewpsd1" type="password" id="ctl00_ContentPlaceHolder1_txtnewpsd1" class="form-control" />
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="txtnewpsd2" class="col-sm-2 control-label">确认密码</label>
                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtnewpsd2" type="password" id="ctl00_ContentPlaceHolder1_txtnewpsd2" class="form-control" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 text-center">
                    
                </div>
            </div>
            <div class="row" style="margin-top: 10px">
                <div class="col-md-12 text-center">
                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnUserInfoSave" value="保存" id="ctl00_ContentPlaceHolder1_btnUserInfoSave" class="btn btn-primary text-center" />
                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hidnowtabs" id="ctl00_ContentPlaceHolder1_hidnowtabs" value="1" />
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/plugins/jquery.cookie.js"></script>
    <script type="text/javascript" src="/scripts/GlobalProvinces_main.js"></script>
    <script type="text/javascript" src="/scripts/GlobalProvinces_extend.js"></script>
    <script type="text/javascript" src="/scripts/initLocation.js"></script>
    <script type="text/javascript">
        var check = true;
        $(function () {

            function init() {
                var index = $.getUrlParam('type');
                if (!index) index = $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val() - 1;
                $('#myTab a:eq(' + index + ')').tab('show');
                if (index == 1) {
                    $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').hide();
                    $('#' + 'ctl00_ContentPlaceHolder1_divalert').hide();
                }
            }
            init();

            function checkphone()
            {
                var phone = $('#ctl00_ContentPlaceHolder1_txtphone');
                var lbphone = phone.parent();
                lbphone.children('span').remove();
                if (phone != null && phone.val().length > 0) {
                    var reg = /^[1][0-9]{10}$/;
                    isok = reg.test(phone.val());
                    if (!isok) {
                        $("<span class=\"label label-warning\">请填写正确的手机格式！</span>").appendTo(lbphone);
                        check = false;
                        return false;
                    }
                    else return true;
                }
            }


            $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
                if ($(e.target).attr("href") == "#edit-setting") {
                    $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').hide(); $('#' + 'ctl00_ContentPlaceHolder1_divalert').hide();
                }
                else {
                    $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').show(); $('#' + 'ctl00_ContentPlaceHolder1_divalert').show();
                }
            });


            $('#ctl00_ContentPlaceHolder1_txtphone').blur(function () {
                return checkphone();
            });


            $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').bind("click", function () {

                if ($("#edit-basic").hasClass("active")) {
                    if (!check) return false;                  
                    $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val(1);
                }
                else if ($("#edit-mail").hasClass("active")) {
                    $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val(4);
                }
                else if ($("#edit-setting").hasClass("active")) {
                    alert("修改成功！");
                    $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val(2);
                        return false;
                    }
                    else if ($("#edit-password").hasClass("active")) {
                        $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val(3);
                }
                return true;
            });

            /*点击改变按钮状态*/
            $('#getting').click(function () {
                /*防刷新：检测是否存在cookie*/
                var isright=checkphone();
                if (isright) {
                    if ($.cookie("captcha")) {
                        var count = $.cookie("captcha");
                        var btn = $('#getting');
                        btn.val(count + '秒后可重新获取').attr('disabled', true).css('cursor', 'not-allowed');
                        var resend = setInterval(function () {
                            count--;
                            if (count > 0) {
                                btn.val(count + '秒后可重新获取').attr('disabled', true).css('cursor', 'not-allowed');
                                $.cookie("captcha", count, { path: '/', expires: (1 / 86400) * count });
                            } else {
                                clearInterval(resend);
                                btn.val("获取验证码").removeClass('disabled').removeAttr('disabled style');
                            }
                        }, 1000);
                    }
                    $.ajax({
                        url: "/user/UserBasicDetail.aspx/GetVerify",
                        type: "post",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify({ 'phone': $('#ctl00_ContentPlaceHolder1_txtphone').val() }),
                        success: function (data) {
                            alert(data.d);
                        },
                        error: function (data) {
                            alert("出错");
                        }
                    });
                    var btn = $(this);
                    var count = 60;
                    var resend = setInterval(function () {
                        count--;
                        if (count > 0) {
                            btn.val(count + "秒后可重新获取");
                            $.cookie("captcha", count, { path: '/', expires: (1 / 86400) * count });
                        } else {
                            clearInterval(resend);
                            btn.val("获取验证码").removeAttr('disabled style');
                        }
                    }, 1000);
                    btn.attr('disabled', true).css('cursor', 'not-allowed');
                }
            });
        })

        $('#getting1').click(function () {
            /*防刷新：检测是否存在cookie*/          
                if ($.cookie("captcha")) {
                    var count = $.cookie("captcha");
                    var btn = $('#getting1');
                    btn.val(count + '秒后可重新获取').attr('disabled', true).css('cursor', 'not-allowed');
                    var resend = setInterval(function () {
                        count--;
                        if (count > 0) {
                            btn.val(count + '秒后可重新获取').attr('disabled', true).css('cursor', 'not-allowed');
                            $.cookie("captcha", count, { path: '/', expires: (1 / 86400) * count });
                        } else {
                            clearInterval(resend);
                            btn.val("获取验证码").removeClass('disabled').removeAttr('disabled style');
                        }
                    }, 1000);
                }
                $.ajax({
                    url: "/user/UserBasicDetail.aspx/GetVerify1",
                    type: "post",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify({ 'phone': $('#ctl00_ContentPlaceHolder1_txt_phone').val() }),
                        success: function (data) {
                            alert(data.d);
                        },
                        error: function (data) {
                            alert("出错");
                        }
                    });
                    var btn = $(this);
                    var count = 60;
                    var resend = setInterval(function () {
                        count--;
                        if (count > 0) {
                            btn.val(count + "秒后可重新获取");
                            $.cookie("captcha", count, { path: '/', expires: (1 / 86400) * count });
                        } else {
                            clearInterval(resend);
                            btn.val("获取验证码").removeAttr('disabled style');
                        }
                    }, 1000);
                    btn.attr('disabled', true).css('cursor', 'not-allowed');
                
         })
         

    </script>

                </div>
            </div>
        </section>
        
<%@include file="footer.jsp"%>
</body>
</html>
