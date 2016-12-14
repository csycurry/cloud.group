<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>

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
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjM1MjQwODAyD2QWAmYPZBYCAgMPZBYGZg9kFgICAQ8WAh4JaW5uZXJodG1sBSRhM2NlOGE3Mi0yMmM3LTRjNWMtODNhNS0wZGE2YjFkMTQzMmRkAgEPDxYCHgRUZXh0BQMxNTVkZAICD2QWCgIBDw8WAh8BBQl3dWZlbmcwMDFkZAICDw8WAh8BBQl3dWZlbmcwMDFkZAIHDw8WAh8BBRAyMDE2LTEyLTExIDA0OjIzZGQCCw9kFgJmD2QWAgIBDxYCHgtfIUl0ZW1Db3VudAIrFlZmD2QWAmYPFQIXL2ltZy9oZWFkZXIvYXZhdGFyMS5wbmcBMWQCAQ9kFgJmDxUCFy9pbWcvaGVhZGVyL2F2YXRhcjIucG5nATJkAgIPZBYCZg8VAhcvaW1nL2hlYWRlci9hdmF0YXIzLmpwZwEzZAIDD2QWAmYPFQISL2ltZy9oZWFkZXIvMjUuanBnATRkAgQPZBYCZg8VAhIvaW1nL2hlYWRlci8yMS5qcGcBNWQCBQ9kFgJmDxUCEi9pbWcvaGVhZGVyLzIyLmpwZwE2ZAIGD2QWAmYPFQISL2ltZy9oZWFkZXIvMTEuanBnATdkAgcPZBYCZg8VAhIvaW1nL2hlYWRlci8xNy5qcGcBOGQCCA9kFgJmDxUCEi9pbWcvaGVhZGVyLzIzLmpwZwE5ZAIJD2QWAmYPFQISL2ltZy9oZWFkZXIvMjQuanBnAjEwZAIKD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDEucG5nAjExZAILD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDIucG5nAjEyZAIMD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDMucG5nAjEzZAIND2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDQucG5nAjE0ZAIOD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDUucG5nAjE1ZAIPD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDYucG5nAjE2ZAIQD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDcucG5nAjE3ZAIRD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDgucG5nAjE4ZAISD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMDkucG5nAjE5ZAITD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTAucG5nAjIwZAIUD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTEucG5nAjIxZAIVD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTIucG5nAjIyZAIWD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTMucG5nAjIzZAIXD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTQucG5nAjI0ZAIYD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTUucG5nAjI1ZAIZD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTYucG5nAjI2ZAIaD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTcucG5nAjI3ZAIbD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTgucG5nAjI4ZAIcD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMTkucG5nAjI5ZAIdD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjAucG5nAjMwZAIeD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjEucG5nAjMxZAIfD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjIucG5nAjMyZAIgD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjMucG5nAjMzZAIhD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjQucG5nAjM0ZAIiD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjUucG5nAjM1ZAIjD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjYucG5nAjM2ZAIkD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjcucG5nAjM3ZAIlD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjgucG5nAjM4ZAImD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMjkucG5nAjM5ZAInD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzAucG5nAjQwZAIoD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzEucG5nAjQxZAIpD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzIucG5nAjQyZAIqD2QWAmYPFQIYL2ltZy9oZWFkZXIvaGVhZC0wMzMucG5nAjQzZAIPDxYCHgdWaXNpYmxlaGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFJGN0bDAwJENvbnRlbnRQbGFjZUhvbGRlcjEkY2hlY2tlbWFpbPpRBnKtuiDVWgEx8T4BLFLn89sOdUHnBbUIDA1kq9B9" />
</div>


