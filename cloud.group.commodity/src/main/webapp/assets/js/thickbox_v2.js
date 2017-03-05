function tb_show(A, B, C, title) {
    var html = '<div id="TB_overlay" class="TB_overlayBG"></div>' +
                '<div id="TB_window">' +
                    '<a href="#" id="TB_closeWindowButton" title="Close">关闭</a>' +
                    '<div class="pop-login" id="J_login_box">' +
                        '<div class="con clearfix">' +
                            '<div class="con-1">' +
                                '<p class="login-title">' + decodeURIComponent(title) + '</p>' +
                                '<form class="form-login" method="post" action = "">' +
                                    '<div class="form-item" style="z-index:3;">' +
                                        '<label for="login_mail_2" class="label">账&nbsp;&nbsp;号</label>' +
                                        '<input type="text" tabindex="1" id="login_mail_2" name="identifier" value = "' + ($.cookie("user_name") || "") + '" class="txt txt-1 auto_input"   maxlength="40" />' +
                                        '<p class="default-val" style="">手机号 / 用户名 / 邮箱 </p>' +
                                    '</div>' +
                                    '<div class="form-item" style="z-index:2;">' +
                                        '<label for="reg_pass" class="label">密&nbsp;&nbsp;码</label>' +
                                        '<input type="password" tabindex="2" id="reg_pass" class="txt txt-1" name="password"/>' +
                                        '<a href="https://passport.fanhuan.com/getpass/" target="_blank" class="link-forget" style="margin-left:10px">忘记密码？</a>' +
                                        '<div class="poptip-pass" style="display:none;"><b class="wai">◆</b><b class="nei">◆</b><div class="bg"></div>大写锁定已打开</div>' +
                                    '</div>' +
                                    '<div class="form-item" style = "">' +
                                        '<label for="login_code" class="label">验证码</label>' +
                                        '<input type="text" tabindex="3" id="login_code" name="checkcode" class="txt txt-2" maxlength="4" />' +
                                        '<img id="login_checkcode" src = "https://passport.fanhuan.com/checkcode/login/" _src = "https://passport.fanhuan.com/checkcode/login/" width="80" height="30" alt="点击刷新验证码" title="点击刷新验证码" onclick="RefreshCheckcode($(this));" />' +
                                        '<a href="javascript:void(0);" class="login-code-change" id="loginCodeChange" onclick="RefreshCheckcode($(\'#TB_window #login_checkcode\'));">换一张</a>' +
                                    '</div>' +
                                    '<div class="form-item form-item-s">' +
                                        '<p class="login-remember">' +
                                            '<input type="checkbox" id="remember" checked="checked" name = "remember" />' +
                                            '<label for="remember">下次自动登录</label>' +
                                        '</p>' +
                                        '<p class="login_tips suggest">' +
                                            '<span></span>' +
                                            '<a href="https://passport.fanhuan.com/getpass/"  target="_blank" class="link-forget" style="display:none;">忘记密码？</a>' +
                                        '</p>' +
                                    '</div>' +
                                    '<div class="form-action" style="margin-top:20px;*margin-top:-10px">' +
                                        '<a href="javascript:void(0);" tabindex="3" onclick = "LoginBoxLogin($(this));" id="J_loginBtn" class="btn btn-1"><span>登&nbsp;录</span></a>' +
                                    '</div>' +
                                '</form>' +
                            '</div>' +
                            '<div class="con-2">' +
                                '<p>还没有账号？</p>' +
                                '<div class="btn-outer"><a onclick="openNewtweb()" class="btn btn-1" id="J_btn"><span>注册拿返还</span></a></div>' +
                                '<p>或免注册登录</p>' +
                                '<ul class="clearfix">' +
                                    '<li><a href="javascript:LoginFrom(\'qq\');" class="ico-login-otherway i-login-otherway-qq"></a></li>' +
                                    '<li><a href="javascript:LoginFrom(\'wechat\');" class="ico-login-otherway i-login-otherway-wechat"></a></li>' +
                                    '<li><a href="javascript:LoginFrom(\'taobao\');" class="ico-login-otherway i-login-otherway-tb"></a></li>' +
                                    '<li><a href="javascript:LoginFrom(\'sina\');" class="ico-login-otherway i-login-otherway-sina"></a></li>' +
                                '</ul>' +
                            '</div>' +
                        '</div>' +
                    '</div>' + 
                '</div>';
    $("body").append(html);
    $("#TB_window").show()
    .css({
        "font": "12px/1.5 Microsoft Yahei",
        "margin-left": "-320px",
        "margin-top": "-162px"
    });

    if (!$("#loginboxCSS").length) {
        $("head").append('<link id="loginboxCSS" rel="stylesheet" type="text/css" href="//js.fanhuan.com/css/login/loginbox.css?v=2016081018">');
        $("body").append('<script type="text/javascript" src="//js.fanhuan.com/js/login/loginbox.js?v=20161110"></script>');
    }

    //设置落地页cookie
    $.cookie("landing_page", location.href, { path: "/", expires: 3600, domain: "fanhuan.com" });

    // 浏览器自动填充，去除提示文字
    $(".txt").each(function () {
        var $this = $(this);
        if ($this.val().length > 0) {
            $this.next(".default-val").hide();
        }
    });

    // 大写锁定
    var J_poptip_pass = $("#reg_pass").siblings(".poptip-pass");
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

function tb_remove() {
    $("#TB_closeWindowButton").off("click");
    $("#TB_window").fadeOut("fast",
	function () {
	    $("#TB_window, #TB_overlay").off().remove();
	});
	return false;
}

$(document).on("click", "#TB_overlay, #TB_closeWindowButton", tb_remove);
