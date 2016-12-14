<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	聚聚玩-游戏试玩-广告体验-好友推广-网络兼职
</title><meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" />
<meta name="description" content="打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common.css" type="text/css" rel="stylesheet" />
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
    
<link type="text/css" rel="stylesheet" href="/assets/main/css/register.css" />
</head>
<body>
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTQ3NTA3NTA1D2QWAmYPZBYCAgEPZBYEAgEPZBYCAgoPFgIeC18hSXRlbUNvdW50AjIWZGYPZBYCZg8VAghsaWthaTUyMAI1MGQCAQ9kFgJmDxUCCWthbGViMDUyMgE5ZAICD2QWAmYPFQIKeTUyMTExMTI1eQE4ZAIDD2QWAmYPFQILMTMxNjE4NjA0NDUBM2QCBA9kFgJmDxUCBndocTUxOAM3NDBkAgUPZBYCZg8VAgsxODIwNzc0MTU2MAEzZAIGD2QWAmYPFQIIbHg4ODY5NjYBM2QCBw9kFgJmDxUCCnE1MTkxODQ4MDQBOWQCCA9kFgJmDxUCB25hbWUzMTQCNDVkAgkPZBYCZg8VAgsxNTAwODgzODk3OQMzNTBkAgoPZBYCZg8VAgttMTA0NDg4OTgxMgE5ZAILD2QWAmYPFQILMTUzMzY2NTY3NjUDMTUwZAIMD2QWAmYPFQIGNTJkZGhoATdkAg0PZBYCZg8VAgZtd243NzcBOGQCDg9kFgJmDxUCDHpoZW5kZWhhb2ZhbgMzNjNkAg8PZBYCZg8VAgsxNTE0NjM5NDkzNAMxODBkAhAPZBYCZg8VAgdzaXlhbm5uAzEzMGQCEQ9kFgJmDxUCCmp1anV3dWppYW4DMTMzZAISD2QWAmYPFQIJaHVvanQyMDE1AjMwZAITD2QWAmYPFQIGdGVhbXM2AzIwMGQCFA9kFgJmDxUCCnNob3c4c2hvdzgBMmQCFQ9kFgJmDxUCCmxpbnRhbzM2NzcCMzRkAhYPZBYCZg8VAgxwMTMzODYwMzMxNTYBMmQCFw9kFgJmDxUCCWxpYW5nMTY4OAEyZAIYD2QWAmYPFQIGbXFhenJzAjEzZAIZD2QWAmYPFQIHcndoMjAwMwIyMGQCGg9kFgJmDxUCCzEzNzY5MzcyNTE4ATFkAhsPZBYCZg8VAgtseHkxOTYzMjEwNAIyMGQCHA9kFgJmDxUCCGNoZW4xMjM2AjIwZAIdD2QWAmYPFQIIZXJpYzIwMTUDMzY4ZAIeD2QWAmYPFQIKd2Fzc3dvYWluaQIxN2QCHw9kFgJmDxUCCTk5MDIwMzYzMwExZAIgD2QWAmYPFQIIcXVuNTIwOTUCMjBkAiEPZBYCZg8VAgsxNTk3MDE1OTg1NQEzZAIiD2QWAmYPFQILMTU3Mjc2OTI0NTcCMzlkAiMPZBYCZg8VAgdxb29wcGFkATZkAiQPZBYCZg8VAgp6YmtpbmcyMDE2AjI3ZAIlD2QWAmYPFQIIRkY1MDIwMTABNGQCJg9kFgJmDxUCCXg3NTI1MDM0MwI5M2QCJw9kFgJmDxUCDHFxMTA2NzE1NDIzMwEyZAIoD2QWAmYPFQIGeGlhb2ZzATRkAikPZBYCZg8VAgpxOTYyNjkzNTA0AjUwZAIqD2QWAmYPFQIJOTI5OTM4MzY3AjMwZAIrD2QWAmYPFQILd2FuZzI2NTQyMjYCMTBkAiwPZBYCZg8VAgk1NDU0ODExNDICNDBkAi0PZBYCZg8VAgpnZzg5OTI1OTEyAjIxZAIuD2QWAmYPFQILcWlhbmthaTAxNTYCNTBkAi8PZBYCZg8VAgZ0eXF0eXEBMmQCMA9kFgJmDxUCCzE4OTc4NzcxNTQzAzExOGQCMQ9kFgJmDxUCDGxpYW5nemhhbmhhbwE0ZAICDxYCHglpbm5lcmh0bWwFJGNmZDZhYWZmLTM2ODktNDc5Yi04NWRlLWIwMTdiYjM3NTNjYWRkO6DZpQUjcLnDHF8Fq09fl5VY5kZ1HoWnwoSC+6HVniY=" />
</div>