<script src="/WebResource.axd?d=bnO43BAny2fLzXDnhC1UZnNdFLj_0m5Kfu2bCJYTtkDAiMwq3BR1rqKp1rscOz9WfP0g9ZRxQPx6LbXn_Qm-P9ZJEo0x6Kxcir4wl4y6OYo1&amp;t=635375563334701695" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=sdFIlEnnsg-hOmZ_gTfQwaqutNwVpvSvA_GLCXpVJjpyPVswf-gFCHzkOHobit3aDYUQ7rKkitEvCidladbVtBllj5NNtawypj51DNMYCdXgE8tf6owd_xHW8uCilMztNOWgvhdiP9m14AMoB_BuwfWUI5ZPG4D1RBcE8v9izaEDCgGoGrMiAhSG7-bCdE2X0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=F8C9ESjZBBEOBSW7epDN0cWSK-MZbbVGIF4IjXlERuKO5ZeOWgNJ524k0L0_jXeTuh4IfoDnL6I2CL_ZaXX6ab0oAHcqO-8iwrz-mHDSx_G8LQLz4DRt70yUPNJf_uhEaBAOrrfJHgn32yoMHuaYeg8DHHqouC-5s99e0nKuAAMYRLVcHrt_pnsp4A0qvXPd0&amp;t=ffffffffb53e74b8" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1FF50F64" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAA1rmZpdSAmDEWM535zbxaDtU0tG1Q6ILoOZKKWbf3w+hMS63KnrtlYkNQ4bgfHZcSedOroKRyvCR56LFD3Kpl8LzL343bVOIk85yjuEIVxFQBp33ayz7pzV7KfF82ugVEf58ZFpJcGF8jiMqRXA83qpr/+HRgUHSJTiasfn6u4bBPJBnwOoA8DFcPPJ4zMJToNMXqq7ThBRSWtboXHh7WK2vaAitb9hqGe0R0+v/kezzeDawqsR5uU3KskavvVFiIKeu9hwE+wpOfJCGOb5m+VWKxSeRoLuTxPuQWjuuAIdfODV69HnMB22bEB8uQERLL0=" />
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
                        <p><a href="/user_codes.aspx">打码记录</a></p>
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
                            <span id="ctl00_ContentPlaceHolder1_loginname" class="form-control">${user.userCode }</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="inputusername" class="col-sm-2 control-label">用户昵称</label>
                        <div class="col-sm-10">
                            <span id="ctl00_ContentPlaceHolder1_txtusername" class="form-control">${user.userName}</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="phone" class="col-sm-2 control-label">手机号码</label>
                        <div class="col-sm-10">
                            <input name="userMobile" type="text" value="${user.userMobile}" id="ctl00_ContentPlaceHolder1_txtphone" class="form-control" placeholder="请输入手机号码" />
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
                            <input name="userQq" type="text" value="${user.userQq }" id="ctl00_ContentPlaceHolder1_txtqqinfo" class="form-control" />
                        </div>
                    </div>                    
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="inputmail" class="col-sm-2 control-label">邮件</label>
                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtmail" type="text" value="${user.userMail}" id="ctl00_ContentPlaceHolder1_txtmail" class="form-control" />
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="inputdate" class="col-sm-2 control-label">注册日期</label>
                        <div class="col-sm-10">
                            <span id="ctl00_ContentPlaceHolder1_regdate" class="form-control">${user.createDate}</span>
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
    <script type="text/javascript" src="assets/main/js/jquery.cookie.js"></script>
    <script type="text/javascript">
        var check = true;
        $(function () {

            function init() {
               /*   var index = $.getUrlParam('type');
                if (!index) index = $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val() - 1;
                $('#myTab a:eq(' + index + ')').tab('show');
                if (index == 1) {
                    $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').hide();
                    $('#' + 'ctl00_ContentPlaceHolder1_divalert').hide(); */ 
               /*  } */
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
                    $.post("/sms.json",{"mobile":$('#ctl00_ContentPlaceHolder1_txtphone').val()},function(data){
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

         

    </script>

                </div>
            </div>
        </section>
        
<%@include file="footer.jsp"%>
</body>
</html>
