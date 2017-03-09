var FH = FH || {};
FH.signIn = {
    signButton: null,
    init: function () {

        var that = this;
        this.signButton = $("#nav_notice");

        if (!CurrentUser.UserId) {
            this.login();
            return;
        }

        var code = $.cookie("ctuskytime_cookie");
        if (code == null || code == "" || code != 300) {
            //1.请求签到状态接口，初始化签到按钮
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
    },
    showMessage: function () {
        var that = this;
        //1.展示签到信息.判断是否已经请求过接口，直接显示
        //请求签到信息接口，展示数据
        if (document.getElementById("show-all").innerHTML == "") {
            var year = new Date().getFullYear();
            var month = new Date().getMonth() + 1;
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