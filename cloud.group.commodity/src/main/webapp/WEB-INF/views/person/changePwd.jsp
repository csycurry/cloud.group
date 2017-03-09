<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	XXX
</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" />
<meta name="description"
	content="聚宝师是一个玩游戏、体验产品赚积分。玩家可以通过玩游戏赚钱，打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
<link href="/assets/index/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/common.css" type="text/css"
	rel="stylesheet" />
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

.zxx_align_box_2 {
	display: table-cell;
	padding: 0 0.1em; solid #beceeb;
	color: #069;
	font-size: 10em;
}

.zxx_align_box_2 span.zxx_align_word {
	display: inline-block;
	font-size: 0.1em;
	line-height: 35px;
}
</style>
<link type="text/css" rel="stylesheet" href="/assets/main/css/login1.css" />
</head>
<body>
    <%@include file="user-header.jsp"%>
	<script src="assets/main/js/dialog.js" type="text/javascript"></script>
	<script src="assets/main/js/common.js" type="text/javascript"></script>
	<script src="http://static.geetest.com/static/tools/gt.js"></script>
   
    <section class='login1 login' style="
    padding-top: 70px;">
        <div class="container mainWidth">
            <div class="step clearfix">
                <div class="item">
                    <div>1</div>
                    <p>填写注册手机号码</p>
                </div>
                <div class="item">
                    <div>2</div>
                    <p>验证身份</p>
                </div>
                <div class="item">
                    <div>3</div>
                    <p>设置新密码</p>
                </div>
                <div class="item">
                    <div>
                        <img src="assets/main/img/dui1.png" alt="" />
                    </div>
                    <p>完成</p>
                </div>
            </div>
            <div class="content">
                <h4><span>1</span>填写注册手机号码</h4>
                <div style="width: 500px">
	                <input type="text" id="phone" class='form-control' style="float: left;" placeholder="填写注册手机号码" />
	                 <div class="tip">
	                    <p>
	                        	请输入正确的手机号码
	                    </p>
	                </div>
                </div>
                <div id="captchapsd" style="margin-left: 5px;height: 40px;display: inline-block;" align="left"></div>
                <button class='btn btn-danger nextStep' type="button" disabled="disabled">下一步</button>
            </div>
        </div>
    </section>

    <section class='login2 login'>
        <div class="container mainWidth">
            <div class="step clearfix">
                <div class="item">
                    <div>1</div>
                    <p>填写注册手机号码</p>
                </div>
                <div class="item">
                    <div>2</div>
                    <p>验证身份</p>
                </div>
                <div class="item">
                    <div>3</div>
                    <p>设置新密码</p>
                </div>
                <div class="item">
                    <div>
                        <img src="assets/main/img/dui1.png" alt="" />
                    </div>
                    <p>完成</p>
                </div>
            </div>
            <div class="content">
                <h4><span>2</span>验证信息</h4>
                <p>
                    <img src="assets/main/img/dui1.png" alt="" />注册手机号码：<span id="RegPhone"></span>
                </p>
                
                <div class="clearfix">
                    <input type="text" id="txtcode" class="form-control pull-left" style="width:173px" />
                    
                    <input class="pull-left btn btn-info smsregisterverify" data-mode="1" onclick="getCode()" style="width:80px;background:green;border:none;font-size:12px;margin-left:10px" type="button"  value="发送验证码" />
                </div>
                <p class="yzTip" style="display:none">
                    <img src="img/gth.png" alt="" /></p>
                <button class='btn btn-danger prevStep' type="button">上一步</button>
                <button class='btn btn-danger nextStep' type="button">下一步</button>
                
            </div>
        </div>
    </section>

    <section class='login3 login'>
        <div class="container mainWidth">
            <div class="step clearfix">
                <div class="item">
                    <div>1</div>
                    <p>填写注册手机号码</p>
                </div>
                <div class="item">
                    <div>2</div>
                    <p>验证身份</p>
                </div>
                <div class="item">
                    <div>3</div>
                    <p>设置新密码</p>
                </div>
                <div class="item">
                    <div>
                        <img src="img/dui1.png" alt="" />
                    </div>
                    <p>完成</p>
                </div>
            </div>
            <div class="content text-center">
                <h4><span>3</span>设置新密码</h4>
                <p>
                    <img src="img/dui2.png" alt="" />验证成功，请重新设置新密码
                </p>
                <div class="input">
                    <input type="password" class='form-control' id="psd1" placeholder='密码' maxlength='15' />
                    <div class='safe clearfix'>
                        <div class="item pull-left">
                            <div></div>
                            <p>低</p>
                        </div>
                        <div class="item pull-left">
                            <div></div>
                            <p>中</p>
                        </div>
                        <div class="item pull-left">
                            <div></div>
                            <p>高</p>
                        </div>
                    </div>
                </div>
                <div class="input">
                    <input type="password" class='form-control' id="psd2" placeholder='再次输入密码' maxlength='15' />
                    <div class='safe clearfix'>
                        <div class="item pull-left">
                            <div></div>
                            <p>低</p>
                        </div>
                        <div class="item pull-left">
                            <div></div>
                            <p>中</p>
                        </div>
                        <div class="item pull-left">
                            <div></div>
                            <p>高</p>
                        </div>
                    </div>
                </div>
                <p class="passwordEvel" style="display:none">
                    <img src="img/gth.png" alt="" />验证错误</p>
                <button class='btn btn-danger nextStep' type="button">确认</button>
            </div>
        </div>
    </section>

    <section class='login4 login'>
        <div class="container mainWidth">
            <div class="step clearfix">
                <div class="item">
                    <div>1</div>
                    <p>填写注册手机号码</p>
                </div>
                <div class="item">
                    <div>2</div>
                    <p>验证身份</p>
                </div>
                <div class="item">
                    <div>3</div>
                    <p>设置新密码</p>
                </div>
                <div class="item">
                    <div>
                        <img src="img/dui2.png" alt="" />
                    </div>
                    <p>完成</p>
                </div>
            </div>
            <div class="content text-center">
                <img src="img/smile.png" alt="" />
                <h3 class='green'>
                    <img src="img/dui2.png" alt="" />恭喜您，新密码设置成功</h3>
                <p class='gray'><span class='djs'>5</span>秒后自动跳转到首页<a href="Index.aspx">返还首页</a></p>
            </div>
        </div>
    </section>
    <script type="text/javascript" src="assets/main/js/jquery.cookie.js"></script>
    <script type="text/javascript">  
        var code = { isverfiy: false };
        $(function () {
            (function () {
                function init() {
                    phone();
                    nextStep();
                    password();
                }
                function phone() {
                    var $input = $('.content input').eq(0);
                    $nextStep = $('.login .nextStep');
                    $input.blur(function () {
                        var val = $(this).val();
                        var $tip = $('.login1 .content .tip');
                        //var reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                        var reg = /^1(3[0-9]|4[57]|5[0-35-9]|7[0135678]|8[0-9])\d{8}$/;
                        //console.log(reg.test(val))
                        if (!reg.test(val)) {
                            $tip.find('p').eq(0).show().siblings().hide();
                            $nextStep.attr('disabled', true);
                        }
                        else {
                            $tip.find('p').eq(0).hide();
                            $nextStep.attr('disabled', false);
                        }
                    })
                }
              
                Geetcaptcha("#captchapsd", code);
                function nextStep() {
                    var $nextStep = $('.login .nextStep');
                    var $login = $('.login');
                    var $prevStep = $('.login .prevStep');
                    //console.log($nextStep.length)
                    $nextStep.click(function () {
                        var iNow = $(this).index('.login .nextStep');
                        alert(iNow);
                        if (iNow == 0) {
                            if (!code.isverfiy) { alert("滑动验证失败！"); return false; }
                            $.post("/user/check.json", { type: "VALIDATEPHONE", phone: $('#phone').val() }, function (data) {
                                var $tip = $('.content .tip');
                                if (data.data == 1) {
                                    $('#RegPhone').text($('#phone').val());
                                    $login.eq(iNow + 1).show().siblings('.login').hide();
                                }
                                else {
                                    $tip.find('p').eq(0).show().siblings().hide();
                                    $tip.find('p').eq(0).text("该电话号码未注册,请确认!");
                                }
                            });
                        }
                        if (iNow == 1) {
                            $.post("/user/checkcode.json", { type: "PHONEMESSAGE",phone: $('#RegPhone').text(), code: $('#txtcode').val() }, function (data) {
                                var $yzInput = $('.login2 .yzTip');
                                $yzInput.css('opacity', 0);
                                if (data.status == 1) {
                                    $login.eq(iNow + 1).show().siblings('.login').hide();
                                    $yzInput.hide();
                                }
                                else {
                                    $yzInput.show();
                                    $yzInput.css('opacity', 1);
                                    $yzInput.eq(0).text(data.msg);
                                }
                            });
                        }
                        if (iNow == 2) {
                         
                            if ($('#psd1').val() == $('#psd2').val()) {
                                var $passwordEvel = $('.login3 .passwordEvel');
                                var reg = /^[\w-`=\\\[\];',./~!@#$%^&*()_+|{}:">?]{6,}$/;
                                isok = reg.test($('#psd1').val());
                                if (!isok) {
                                    $passwordEvel.show();
                                    $passwordEvel.text("密码不符合规范（6位以上)！");
                                }
                                $.post("/user/changePwd.json", { type: "CHANGEPSD", pwd: $('#psd1').val(), phone: $('#phone').val() }, function (data) {
                                    if (data.status == 1) {
                                        $passwordEvel.hide();
                                        $login.eq(iNow + 1).show().siblings('.login').hide();
                                        if (iNow == $nextStep.length - 1) {
                                            link();
                                        }                                      
                                    }
                                    else {
                                        $passwordEvel.show();
                                        $passwordEvel.text("密码修改失败~");                                       
                                    }
                                });
                            }
                            else {
                                var $passwordEvel = $('.login3 .passwordEvel');
                                $passwordEvel.show();
                            }
                        }
                    })
                    $prevStep.click(function () {
                        $login.eq(0).show().siblings('.login').hide();
                    })
                }

                    

                function password() {
                    var $input = $('.input input');
                    $input.keydown(function () {
                        var length = $(this).val().length;
                        var $parent = $(this).closest('.input');
                        if (length > 2 && length < 7) {
                            $parent.find('.item').eq(0).addClass('active').siblings().removeClass('active');
                        } else if (length >= 7 && length <= 11) {
                            $parent.find('.item').eq(1).addClass('active').siblings().removeClass('active');
                        } else if (length > 11) {
                            $parent.find('.item').eq(2).addClass('active').siblings().removeClass('active');
                        } else {
                            $parent.find('.item').removeClass('active');
                        }
                    }).blur(function () {
                        $input.trigger('keydown');
                    })
                }

                function link() {
                    var iNum = 5;
                    var $djs = $('.djs');
                    var timer = setInterval(function () {
                        $djs.text(iNum);

                        if (iNum == 0) {
                            clearInterval(timer);
                            window.location.href = '/';
                        }
                        iNum--;
                    }, 1000)
                }
                init();
            })()
            
        })
        
         function getCode()
            		{
            			var mobile = $("#RegPhone").text();
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

        <div id="ctl00_hiddencode" class="hiddencode" style="display: none">120bfad6-5f42-4fbf-a6e6-5b2e4bc7a751</div>
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
