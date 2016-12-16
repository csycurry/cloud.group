/**
 * 
 */
//导航栏处理
function navbarshow(nav) {
    nav.addClass('active').siblings().removeClass('active');
    nav.find('.move').hide();
}

//添加到收藏夹
function AddFavorite(title, url) {
    try {
        window.external.addFavorite(url, title);
    }
    catch (e) {
        try {
            window.sidebar.addPanel(title, url, "");
        }
        catch (e) {
            alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}

//显示登陆框
function loginmodal() {
    var login = $('.loginmodal');
    login.click(function () {
        $('body').dialog();
    });
}

function Geetcaptcha(captcha, notice) {
    var handler = function (captchaObj) {
        if ($(captcha).length > 0) {
            captchaObj.appendTo(captcha);
            captchaObj.onSuccess(function () {
                notice.isverfiy = true;
            })
        }
    };
    $.ajax({
        url: "/geetest/register.json?t=" + (new Date()).getTime(),
        type: "get",
        dataType: "json", // 使用jsonp格式
        success: function (data) {
            initGeetest({
                gt: data.gt,
                challenge: data.challenge,
                product: "float", // 产品形式
                offline: !data.success
            }, handler);
        }
    });
}