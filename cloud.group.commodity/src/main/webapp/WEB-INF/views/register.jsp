<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>XXX打码</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/assets/index/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/common.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/main.css" type="text/css" rel="stylesheet" />
<link href="/assets/main/css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="assets/main/css/code.css" />
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
</style>

<link type="text/css" rel="stylesheet"
	href="/assets/main/css/register.css" />
</head>
<body>

	<script src="assets/main/js/dialog.js" type="text/javascript"></script>
	<script src="assets/main/js/common.js" type="text/javascript"></script>
	<script src="http://static.geetest.com/static/tools/gt.js"></script>
	<div class="header clearfix">
        <a class="logo reg_logo" href="/"></a>
    </div>
	
	<section style="padding-top:40px;padding-bottom:20px">
	<div class="container mainWidth"
		style="background-color: white;">
		<div class="loginReg">
			<div class="loginCtn clearfix">
				<form id="registerForm">
					<div class="pull-left loginMain">
						<h3>注册</h3>
						<div class="piece clearfix">
							<div class="text pull-left">
								登录账号
							</div>
							<input type="text" id="userCode" name="userCode"
								placeholder="用户名" class="pull-left form-control">
							<p style="color: red">*请输入6-16位字符</p>
						</div>
						<div class="piece clearfix">
							<div class="text pull-left">
								输入密码
							</div>
							<input name="userPwd" type="password"
								id="ctl00_ContentPlaceHolder1_password1" class="pull-left form-control"
								placeholder="请输入密码" />
								<p style="color: red">*请输入6位以上密码</p>
						</div>
						<div class="piece clearfix">
							<div class="text pull-left">
								确认密码
							</div>
							<input name="userPwd2" type="password"
								id="ctl00_ContentPlaceHolder1_password2" class="form-control"
								placeholder="请输入确认密码" />

						</div>
						<div class="piece clearfix">
							<div class="text pull-left">
								QQ号码
							</div>
							<input name="userMail" type="text"
								id="ctl00_ContentPlaceHolder1_QQ" class="form-control"
								placeholder="请输入qq" />

						</div>
						<div class="piece clearfix">
							<div class="text pull-left">
								电子邮箱
							</div>
							<input name="userQq" type="text"
								id="ctl00_ContentPlaceHolder1_eamil" class="form-control"
								placeholder="请输入电子邮箱" />

						</div>
						<div class="piece clearfix">
							<div class="text pull-left">
								手机号码
							</div>
							<input name="userMobile" type="text"
								id="ctl00_ContentPlaceHolder1_txtPhoneNumber"
								class="form-control pull-left" placeholder="请输入手机号码(提现+密码找回)" />
						</div>
						<div class="piece clearfix">
							<div class="text pull-left">滑动验证</div>
							<div id="captchaReg" style="margin-left: 120px"></div>
						</div>
						<div class="piece clearfix">
							<div class="text pull-left">
								短信验证码
							</div>
							<input type="text" id="msgCode" name="code" class="pull-left form-control"
								placeholder="短信验证码"> <input type="button"
								id="smsBtn" onclick="getCode()" class="btn pull-right"
								style="background-color: gainsboro;"
								value="获取验证码">
						</div>
						<div class="checkbox deal">
							<label> <input type="checkbox" checked="checked" />已经阅读并同意《XXX注册协议》
							</label>
						</div>
						<input type="button" name="ctl00$ContentPlaceHolder1$btnRegister"
							value="立即注册" id="ctl00_ContentPlaceHolder1_btnRegister"
							class="btn btn-info loginBtn" />
						<p class="issue">
							<a href="http://wpa.qq.com/msgrd?v=3&uin=3001029570&site=qq&menu=yes">注册遇到问题？</a><span>已有账号,</span><a href="/">立刻登录</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<script type="text/javascript">
        var check = true; var code = { isverfiy: false };
        function validateTextIsEmpty(item, content) {
            var lbitem = item.parent();
            lbitem.children('span').remove();
            if (item == null || item.val().length == 0) {
                $(content).appendTo(lbitem);
                item.focus();
                return false;
            }
            return true;
        };
        $(function () {
            (function () {               
                Geetcaptcha("#captchaReg", code);
                tvRoll();
                function tvRoll() {
                    var $tvMsg = $('.loginCtn .tv .msg');
                    var $tvMsgWrap = $('.loginCtn .tv .msgWrap');
                    var disHeight = $tvMsg.height() - $tvMsgWrap.height();

                    var num = 0;
                    setInterval(function () {
                        num--;
                        if (Math.abs(num) >= disHeight) { num = 0; }
                        $tvMsg.css('top', num);
                    }, 33)
                }
            })()



            $('#ctl00_ContentPlaceHolder1_txtPhoneNumber').blur(function () {
                var phone = $('#ctl00_ContentPlaceHolder1_txtPhoneNumber');
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
                    else {
                    	$.post("/user/mobile.json",{mobile:phone.val()},function(data){
            				if(data.status==0)
            					{
            					$("<span class=\"label label-warning\">"+data.msg+"！</span>").appendTo(lbphone);
            					check = false;
                                return false;
            					}
            				else
            					{
            					check = true; return true;
            					}
            				
            			  });
                    	 }
                }
            });

            $('#ctl00_ContentPlaceHolder1_eamil').blur(function () {
                var email = $('#ctl00_ContentPlaceHolder1_eamil');
                var lbemail = $('#ctl00_ContentPlaceHolder1_eamil').parent();
                lbemail.children('span').remove();
                if (email != null && email.val().length > 0) {
                    var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
                    isok = reg.test(email.val());
                    if (!isok) {
                        $("<span class=\"label label-warning\">请填写正确的邮件地址！</span>").appendTo(lbemail);
                        check = false;
                        return false;
                    }
                    else { 
                    	$.post("/user/mail.json",{mail:email.val()},function(data){
            				if(data.status==0)
            					{
            					$("<span class=\"label label-warning\">"+data.msg+"！</span>").appendTo(lbemail);
            					check = false;
                                return false;
            					}
            				else
            					{
            					check = true; return true;
            					}
            				
            			  });
                    	 }
                }
            });
            
            
            $('#userCode').blur(function () {
                var userCode = $('#userCode');
                if (!validateTextIsEmpty(userCode, "<span class=\"label label-warning\">登录名不可为空！</span>")) return false;
                if (userCode.val().length > 0) {
                    var reg = /^[0-9a-zA-Z\u4e00-\u9fa5_]{6,16}$/;
                    isok = reg.test(userCode.val());
                    if (!isok) {
                        var lblogin = userCode.parent();
                        $("<span class=\"label label-warning\">请填写正确的登录名！！</span>").appendTo(lblogin);
                        userCode.focus();
                        return false;
                    }
                }
                var lbemail = $('#userCode').parent();
                lbemail.children('span').remove();
                    	$.post("/user/usercode.json",{userCode:email.val()},function(data){
            				if(data.status==0)
            					{
            					$("<span class=\"label label-warning\">"+data.msg+"！</span>").appendTo(lbemail);
            					check = false;
                                return false;
            					}
            				else
            					{
            					$("<span class=\"label label-success\">该用户名可以使用！</span>").appendTo(lbemail);
            					check = true; return true;
            					}
            				
            			  });
            });
            
            
            
            $('#ctl00_ContentPlaceHolder1_btnRegister').click(function () {
            	if(!checkParam())
            		return false;
                $.post("/user/register.json",$('#registerForm').serialize(),function(data){
    				if(data.status==0)
    					{
    					alert(data.msg)
    					}
    				else
    					{
	    					location.href= "/index.html";
    					}
    				
    			  });
            });
        });
        function checkParam(){
        	var login = $('#userCode');
            var email = $('#ctl00_ContentPlaceHolder1_eamil');
            var ps1 = $('#ctl00_ContentPlaceHolder1_password1');
            var ps2 = $('#ctl00_ContentPlaceHolder1_password2');
            var phone = $('#ctl00_ContentPlaceHolder1_txtPhoneNumber');
            var msgCode = $('#msgCode');
            if (!validateTextIsEmpty(login, "<span class=\"label label-warning\">登录名不可为空！</span>")) return false;
            if (!validateTextIsEmpty(ps1, "<span class=\"label label-warning\">密码不可为空！</span>")) return false;
            if (!validateTextIsEmpty(ps2, "<span class=\"label label-warning\">密码不可为空！</span>")) return false;
            if (!validateTextIsEmpty(email, "<span class=\"label label-warning\">邮箱不可为空！</span>")) return false;
            if (!validateTextIsEmpty(phone, "<span class=\"label label-warning\">手机号码不可为空！</span>")) return false;
            if (!validateTextIsEmpty(phone, "<span class=\"label label-warning\">短信验证码不可为空！</span>")) return false;

            if (login.val().length > 0) {
                var reg = /^[0-9a-zA-Z\u4e00-\u9fa5_]{6,16}$/;
                isok = reg.test(login.val());
                if (!isok) {
                    var lblogin = login.parent();
                    $("<span class=\"label label-warning\">请填写正确的登录名！！</span>").appendTo(lblogin);
                    login.focus();
                    return false;
                }
            }

            if (ps1.val().length > 0) {
                var reg = /^[\w-`=\\\[\];',./~!@#$%^&*()_+|{}:">?]{6,}$/;
                isok = reg.test(ps1.val());
                if (!isok) {
                    var lbps1 = ps1.parent();
                    $("<span class=\"label label-warning\">密码不符合规范！</span>").appendTo(lbps1);
                    ps1.focus();
                    return false;
                }
            }
            if (ps1.val() != ps2.val()) {
                var lbps2 = ps2.parent();
                $("<span class=\"label label-warning\">两次密码输入不一致</span>").appendTo(lbps2);
                ps2.focus();
                return false;
            }
            if (!check || !code.isverfiy) { alert("请先验证！"); return false; }
            return true;
        }
        
        function getCode()
		{
        	if(!checkParam())
        		return false;
        	
			var mobile = $("#ctl00_ContentPlaceHolder1_txtPhoneNumber").val();
			if(mobile=="")
				{
					alert("请输入手机号！");
					return;
				}
			var msg = $("#msgCode").val();
			var flag =false;
			$.post("/sms.json",{"mobile":mobile},function(data){
				time();
			  });
		}
		var wait=60;
		function time() {
			if (wait == 0) {
				$("#smsBtn").val("重新获取验证码");
				   wait = 60;
				   $("#smsBtn").attr("disabled", false);
				  } else { 
				 
				$("#smsBtn").attr("disabled", true);
				$("#smsBtn").val("重新发送(" + wait + ")");
				   wait--;
				   setTimeout(function() {
				    time()
				   },
				   1000)
				  }
		 }
    </script>

	<div id="ctl00_hiddencode" class="hiddencode" style="display: none">cfd6aaff-3689-479b-85de-b017bb3753ca</div>

	<%@include file="footer.jsp"%>
	<script type="text/javascript">
        $(function () {
            (function () {
            	$(".headText").hide();
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
