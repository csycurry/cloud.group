/* File Created: 九月 15, 2015 */
var FH = FH || {};
FH.signIn = {
    signButton: null,
    init: function () {
//        if ($("#double11").length) {
//            $("#nav_notice").on("mouseover", function () {
//                $("#nav_notice").append("<img class='jifen11' src='http://i.fanhuan.com/images/newjifen/jifen11.jpg?v=20161027' style='position:absolute;top:38px;right:0'>")
//            }).on("mouseout", function () {
//                $(".jifen11").remove();
//            });
//            return;
//        }

        var that = this;
        this.signButton = $("#nav_notice");

        if (!CurrentUser.UserId) {
            this.login();
            return;
        }

        var code = $.cookie("ctuskytime_cookie");
        if (code == null || code == "" || code != 300) {
            //1.请求签到状态接口，初始化签到按钮
            $.getJSON('//www.fanhuan.com/ajax/GetSignStatus/?callback=?&s=' + Math.random(10), function (data) {
                //console.log(data);
                var code = parseInt(data.Code, 10);
                //console.log("code" + code);
                switch (code) {
                    case 300:
                        document.getElementById("sign-in1").innerHTML = "今日已签到";
                        $("#nav_notice").css("width", "126px");
                        $("#show-sign-in").css("margin-left", "41px");
                        //已经签到成功
                        that.signButton.unbind('click');
                        that.signButton.mouseover(function () {
                            that.showMessage();
                            $(".signwi").hide();
                            $(".signwi1").show();
                            $("#show-sign-in").css({ 'z-index': '20000' });
                        }).mouseleave(function () {
                            that.hideMessage();
                        });
                        $("#nav_notice").mouseover(function () {
                            $("#nav_notice").css("background-color", "#1280dd");
                            $("#nav_notice").mouseleave(function () {
                                $("#nav_notice").css("background", "none");
                            })
                        })
                        $(".signwi").show();
                        $(".signwi1").hide();

                        //设置cookie 
                        var ctuskytime = new Date();
                        ctuskytime.setDate(ctuskytime.getDate() + 1);
                        ctuskytime.setHours(0);
                        ctuskytime.setMinutes(0);
                        ctuskytime.setSeconds(0);
                        document.cookie = "ctuskytime_cookie=" + code + ";expires=" + ctuskytime.toGMTString() + "; domain=.fanhuan.com; path=/;";
                        break;
                    case 101:
                        //未登录
                        that.login();
                        break;
                    case 301:
                        //未签到
                        that.sign();
                        break;
                }
            });
        } else {
            //console.log(code);
            if (code == 300) {
                document.getElementById("sign-in1").innerHTML = "今日已签到";
                $("#nav_notice").css("width", "126px");
                $("#show-sign-in").css("margin-left", "41px");
            } else {
                $("#sign-in1").html("签到");
            }
            //已经签到成功
            $(function () {
                that.signButton.unbind('click');
                that.signButton.mouseover(function () {
                    that.showMessage();
                    $(".signwi").hide();
                    $(".signwi1").show();
                }).mouseleave(function () {
                    that.hideMessage();
                });
                $("#nav_notice").mouseover(function () {
                    $("#nav_notice").css("background-color", "#1280dd");
                    $("#nav_notice").mouseleave(function () {
                        $("#nav_notice").css("background", "none");
                        $(".signwi").show();
                        $(".signwi1").hide();
                    })
                })
            });

        }
    },
    sign: function () {
        var that = this;
        that.signButton.unbind('click');
        //1.调用签到接口，根据返回状态给相应提示信息
        that.signButton.click(function () {
            $.getJSON('//www.fanhuan.com/ajax/SignIn/?callback=?&s=' + Math.random(10), function (data) {
                var code = parseInt(data.Code, 10);
                switch (code) {
                    case 101:
                        //未登录
                        that.login();
                        break;
                    case 201:
                        //未绑定手机
                        $("#J_nav_sign1").find(".nav_sign_tip").hide();  //点击隐藏弹窗
                        var html = '';
                        html += '<div class="pop pop-bindphone" style="display:block;">';
                        html += '<div class="inner"><a href="javascript:void(0)" class="pop-close">×</a>';
                        html += '<p>为了您的账户安全，请先<strong>绑定手机</strong>再来签到哦~</p>';
                        html += '<div class="btn-outer"><a href="http://my.fanhuan.com/my/bindphone" class="btn btn-1" target="_blank"><span>去绑定</span></a></div>';
                        html += '</div></div>';
                        $('body').append(html);
                        $("body").append('<div id="TB_overlay" class="TB_overlayBG" style="opacity:0.6; filter:alpha(opacity=60);"></div>');
                        $(".pop .pop-close").live('click', function () {
                            $("#TB_overlay").remove();
                            $(".pop").remove();
                        });
                        $(".pop .btn").live('click', function () {
                            $("#TB_overlay").remove();
                            $(".pop").remove();
                        });
                        if (getSignInfoBtn) {
                            clearTimeout(timeSignRecode_load_out);
                        } else {
                            $("#J_nav_sign1 .nav_sign_tip").find(".sign-load").remove();
                            $("#J_nav_sign1 .nav_sign_tip").find(".sign-recode").show();
                            getSignInfoBtn = true;
                        }
                        break;
                    case 202:
                        //                        $("#sign-in").css({ 'color': 'red' });
                        //                        $("#nav_notice").css({ 'background': '#fdfce4' });
                        //至少需要获得过一笔购物返还
                        $("#J_nav_sign").find(".nav_sign_tip").hide();  //点击隐藏弹窗
                        var html = '';
                        html += '<div class="pop pop-bindphone" style="display:block;">';
                        html += '<div class="inner"><a href="javascript:void(0)" class="pop-close">×</a>';
                        html += '<p>您至少需要获得一笔购物返还，才能享有“<strong>有奖签到</strong>”特权哦~</p>';
                        html += '<div class="btn-outer"><a href="http://www.fanhuan.com/" class="btn btn-1" target="_blank"><span>去购物，拿返还</span></a></div>';
                        html += '</div></div>';
                        $('body').append(html);
                        $("body").append('<div id="TB_overlay" class="TB_overlayBG" style="opacity:0.6; filter:alpha(opacity=60);"></div>');
                        $(".pop .pop-close").live('click', function () {
                            $("#TB_overlay").remove();
                            $(".pop").remove();
                        });
                        $(".pop .btn").live('click', function () {
                            $("#TB_overlay").remove();
                            $(".pop").remove();
                        });
                        if (getSignInfoBtn) {
                            clearTimeout(timeSignRecode_load_out);
                        } else {
                            $("#J_nav_sign .nav_sign_tip").find(".sign-load").remove();
                            $("#J_nav_sign .nav_sign_tip").find(".sign-recode").show();
                            getSignInfoBtn = true;
                        }
                        break;
                    case 100:
                    case 300:
                        //今日已签到
                        //签到成功，展示信息，移除签到按钮的签到事件，绑定为显示信息事件
                        that.showMessage();
                        that.signButton.unbind('click');
                        that.signButton.click(function () {
                            that.showMessage();
                        }).mouseleave(function () {
                            that.hideMessage();
                        });
                        break;
                    case 301:
                        //签到失败
                        alert('签到失败');
                        break;
                }
            });
        });
    },
    showMessage: function () {
        var that = this;
        //1.展示签到信息.判断是否已经请求过接口，直接显示
        //请求签到信息接口，展示数据
        if (document.getElementById("show-all").innerHTML == "") {
            var year = new Date().getFullYear();
            var month = new Date().getMonth() + 1;
            $.getJSON('//www.fanhuan.com/ajax/GetSignData/?callback=?&s=' + Math.random(10) + '&action=all&year=' + year + '&month=' + month, function (data) {
                if (Number(data.AllTips) >= 10000) {
                    $("#show-sign-in .show-admin .fl").css("text-indent", "40px");
                    $("#show-sign-in .show-admin .fl img").css("left", "3px");
                }
                Number(data.SuccessionNum) <= 4 ? data.SuccessionNum = data.SuccessionNum : data.SuccessionNum = 4;
                if (data.SuccessionNum == 1) {
                    $(".show-sign-one").show();
                } else if (data.SuccessionNum == 2) {
                    $(".show-sign-one,.show-sign-two").show();
                } else if (data.SuccessionNum == 3) {
                    $(".show-sign-one,.show-sign-two,.show-sign-three").show();
                } else if (data.SuccessionNum == 4) {
                    $(".show-sign-one,.show-sign-two,.show-sign-three,.show-sign-four").show();
                } else {
                    $(".show-sign-one,.show-sign-two,.show-sign-three,.show-sign-four,.show-sign-five").show();
                }

                $(".time-axis").addClass("time-axis_" + data.SuccessionNum);
                $("#show-all").html(data.AllTips);
            });
        }
        $("#show-sign-in,#nav_notice .irrow").show();
    },
    hideMessage: function () {
        var that = this;
        //隐藏签到数据
        timeSignRecode = setTimeout(function () {
            $("#show-sign-in,#nav_notice .irrow").hide();
        });
    },
    login: function () {
        var that = this;
        that.signButton.unbind('click');
        that.signButton.click(function () {
            Login();
        });
    }
};