var isIE = false;
if ($.browser.msie) {
    isIE = true;
}

//第一次验证码刷新
// 刷新验证码
function RefreshCheckcode(img) {
    var imgUrl = img.attr("_src") + "?" + Math.random();
    img.attr("src", imgUrl);
    img.parents(".form-item").css("display", "");
}
// 校验验证码
function CheckCheckcode(type) {
    var checkcodeValue = "";
    var checkcode = $(".pop-login #" + type + "_checkcode:visible");
    if (checkcode.length != 0) {
        checkcodeValue = $(checkcode[0]).siblings(":input")[0].value;
        if (checkcodeValue == "") {
            return "请输入验证码";
        }
        if (checkcodeValue.length != 4) {
            return "验证码错误";
        }
    }
    return null;
}
// 登录
var ErrorCount = 0;
function LoginBoxLogin(btn) {
    var attrName = "loading";
    $(".login_tips a").hide("");
    if (btn.attr(attrName)) {
        return false;
    }

    var userCode = $.trim($(".pop-login :input[name=identifier]")[0].value);
    var userPwd = $(".pop-login :input[name=password]")[0].value;
    if (userCode == "" || userCode == "请输入您注册的账号或邮箱") {
        $('.login_tips').show().find('span').html("请输入账号");
        return;
    }
    if (userPwd == "") {
        $('.login_tips').show().find('span').html("请输入密码");
        return;
    }
    if(!window.code.isverfiy){
    	$('.login_tips').show().find('span').html("请先验证");
    	return;
    }

    var result = CheckCheckcode("login");
    if (result != null) {
        $('.login_tips').show().find('span').html(result);
        return;
    }
    btn.attr(attrName, "fuck");
    $.ajax({
        type: "post",
        dataType: "json",
        url: "/user/login.json",
        cache: false,
        data: "?&userCode=" + encodeURIComponent(userCode) + "&userPwd=" + encodeURIComponent(userPwd) + ($(":input[id=remember]").length == 0 ? "" : ("&remember=" + $(":input[id=remember]")[0].checked)),
        success: function (response) {
            var response = eval(response);
            var login_title = $(".login-title").text();
            if (response.status == 0) {
                    $('.login_tips').show().find('span').html(response.msg);
                    if (response.msg.indexOf("密码") >= 0) {
                        $('.login_tips a').show();
                    } else {
                        $('.login_tips a').hide();
                    }
            }
            else if (response.status==1) {
            	$.cookie('user_id', response.data.id); 
            	$.cookie('user_name', userCode); 
                    top.location.href = "/";
                    return false;
            }
            btn.removeAttr(attrName, "fuck");
        },
        error: function (result) {
        }
    });
    return;
}
// 获取着陆页地址
function GetLandingPage() {
    var landingPage = $.cookie("landing_page");
    if (landingPage == null || landingPage == "" || landingPage.toLowerCase().indexOf("passport.fanhuan.com") >= 0) {
        return "http://my.fanhuan.com/my";
    }
    return landingPage;
    //return "http://www.fanhuan.com";
}
$(function () {
    //光标停靠输入框右侧
    $("#form_reg").find("label.label").live("click", function () {
        var input = $(this).siblings("input.txt").eq(0);
        if (!input.attr("disabled")) {
            input.focus();
            var rng = $(this).siblings("input.txt").get(0).createTextRange();
            rng.collapse(false);
            rng.select();
        }
    });

    if ($.browser.msie && $.browser.version == "6.0") {
    } else {
        $("#loginCodeChange").show();
    }

    $(".form-login input").bind({
        "focus": function () {
            $(this).css({ "color": "#333", "border-color": "#008be4" });
            $(this).keydown(function (e) {
                var keycode = e.which;
                if (keycode == 13) {
                    LoginBoxLogin1($(this));
                }
            });
        },
        "blur": function () {
            if ($.trim($(this).val()) == "") {
                $(this).css({ "color": "#a9a9a9", "border-color": "#ccc" });
            } else {
                $(this).css({ "color": "#333", "border-color": "#ccc" });
            }
        }
    })
    //点击输入框隐藏文案
    $(document).on("keydown", ".txt", function () {
        $(this).next(".default-val").hide();
    }).on("blur", ".txt", function () {
        if ($(this).val() == "") {
            $(this).next(".default-val").show();
        }
    });
    $(document).on("click", ".default-val", function () {
        $(this).prev("input").focus().css({ "color": "#333", "border-color": "#008be4" });
    });
    // 浏览器自动填充，去除提示文字
    $(".txt").each(function () {
        var $this = $(this);
        if ($this.val().length > 0) {
            $this.next(".default-val").hide();
        }
    });

    //
    var J_poptip_pass = $("#reg_pass").siblings(".poptip-pass");
    if (!isIE) {
        $("#reg_pass").bind({
            "keypress": function (event) {
                var e = event || window.event;
                var target = e.target || e.srcElement;
                var keyCode = e.keyCode || e.which; //按键的keyCode
                var isShift = e.shiftKey || (keyCode == 16) || false;   //shift键是否按住
                //document.title ="keyCode = " +  keyCode + " , shift = " + isShift;
                // ((keyCode >= 65 && keyCode <= 90) && !isShift)    //CapsLock打开，且没有按住shift
                //  || ((keyCode >= 97 && keyCode <= 122) && isShift) //CapsLock 关闭，且按住shift
                if ((keyCode >= 65 && keyCode <= 90) || ((keyCode >= 97 && keyCode <= 122) && isShift)) {
                    J_poptip_pass.show();
                } else {
                    J_poptip_pass.hide();
                }
            },
            "blur": function () {
                J_poptip_pass.hide();
            },
            "keyup": function () {
                if ($.trim($(this).val()) == "") {
                    J_poptip_pass.hide();
                }
            },
            "keydown": function () {
                if ($.trim($(this).val()) == "") {
                    J_poptip_pass.hide();
                }
            }
        })
    }
})
var cookie = $.cookie('href');
var order_cookie = $.cookie('order_cookie');
function openNewtweb() {
        parent.location.href = "/promotion.html";
}

$(document).on("keydown", function (e) {
    if (e.keyCode == 13) {
        $("#J_loginBtn").trigger("click");
    }
});