<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="799CC77D" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAf9JXRbdd4Y+NoqbMjNTiJDFs5y3TNCQNuJmECURV/SYq2vKPuIGiwfZQ0Kee5v8Y/v3UwcCmgopM0gYQ/3GAhPrBaa1Ho6/kn1nxuiuzlfWmP5uSqHO66v9s+Bx06yjrGUwAy367gen91wyL4sRAhGN8TOozZeEoc3OrfZc5OeplDTmir835NUiHUK5uW6zHk=" />
</div>
       <%@include file="header.jsp"%>
        <script src="assets/main/js/dialog.js" type="text/javascript"></script>
        <script src="assets/main/js/common.js" type="text/javascript"></script>
        <script src="http://static.geetest.com/static/tools/gt.js"></script>     
        
    <section>
        <div class="container mainWidth" style="background-color: white; margin: 20px auto;">
            <div class="loginReg">
                <ul class='loginState clearfix'>
                    <li>
                        <div class="pull-left icon">
                            <img src="assets/main/img/code-5.png" />
                        </div>
                        <div class="pull-left">
                            <h4>轻松打码</h4>
                            <p>无需押金，轻松打码</p>
                        </div>
                        <div class="pull-left right">
                            <img src="assets/main/img/login4.png" />
                        </div>
                    </li>
                    <li>
                        <div class="pull-left icon">
                            <img src="assets/main/img/code-2.png" />
                        </div>
                        <div class="pull-left">
                            <h4>赚元宝</h4>
                            <p>虚拟货币，支持直接提现</p>
                        </div>
                        <div class="pull-left right">
                            <img src="assets/main/img/login4.png" />
                        </div>
                    </li>
                    <li>
                        <div class="pull-left icon">
                            <img src="assets/main/img/code-4.png" />
                        </div>
                        <div class="pull-left">
                            <h4>快速提现</h4>
                            <p>支付宝提现，快速便捷</p>
                        </div>
                    </li>
                </ul>
                <div class="loginCtn clearfix">
                    <div class="pull-left loginMain">
                        <h3>注册</h3>
                        <div class="piece clearfix">
                            <div class="text pull-left">登录账号<span class="red" style="font-size: 18px">*</span></div>
                            <input type="text" id="userCode" name="userCode" placeholder="用户名" class="pull-left form-control">
                            
                        </div>
                        <div class="piece clearfix">
                            <div class="text pull-left">手机号码<span class="red" style="font-size: 20px">*</span></div>
                            <input name="userMobile" type="text" id="ctl00_ContentPlaceHolder1_txtPhoneNumber" class="form-control" placeholder="请输入手机号码(提现+密码找回)" />
                        </div>
                        <div class="piece clearfix">
                            <div class="text pull-left">短信验证码<span class="red" style="font-size: 20px">*</span></div>
                            <input type="text" id="msgCode" name="code" class="form-control" placeholder="短信验证码" required="">
                            
                            <input type="button" id="smsBtn" onclick="getCode()" class="btn pull-right" value="获取验证码" >
                        </div>
                        
								  
                        <div class="piece clearfix">
                            <div class="text pull-left">输入密码<span class="red" style="font-size: 20px">*</span></div>
                            <input name="userPwd" type="password" id="ctl00_ContentPlaceHolder1_password1" class="form-control" placeholder="请输入密码" />
                        </div>
                        <div class="piece clearfix">
                            <div class="text pull-left">确认密码<span class="red" style="font-size: 20px">*</span></div>
                            <input name="userPwd2" type="password" id="ctl00_ContentPlaceHolder1_password2" class="form-control" placeholder="请输入确认密码" />
                            
                        </div>
                        <div class="piece clearfix">
                            <div class="text pull-left">QQ号码<span class="red" style="font-size: 20px">*</span></div>
                            <input name="userMail" type="text" id="ctl00_ContentPlaceHolder1_eamil" class="form-control" placeholder="请输入电子邮箱" />
                            
                        </div>
                        <div class="piece clearfix">
                            <div class="text pull-left">电子邮箱<span class="red" style="font-size: 20px">*</span></div>
                            <input name="userQq" type="text" id="ctl00_ContentPlaceHolder1_eamil" class="form-control" placeholder="请输入电子邮箱" />
                            
                        </div>
                        <div class="piece clearfix">
                            <div class="text pull-left">滑动验证</div>
                            <div id="captchaReg" style="margin-left: 120px"></div>
                        </div>
                        <div class="checkbox deal">
                            <label>
                                <input type="checkbox" checked="checked" />已经阅读并同意《XXX注册协议》
                            </label>
                        </div>
                        <input type="submit" name="ctl00$ContentPlaceHolder1$btnRegister" value="立即注册" id="ctl00_ContentPlaceHolder1_btnRegister" class="btn btn-info loginBtn" />
                        <p class="issue"><a href="#">注册遇到问题？</a><span>已有账号,</span><a href="#">登陆</a></p>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <script src="http://static.geetest.com/static/tools/gt.js"></script>
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
                    else { check = true; return true; }
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
                    else { check = true; return true; }
                }
            });
            
            $('#ctl00_ContentPlaceHolder1_btnRegister').click(function () {
                if (!check || !code.isverfiy) { alert("验证失败！"); return false; }

                var login = $('#userCode');
                var email = $('#ctl00_ContentPlaceHolder1_eamil');
                var ps1 = $('#ctl00_ContentPlaceHolder1_password1');
                var ps2 = $('#ctl00_ContentPlaceHolder1_password2');
                var phone = $('#ctl00_ContentPlaceHolder1_txtPhoneNumber');

                if (!validateTextIsEmpty(login, "<span class=\"label label-warning\">登录名不可为空！</span>")) return false;
                if (!validateTextIsEmpty(ps1, "<span class=\"label label-warning\">密码不可为空！</span>")) return false;
                if (!validateTextIsEmpty(ps2, "<span class=\"label label-warning\">密码不可为空！</span>")) return false;
                if (!validateTextIsEmpty(email, "<span class=\"label label-warning\">邮箱不可为空！</span>")) return false;
                if (!validateTextIsEmpty(phone, "<span class=\"label label-warning\">手机号码不可为空！</span>")) return false;

                if (login.val().length > 0) {
                    var reg = /^[0-9a-zA-Z\u4e00-\u9fa5_]{6,16}$/;
                    isok = reg.test(login.val());
                    if (!isok) {
                        var lblogin = login.parent();
                        $("<span class=\"label label-warning\">请填写正确的登录名,保持在6-16字符内！！</span>").appendTo(lblogin);
                        login.focus();
                        return false;
                    }
                }

                if (ps1.val().length > 0) {
                    var reg = /^[\w-`=\\\[\];',./~!@#$%^&*()_+|{}:">?]{6,}$/;
                    isok = reg.test(ps1.val());
                    if (!isok) {
                        var lbps1 = ps1.parent();
                        $("<span class=\"label label-warning\">密码不符合规范（6位以上）！</span>").appendTo(lbps1);
                        ps1.focus();
                        return false;
                    }
                }
                if (ps1.val() != ps2.val()) {
                    var lbps2 = ps2.parent();
                    $("<span class=\"label label-warning\">俩次密码键入不一致</span>").appendTo(lbps2);
                    ps2.focus();
                    return false;
                }
                $.post("/user/register.json",$('#registerForm').serialize(),function(data){
    				if(data.status==0)
    					{
    					alter(data.msg)
    					}
    				else
    					{
	    					if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
	    				        arrSource = unescape(this.location.search).substring(1, this.location.search.length).split("&");
	    				        i = 0;
	    				        while (i < arrSource.length && !isFound) {
	    				            if (arrSource[i].indexOf("=") > 0) {
	    				                if (arrSource[i].split("=")[0].toLowerCase() == paramName.toLowerCase()) {
	    				                    paramValue = arrSource[i].split("=")[1];
	    				                    isFound = true;
	    				                    location.href= paramValue;
	    				                }
	    				            }
	    				            i++;
	    				        }
	    				    }
	    					else
	    						{
	    						location.href= "/index.html";
	    						}
    					}
    				
    			  });
            });
        });
        
        function getCode()
		{
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
				$("#smsBtn").val("获取验证码");
				   wait = 60;
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
