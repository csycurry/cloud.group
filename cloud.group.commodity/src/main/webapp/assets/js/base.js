/**
 * 
 */

$(function () {
    isSearching = 2;
})
function isSearch() {
    isSearching = 1;
}
function isScrollTop() {
    isSearching = 0;
}

if (typeof fp4 != "undefined") {
    $.cookie("cookie_clientid", fp4.get(), { path: "/", expires: 1, domain: "" });
}

//cnzz统计图标
$('span[id^="cnzz_stat_icon"]').hide();
//判断用户是否登录，显示的内容
if ($.cookie("user_name") != null) {
    $('.iframe_tips').show();

    $("#site_userinfo").html("<span class='Hello'>Hi,</span><a id='formailafter' href='/userinfo.html' target='_blank'>" + $.cookie("user_name") + "</a><a class='logout' href='javascript:LogOut();'>退出</a><span class='ver-line' style='margin-left:6px;'>|</span>");
}
else {
    //$('.iframe_tips').hide();
    /*改版登陆条开始  by sh*/
    var index = 1;
    if ($.cookie("user_name") == null) {
        $("#site_userinfo").html("<a href = 'javascript:Login()' id = 'login_link'>请登录</a><span class='ver-line'>|</span><a href = '/promotion.html' target='_blank' class='top_reg' id='top_reg_new'>免费注册</a><span class='ver-line'>|</span><a href=\"javascript:LoginFrom('qq')\" class='topqq_login topqq_login_new'>QQ登录<img src='assets/images/arror.png' class='top-arror'/></a><span class='ver-line'>|</span> <span class='newshowbox'><span class='top-block'></span><a href=\"javascript:LoginFrom('taobao')\" class='toptb_login new-toplogin1' >淘宝登录</a></span>");
        $("#login_link").attr("href", "javascript:Login('index')");
    } else {
        //如果cookie中user_name长度超过27个字符的话，使用省略号
        var oCookieUserName = $.cookie("user_name");
        if (oCookieUserName.length > 20) {
            oCookieUserName = oCookieUserName.substring(0, 15) + "...";
        }
        $("#site_userinfo").html("Hi , <span class='user-name f-ellipsis' title=" + oCookieUserName + ">" + oCookieUserName + "</span>&nbsp;&nbsp;<a href = 'javascript:Login()' id = 'login_link'>请登录</a><span class='ver-line'>|</span><a href = '/promotion.html' target='_blank' class='top_reg' id='top_reg_new'>免费注册</a><span class='ver-line'>|</span><a href=\"javascript:LoginFrom('qq')\" class='topqq_login topqq_login_new'>QQ登录<img src='assets/images/arror.png' class='top-arror'/></a><span class='ver-line'>|</span> <span class='newshowbox'><span class='top-block'></span><a href=\"javascript:LoginFrom('taobao')\" class='toptb_login new-toplogin1' >淘宝登录</a>");
        $(".newshowbox").css({ "right": "10px" });
        $("#login_link").attr("href", "javascript:Login('index')");
    }
}

$(".topqq_login,.newshowbox").mouseover(function () {
    $(".newshowbox").css("display", "block");
}).mouseleave(function () {
    $(".newshowbox").css("display", "none");
});
$("#af").mouseover(function () {
    $("#top_star").css("background", "url(assets/images/star-light.png) no-repeat");
}).mouseleave(function () {
    $("#top_star").css("background", "url(assets/images/star.png) no-repeat");
});

$(".act-login").live("click", function () {
    if ($.cookie("user_id") == null) {
        Login();
        return false;
    }
})
/* 获取URL参数
* by llm
*/
function request(paras) {
    var url = location.href;
    var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
    var paraObj = {}
    for (i = 0; j = paraString[i]; i++) {
        paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
    }
    var returnValue = paraObj[paras.toLowerCase()];
    if (typeof (returnValue) == "undefined") {
        return "";
    } else {
        return returnValue;
    }
}
//公告滚动
if ($(".notice_inner li").length > 1) {
    var mtime = null;
    $(function () {
        clearInterval(mtime);
        $("#nav_notice").hover(function () {
            $(".notice_inner").stop(true, true);
            clearInterval(mtime);
            $(this).addClass("nav_notice_hover");
            $("#nav_notice .i-site-arrow").css("backgroundPosition", "-64px 0px");
        }, function () {
            clearInterval(mtime);
            $(this).removeClass("nav_notice_hover");
            $("#nav_notice .i-site-arrow").css("backgroundPosition", "-64px -5px");
            mtime = setInterval(scrollDown, 3000);
        });
        mtime = setInterval(scrollDown, 3000);
    });
    //滚动方式
    function scrollDown() {
        $(".notice_inner").stop(true, true).animate({ top: "-19px" }, 600, function () {
            $(".notice_inner").css("top", "6px");
            $(".notice_inner li").first().insertAfter($(".notice_inner li").last());
        });
    }
}

// 全网返还分类
$("#shopper_lists li").hover(function () {
    _this = $(this);
    clearInterval(_this.timer);
    _this.timer = setTimeout(function () {
        showList(_this);
    }, 300);
    function showList(obj) {
        $(".subcategory_box").hide();
        obj.addClass("current").siblings().removeClass("current");
        obj.find(".subcategory_box").show();
    }
}, function () {
    clearInterval(_this.timer);
    _this.timer = setTimeout(function () {
        $(".subcategory_box").hide();
        $("#shopper_lists li").removeClass("current");
    }, 300);
});
$("#mallLogoList").find("li").live("mouseover", function () {
    $(this).addClass("hover").siblings().removeClass("hover");
}).live("mouseout", function () {
    $("#mallLogoList").find("li").removeClass("hover");
});

/* 全站各种验证条件 
* by lyf 2014.10.16
*/
var regPhoneNum = /^(\+86)?1[34578]\d{9}$/;
function regPhone(phoneNum) {
    return regPhoneNum.test(phoneNum);
};
//顶部搜索
var _defaultText = ["输入商城名查看返还，例如：凡客", "输入关键字搜宝贝、商城、优惠券", "输入宝贝名称/宝贝网址查看返还，例如：李宁", "请输入团购商品或团购名称哦", "输入商城名找优惠券，例如：凡客", "请输入团购商品或团购名称哦", "搜商城 或 粘贴淘宝/天猫宝贝标题"];
var regRow = /[,|.|，|。|\/|、|~|!|！|？|?|@|\||+|-|*|.|;|'|；|"|“|:|：|#|$|￥|%|……|^|-|*|(|)|（|）|_|——|=|\s]/g;
//搜索操作
$(".search .search-select").html($("#search_item li.current").html());
var timeSearch = null;
$(".search .search-select,.search .search-square").mouseover(function () {
    timeSearch = setTimeout(function () {
        $(".search .search-select").hide();
        $(".search .search-square").addClass("search-square-down");
        $("#search_item").show();
    }, 150)
}).mouseout(function () {
    clearTimeout(timeSearch);
});
$(".searchInputImage").hover(function () {
    $(this).toggleClass("hover");
    $(this).parents(".search").toggleClass("hover");
})
$("#search_item").hover(function () {
    $("#search_item li").mouseover(function () {
        $(this).addClass("hover").siblings().removeClass("hover");
    }).click(function () {
        var oldId = $("#search_item li.current").attr("id");
        $(this).addClass("current").siblings().removeClass("current");
        $(".search .search-select").html($("#search_item li.current").html());
        if ($(this).html() != $("#search_item li:first-child").html()) {
            $(this).insertBefore($("#search_item li").first());
            $(".search .search-select, .search .search-square").show();
            $(".search .search-square").removeClass("search-square-down");
            $("#search_item").hide();
        }
        var index = 1;
        var navId = $(this).attr("id");
        switch (navId) {
            case "hs_tb":
            default:
                index = 1;
                break;
            case "hs_mall":
                index = 0;
                break;
            case "hs_tg":
                index = 3;
                break;
            case "hs_yhq":
                index = 4;
                break;
        }
        var oldindex = 1;
        switch (oldId) {
            case "hs_tb":
            default:
                oldindex = 1;
                break;
            case "hs_mall":
                oldindex = 0;
                break;
            case "hs_tg":
                oldindex = 3;
                break;
            case "hs_yhq":
                oldindex = 4;
                break;
        }
        if ($(".SearchInputText").val() == "" || $(".SearchInputText").val() == _defaultText[oldindex]) {
            $(".SearchInputText").attr("value", _defaultText[index]);
        } else {
            HeadMallSuggest($.trim($(".SearchInputText").val()));
            $(".J_show").hide();
            $(".J_show .sts").hide();
        }
    });
}, function () {
    $(this).hide();
    $(".search .search-select,.search .search-square").show();
    $(".search .search-square").removeClass("search-square-down");
});

var searchInputIsFocus = false;
$(".SearchInputText").focus(function () {
    searchInputIsFocus = true;
    var suggestRow = $(".search_input .sts"),
        showBox = $('.J_show');
    suggestRow.show();
    // 判断输入的是不是网址，如果是则不显示下拉框
    var val = $('.SearchInputText').val();
    var reg = /http:\/\/.+/gi;
    var status = reg.test(val);
    if (!status) { // 如果不是链接地址
        showBox.show();
        if (suggestRow.length > 0) {
            $(".J_show").show();
        }
    }
    if ($("#search_item").is(":visible")) {
        $("#search_item").hide();
    }
    $(".search .search-select,.search .search-square").show();
    $(".search .search-square").removeClass("search-square-down");
    var navId = $("#search_item li.current").attr("id");
    var index = navId == "hs_mall" ? 0 : navId == "hs_tb" ? 1 : navId == "hs_tg" ? 3 : 4;
    /* 首页单独处理 */
    if ($("#homeNavId").length == 1) {
        index = 6;
    }
    $(this).css("color", "#333");
    /* /首页单独处理 */

    if ($(this).val() == "搜商城 或 粘贴淘宝/天猫宝贝标题" || $(this).val() == "请粘贴 淘宝/天猫 宝贝标题") {
        $(this).val("");
        $(this).next().hide();
        if (index == 6) {
            $(this).css({ 'margin-left': 32 });
            $(".float_search_box .SearchInputText").css({ 'margin-left': 25 });
        }
    }
}).blur(function () {
    searchInputIsFocus = false;
    if (isSearching == 1) {
        if ($(this).val() == "") {
            $(this).attr("value", "请粘贴 淘宝/天猫 宝贝标题");
        }
        $(this).css("color", "#ccc");
        $(".SearchInputText").next().show();
    } else {
        $(this).css("color", "#ccc");
        $(".SearchInputText").next().show();
    }
    var navId = $("#search_item li.current").attr("id");
    var index = navId == "hs_mall" ? 0 : navId == "hs_tb" ? 1 : navId == "hs_tm" ? 2 : navId == "hs_tg" ? 3 : 4;
    /* 首页单独处理 */
    if ($("#homeNavId").length == 1) {
        index = 6;
    }
    /* /首页单独处理 */
    if ($.trim($(this).val()) == "") {
        $(this).val(_defaultText[index]);
        $(".SearchInputText").css({ "color": "#ccc" });
        if (index == 6) {
            $(".SearchInputText").css({ 'margin-left': 32 });
            $(".float_search_box .SearchInputText").css({ 'margin-left': 25 });
        }
        $(".SearchInputText").next().show();
    }
    setTimeout(function () {
        $(".J_show").hide();
        $(".Text_Ts_Box .sts").css("display", "none");
    }, 200);
    if ($(this).attr("value") == "") {
        $(this).css("color", "#9C9C9C");
    }
});

// search suggest
$(".search_input .sts").live("mouseover", function () {
    $(".search_input .sts").removeClass("hover");
    $(this).addClass("hover");
}).live("mouseout", function () {
    $(this).removeClass("hover");
}).live("click", function () {
    var navIndex = $("#search_item li.current").attr("id");
    switch (navIndex) {
        case "hs_tb":
        default:
            navIndex = 1;
            break;
        case "hs_mall":
            navIndex = 0;
            break;
        case "hs_tg":
            navIndex = 3;
            break;
        case "hs_yhq":
            navIndex = 4;
            break;
    }
    //    if (testKeyWord($(this).find(".left").text())) {
    if (navIndex == 1) {
        var _url = $(this).attr("url");
        for (var i = 0, l = $(".show > .sts").length; i < l; i++) {
            if (_url == $(".show > .sts").eq(i).attr("url")) {
                var _type = $(".show > .sts").eq(i).attr("data-type");
                if (_type == "mall") {
                    $.cookie("home_cur_catename", null, { path: "/", expires: -1, domain: _domain });
                    break;
                }
            }
        }
        window.open($(this).attr("url"));
    }
    else {
        window.open($(this).attr("url"));
    }
    //    }
});
/** 
* 搜索表单提交
*/
function SearchMall(event) {
    var keyword = $.trim($(".SearchInputText").attr("value"));
    //搜索索引
    var navIndex = 1;
    var navId = $("#search_item li.current").attr("id") || $("#homeNavId").val();
    switch (navId) {
        case "hs_tb":
        default:
            navIndex = 1;
            break;
        case "hs_tm":
            navIndex = 1;
            break;
        case "hs_mall":
            navIndex = 0;
            break;
        case "hs_tg":
            navIndex = 3;
            break;
        case "hs_yhq":
            navIndex = 4;
            break;
    }
    /* 首页单独处理 */
    if ($("#homeNavId").length == 1) {
        navIndex = 6;
    };

    if ($(".SearchInputText").val() == "搜商城 或 粘贴淘宝/天猫宝贝标题" || $(".SearchInputText").val() == "" || $(".SearchInputText").val() == "请粘贴 淘宝/天猫 宝贝标题") {
        alert("请输入关键字。");
        return false; 
    }
   if (navIndex == 3) {
        // 判断如果是URL地址则按地址方式搜索
        var sSearchText = getValue($(".SearchInputText"));
        var rUrlPattern = /^[a-zA-z]+:\/\/[^\s]*$/;
        if (rUrlPattern.test(sSearchText)) {
            $(".head_form").attr("action", "http://taobao.fanhuan.com/search/item?url=" + encodeURIComponent(sSearchText));
            return true;
        }
        $(".head_form").attr("action", "http://tuan.fanhuan.com/?kw=" + encodeURIComponent(keyword));
        return true;
    }
    else if (navIndex == 4) {

        // 判断如果是URL地址则按地址方式搜索
        var sSearchText = getValue($(".SearchInputText"));
        var rUrlPattern = /^[a-zA-z]+:\/\/[^\s]*$/;
        if (rUrlPattern.test(sSearchText)) {
            $(".head_form").attr("action", "http://taobao.fanhuan.com/search/item?url=" + encodeURIComponent(sSearchText));
            return true;
        }
        if ($(".Text_Ts_Box .show .sts").length) {
            if ($(".Text_Ts_Box .show .sts").hasClass("hover")) {
                $(".head_form").attr("action", $(".Text_Ts_Box .show .hover").eq(0).attr("url"));
            } else {
                $(".head_form").attr("action", $(".Text_Ts_Box .show .sts").eq(0).attr("url"));
            }
        } else {
            alert("抱歉，搜索不到任何优惠券");
            return false;
        }
        return true;
    }
    else if (navIndex == 1 || navIndex == 6) {
        if (!searchItem()) {
            //$(".SearchInputText").val("");
            return false;
        }
        var _url = $(".head_form").attr("action");
        for (var i = 0, l = $(".show > .sts").length; i < l; i++) {
            if (_url == $(".show > .sts").eq(i).attr("url")) {
                var _type = $(".show > .sts").eq(i).attr("data-type");
                if (_type == "mall") {
                    $.cookie("home_cur_catename", null, { path: "/", expires: -1, domain: _domain });
                    return true;
                }
            }
        }
    }
}
/** 
* 搜索提示
* @pare {string} neword 用户输入值 
*/
function HeadMallSuggest(neword) {
    var navId = $("#search_item li.current").attr("id");
    $(".J_show").html("").show();
    //搜商城 by cjf 20131205 取消
    /* 首页单独处理 */
    if ($("#homeNavId").length == 1) {
        navId = $("#homeNavId").val();
    }
    /* 首页单独处理 */
   
    //搜淘宝/天猫
    if (navId == "hs_tb") {
        if (neword.toLowerCase().replace(regRow, "") != "") {
            if (testKeyWord(neword)) {
                $(".J_show").html("");
                var mallRow = '';
                var yhqRow = '';
                var tgRow = '';
                var tbRow = '';
                var j = 0;
                var count_j = 0;
                var rUrlPattern = /^[a-zA-z]+:\/\/[^\s]*$/;
                var isTbMall = false;
                // 判断输入的是不是网址，如果是则不显示下拉框
                var val = $('.SearchInputText').val();
                var reg = /http:\/\/.+/gi;
                var status = reg.test(val);

                //搜索淘宝/天猫相关
                tbRow = '<div class="sts sts-tb sts-tit sts-add" url="' + 'http://taobao.fanhuan.com/tbs/?keyword=' + encodeURIComponent(formatKeyword(neword)) + '"><span class="left">搜“<strong>' + charAtEllipsis(formatKeyword(neword), 10, 8) + '</strong>”相关淘宝/天猫宝贝<em>&gt;&gt;</em></span><span class="right"></span><div class="clear"></div></div>';
                $(".J_show").append(tbRow);
                $(".J_show").append(yhqRow);

                $(".J_show .sts:first").addClass("sts-first").siblings().removeClass("sts-first");
                $(".J_show .sts:last").addClass("sts-last").siblings().removeClass("sts-last");
            }
        }
    }
}
//限制字符显示...
function charAtEllipsis(str, maxlong, minlong) {
    if (str.length >= maxlong) {
        str = str.substring(0, minlong) + "...";
    }
    return str;
}
//淘宝搜索
function Head_TB_Suggest(q) {
    CreateJScript("tb_suggest", "http://suggest.taobao.com/sug?code=utf-8&callback=ShowTBSuggest&q=" + q);
}
function ShowTBSuggest(data) {
    var suggetList = data.result;
    var suggestRow = '';
    var count_j = 0;
    if (suggetList.length == 0) {
        return "";
    }
    for (var i in suggetList) {
        if (count_j < 5) {
            var link = "http://taobao.fanhuan.com/tbs/?keyword=" + encodeURIComponent(formatKeyword(suggetList[i][0]));
            suggestRow += '<div class="sts sts-tb sts-add sts-tb-first" url="' + link + '"><span class="left" style="width:90%">' + formatKeyword(suggetList[i][0]) + '</span><span class="right"></span><div class="clear"></div></div>';
        }
        count_j++;
    }
    if (status) { // 如果是商城
        $(".J_show").hide();
    }
    if (status) { // 如果是商城
        $(".J_show").hide();
    }
    $(".J_show").append(suggestRow);
    $(".J_show .sts-tb-first").insertBefore($(".J_show .sts-tit").eq(0));
    $(".J_show .sts:first").addClass("sts-first").siblings().removeClass("sts-first");
    $(".J_show .sts:last").addClass("sts-last").siblings().removeClass("sts-last");
}

// 过滤用户输入的链接地址,提取关键字
function keyWord(str) {
    var reg = /([^.]+)/gi;
    var arr = str.match(reg);
    // 对商城做特殊处理（关键字）
    if (arr[1] == 'vip') {
        arr[1] = 'vipshop';
    }
    return arr[1];

}

/** 
* 搜淘宝/天猫 start 
*/
function searchItem() {
    var sSearchText = getValue($(".SearchInputText"));
    // 判断输入的是不是网址
    var reg = /http:\/\/.+/gi;
    var status = reg.test(sSearchText);
    if (status && sSearchText.indexOf('taobao') == -1 && sSearchText.indexOf('tmall') == -1) { // 如果不是淘宝或者天猫的网址
        var sSearchText = keyWord(sSearchText);
    }
    var rUrlPattern = /^[a-zA-z]+:\/\/[^\s]*$/;
    var sKeyWord = formatKeyword(sSearchText);
    // 判断如果是URL地址则按地址方式搜索
    if (rUrlPattern.test(sSearchText)) {

        $(".head_form").attr("action", "http://taobao.fanhuan.com/search/item?url=" + encodeURIComponent(sSearchText));
        return true;
        //        location.href = 'http://taobao.fanhuan.com/error/ProductNotFound?url=' + encodeURIComponent(sSearchText);
        //        return false;
    }

    if (containsIllegalKeywords(sKeyWord)) {
        $(".Text_Ts_Box .sts").remove();
        alert('很抱歉，您不能搜索此关键字。请尝试检索其他商品。');
        $(".SearchInputText").val("");
        return false;
    } else {
        if (sSearchText.replace(regRow, "") == "") {
            return false;
        }
        else {
            if ($(".Text_Ts_Box .show .sts").hasClass("hover")) {
                if ($(".Text_Ts_Box .show .hover").hasClass("sts-tb")) {
                    if ($(".Text_Ts_Box .show .hover").hasClass("sts-tit")) {
                        $(".head_form").attr("action", ("http://taobao.fanhuan.com/tbs/?keyword=" + encodeURIComponent(sSearchText)));
                    } else {
                        $(".head_form").attr("action", ("http://taobao.fanhuan.com/tbs/?keyword=" + encodeURIComponent($(".Text_Ts_Box .show .hover").find(".left").text())));
                    }
                    //                    if ($.cookie("q_message") === null) {
                    //                        showItemSearchTips();
                    //                    }
                } else {
                    $(".head_form").attr("action", $(".Text_Ts_Box .show .hover").eq(0).attr("url"));
                    $(".Text_Ts_Box .show .hover").removeClass("hover");
                }
            } else {
                if (($(".Text_Ts_Box .show .sts-add").length > 1) && ($(".Text_Ts_Box .show .sts-add[data-type=mall]").length > 0)) {
                    $(".head_form").attr("action", $(".Text_Ts_Box .show .sts-add").eq(0).attr("url"));
                } else {
                    $(".head_form").attr("action", ("http://taobao.fanhuan.com/tbs/?keyword=" + encodeURIComponent(sSearchText)));
                }
                //                $(".head_form").attr("action", ("http://taobao.fanhuan.com/tbs/?keyword=" + encodeURIComponent(sSearchText)));


                //                if ($.cookie("q_message") === null) {
                //                    showItemSearchTips();
                //                }
            }
            return true;
        }
    }

}
//验证非法关键字
function testKeyWord(value) {
    var reg = /^[a-zA-z]+:\/\/[^\s]*$/;
    var key = formatKeyword(value);
    if (containsIllegalKeywords(key)) {
        $(".Text_Ts_Box .sts").remove();
        //        alert('很抱歉，您不能搜索此关键字。请尝试检索其他商品。');
        //        $(".SearchInputText").val("");
        return false;
    } else {
        return true;
    }
}
//非法关键字验证
var ILLEGAL_KEYWORDS = [
//            "网赚",
//            "网络赚钱",
//            "百家乐",
//            "电子狗",
//            "黑客",
//            "赌具"
        ];
function containsIllegalKeywords(hit) {
    for (var i = 0; i < ILLEGAL_KEYWORDS.length; i++) {
        if (hit.indexOf(ILLEGAL_KEYWORDS[i]) != -1) {
            return true;
        }
    }
}
//formatKeyword 
function formatKeyword(keyword) {
    if (!keyword) {
        return "";
    }
    var chars = [/\//g, /\*/g, /\?/g, /</g, />/g, /%/g, /\:/g, /\|/g, /\?/g, "\""], iCharsLength = chars.length;
    for (var i = 0; i < iCharsLength; i++) {
        keyword = keyword.replace(chars[i], "");
    }
    return keyword;
}
/* getvalue */
function getValue(elem) {
    if (elem.jquery) {
        return trim(elem.val());
    } else if (typeof elem.value !== "undefined") {
        return trim(elem.value);
    } else {
        return null;
    }
}
/* trim */
function trim(text) {
    if (text == null) {
        return "";
    }
    if (typeof String.prototype.trim !== "function") {
        return text.toString().replace(/^\s+/, "").replace(/\s+$/, "");
    }
    return text.toString().trim();
}


// search suggest
var _timeOutId = 0;
var _productKeyWord = "";
var _headKeyWord = "";
var _homeKeyWord = "";
var _interval = 200;
$(".SearchInputText").bind("keyup focus", function (event) {

    //console.log(this.value);
    var suggestRow = $(".search_input .sts");
    var arrRow = [];
    for (var j = 0; j < suggestRow.length; j++) {
        if (suggestRow.eq(j).is(":visible")) {
            arrRow.push(j);
        }
    }
    var suggestNum = arrRow.length;
    var newWord = $(this).attr("value").toLowerCase();

    // 同步两个搜索框的内容
    if ($(this).parents(".float_search_box").length) {
        $(".headeBlock").find(".SearchInputText").val(newWord);
    }

    var currentId = $(this).attr("class");
    var myEvent = event || window.event;
    var keyCode = myEvent.keyCode;
    if (keyCode == 13) {

        //if (currentId == "SearchInputText") { if (_headKeyWord == newWord) { SearchMall(); } else { clearTimeout(_timeOutId); _timeOutId = setTimeout(function () { HeadMallSuggest($.trim(newWord)); _headKeyWord = newWord; }, _interval); } return; }
        //if (currentId == "Search_Index") { if (_homeKeyWord == newWord) { var url = $("#shoplogo_ul").find("a").eq(0).attr("href"); if (url != undefined) (window.open(url)); } else { clearTimeout(_timeOutId); _timeOutId = setTimeout(function () { HomeMallSuggest($.trim(newWord)); _homeKeyWord = newWord; }, _interval); } return; }
    }
    if (keyCode == 38 || keyCode == 40) {
        if (currentId != "SearchInputText") { return; }
        if (suggestRow.is(":visible")) {
            var i = "";
            //alert(arrRow.join(","));
            if (keyCode == 38) {
                if (suggestRow.index(suggestRow.filter(".hover").eq(0)) >= 0) {
                    for (var x = 0; x < arrRow.length; x++) {
                        if (arrRow[x] == suggestRow.index(suggestRow.filter(".hover").eq(0)))
                            i = x;
                    }
                } else {
                    i = 0;
                }
                if (i == suggestNum || i == 0) {
                    i = suggestNum;
                }
                i--;
                //alert(i);
                //alert(arrRow.join());
            } else {
                if (suggestRow.index(suggestRow.filter(".hover").eq(0)) >= 0) {
                    for (var x = 0; x < arrRow.length; x++) {
                        if (arrRow[x] == suggestRow.index(suggestRow.filter(".hover").eq(0)))
                            i = x;
                    }
                } else {
                    i = -1;
                }
                if (i >= suggestNum - 1) {
                    i = -1;
                }
                i++;
            }
            suggestRow.eq(arrRow[i]).addClass("hover").siblings().removeClass("hover");
            //alert(arrRow[i-1]);
            //$(this).val(suggestRow.eq(arrRow[i]).find(".left").text());
        } else {
            _timeOutId = setTimeout(function () {
                HeadMallSuggest($.trim(newWord));
                _headKeyWord = newWord;
            }, _interval);
        }
        return;
    }
    if (newWord == "") {
        clearTimeout(_timeOutId);
        switch (currentId) {
            case "SearchInputText":
                _headKeyWord = "";
                $(".Text_Ts_Box .show").hide();
                $(".Text_Ts_Box .sts").css("display", "none");
                break;
            case "Search_Index":
                _homeKeyWord = "";
                $("#sidebar_ul li .active").eq(0).click();
                break;
            case "Search_Index_New":
                _productKeyWord = "";
                $("#sidebar_show_ul li .active").eq(0).click();
                break;
        }
        return;
    }
    switch (currentId) {
        case "SearchInputText":
            if (_headKeyWord != newWord) {
                clearTimeout(_timeOutId);
                _timeOutId = setTimeout(function () {

                    HeadMallSuggest($.trim(newWord));
                    _headKeyWord = newWord;
                }, _interval);
            }
            break;
        case "Search_Index":
            if (_homeKeyWord != newWord) {
                clearTimeout(_timeOutId);
                _timeOutId = setTimeout(function () {
                    HomeMallSuggest($.trim(newWord));
                    _homeKeyWord = newWord;
                }, _interval);
            }
            break;
    }

    // 对输入的值进行判断,如果是链接地址，则提取关键字
    var reg = /http:\/\/.+/gi;
    var status = reg.test(newWord);
    if (status) {
        var newWord = keyWord(newWord);
    }
});


/************************************分割线******************************************/
var _path = location.pathname.toLowerCase();
function GetTbUrl(keyword, inMall) {
    var url = "http://taobao.fanhuan.com/";
    id = GetItemId(keyword);
    if (id == "") {
        url += "s/" + FormatKeyWord(keyword) + (inMall ? "?mall_item=true" : "");
    } else {
        url += "convert/" + id;
    }
    return url;
}
function FormatKeyWord(keyword) {
    var chars = [/\//g, /\*/g, /\?/g, /</g, />/g, /%/g, /\:/g, /\|/g, /\?/g, "\""];
    for (var i = 0; i < chars.length; i++) {
        keyword = keyword.replace(chars[i], "");
    }
    return encodeURIComponent(keyword);
}
function GetItemId(url) {
    if (url.indexOf("http://detail.tmall.com/item.htm") != 0 && url.indexOf("http://item.taobao.com/item.htm") != 0) {
        return "";
    }
    var query = url.split("?")[1];
    if (query == undefined) {
        return "";
    }
    ps = query.split("&");
    for (var i = 0; i < ps.length; i++) {
        var nv = ps[i].split("=");
        if (nv[0] == "id") {
            var id = nv[1];
            if (id == undefined) {
                return "";
            }
            if (/^[0-9]+$/.test(id)) {
                return id;
            }
        }
    }
    return "";
}
// union login
function TbLogin() {
    $.cookie("TargetUrl", top.location, { path: "/", domain: _domain });
    window.top.location.href = "https://passport.fanhuan.com/ajax/taobao";
}
function LoginFrom(site) {
    //window.open("https://passport.fanhuan.com/ajax/" + site + "/", "_blank");
    //window.top.location.href = "https://passport.fanhuan.com/ajax/" + site + "/";
    if (location.host == "passport.fanhuan.com") {
        window.top.location.href = "https://passport.fanhuan.com/ajax/" + site + "/"
    } else {
        top.location.href = "https://passport.fanhuan.com/ajax/" + site + "/?lp=" + encodeURIComponent(location.href);
    }
}

window.code = { isverfiy: false };
// login box
function Login(index) {
    //var login = location.search.split("&tip")[1];

    var index_login = encodeURIComponent("");
    var other_login = encodeURIComponent("请先登录");
    $('#TB_window').hide().html("");
    if (index) {
        var str = tb_show('', '', '', index_login);
        Geetcaptcha("#captchaReg", code);
    } else {
        tb_show('', '', '', other_login);
        Geetcaptcha("#captchaReg", code);
    }
    $('#TB_window').css({
        "border": "6px solid #b4b4b4",
        "border-color": "rgba(0,0,0,0.15)",
        "background": "none",
        "width": "640px",
        "height": "308px",
        "overflow": "hidden",
        "z-index": 1002
    });
    $("#TB_title").css({
        "background": "#fff",
        "border": "0 none",
        "height": 0
    }).next("iframe").css({
        "margin": 0,
        "height": "324px"

    }).attr({ "scrolling": "no", "frameborder": 0 });
    $("#TB_ajaxWindowTitle").css({
        "float": "none",
        "padding": 0,
        "margin": 0
    });
    $("#TB_closeAjaxWindow").css({
        "float": "none",
        "padding": 0,
        "margin": 0
    });
    $("#TB_closeAjaxWindow_a").css({
        "padding": 0,
        "margin": 0
    });
    $("#TB_closeWindowButton").html("×").addClass("pop-close");
}

function LogOut() {
    $.cookie("user_id", "", { path: "/", expires: -1, domain: _domain });
    $.cookie("user_name", "", { path: "/", expires: -1, domain: _domain });
    $.cookie("A9D5EMD96D5E5G", "", { path: "/", expires: -1, domain: _domain });
    $.cookie("ctuskytime_cookie", "", { path: "/", expires: -1, domain: _domain });
    $.cookie("wel_cookie", "", { path: "/", expires: -1, domain: _domain });
    $.cookie("my_cookie", "", { path: "/", expires: -1, domain: _domain });
     location.href = "/user/loginout.html";
}
function ShowPageNum(total, currentpage, pagesize, url, functionname, isdetialed, endMiddlePage) {
    var PageCount = total % pagesize == 0 ? total / pagesize : Math.ceil(total / pagesize);
    if (PageCount < 2) {
        return "";
    }
    if (currentpage > PageCount) {
        currentpage == PageCount;
    }
    var HtmlCode = "";
    HtmlCode += "<span class='page_area'>";
    if (isdetialed) {
        if (currentpage == 1) {
            HtmlCode += "<span class='page_start'><i></i></span>";
        } else {
            HtmlCode += "<a class='page_prev' href = \"" + GetLink(functionname, url, currentpage - 1) + "\"><i></i></a>";
        }
    }

    var EPPNC = 5;
    var MID = 3;
    if (typeof endMiddlePage == 'number') {
        EPPNC = endMiddlePage;
        if (endMiddlePage % 2 == 1) {
            MID = (EPPNC - 1) / 2;
        } else {
            MID = EPPNC / 2;
        }
    }
    if (PageCount <= EPPNC) {
        for (var i = 1; i <= PageCount; i++) {
            if (i == currentpage) {
                HtmlCode += "<span class='page_cur'>" + currentpage + "</span>";
            } else {
                HtmlCode += "<a href = \"" + GetLink(functionname, url, i) + "\">" + i + "</a>";
            }
        }
    } else {
        var EndPageNum = currentpage + MID;
        if (currentpage <= MID) {
            EndPageNum = EPPNC;
        } else if (currentpage > PageCount - MID) {
            EndPageNum = PageCount;
        }
        if (isdetialed) {
            if (EndPageNum > EPPNC) {
                HtmlCode += "<a href = \"" + GetLink(functionname, url, 1) + "\">1</a>";
                if (EndPageNum > EPPNC + 1) {
                    HtmlCode += "<span class='page_ellipsis'>...</span>";
                }
            }
        }
        for (var i = EndPageNum - EPPNC + 1; i < EndPageNum + 1; i++) {
            if (i == currentpage) {
                HtmlCode += "<span class='page_cur'>" + currentpage + "</span>";
            } else {
                HtmlCode += "<a href = \"" + GetLink(functionname, url, i) + "\">" + i + "</a>";
            }
        }
        if (isdetialed) {
            if (EndPageNum < PageCount) {
                if (EndPageNum < PageCount - 1) {
                    HtmlCode += "<span class='page_ellipsis'>...</span>";
                }
                HtmlCode += "<a href = \"" + GetLink(functionname, url, PageCount) + "\">" + PageCount + "</a>";
            }
        }
    }
    if (isdetialed) {
        if (currentpage != PageCount) {
            HtmlCode += "<a class='page_next' href = \"" + GetLink(functionname, url, currentpage + 1) + "\"><i></i></a>";
        } else {
            HtmlCode += "<span class='page_end'><i></i></span>";
        }
    }
    HtmlCode += "</span>";
    return HtmlCode;
}
function GetLink(functionname, url, pageindex) {
    var Link = (functionname == undefined || functionname == "") ? url + pageindex : "javascript:" + functionname + "('" + url + pageindex + "')"; return Link;
}
function CreateJScript(id, url) {
    if (document.getElementById(id) != null) {
        DeleteJScript(id);
    }
    var s = document.createElement("script");
    s.setAttribute("src", url);
    s.setAttribute("id", id);
    s.setAttribute("type", "text/javascript");
    document.getElementsByTagName("head")[0].appendChild(s);
    s = null;
}
function DeleteJScript(id) {
    var children = document.getElementById(id);
    if (children != null) {
        var parent = children.parentNode;
        parent.removeChild(children);
        children = null;
    }
}
function addFavorite(par) {
    CloseNLRAF(true);
    var _addHref = null;
    if (par == "childreTop") {
        var _addHref = "/";
    } else if (par == 'welcomefavorite') {
        var _addHref = "/";
    } else {
        var _addHref = location.href + (par == true ? "?from=topfavorite" : "");
    }
    if ($.browser.msie) {
        try {
            window.external.addFavorite(_addHref, '返还网-省钱，从返还网开始。');
        } catch (err) {
            alert('请按键盘 CTRL键 + D 收藏返还网');
        }
    } else {
        if ($.browser.mozilla) {
            try {
                window.sidebar.addPanel('返还网-网购，从返还网开始。', _addHref, "");
            } catch (err) {
                alert('请按键盘 CTRL键 + D 收藏返还网');
            }
        } else {
            alert('请按键盘 CTRL键 + D 收藏返还网');
        }
    }
    return false;
}
function CloseNLRAF(c) {
    if (c) {
        $.cookie('NLRAF', 'true', { path: "/", expires: 30, domain: _domain });
    } else {
        $.cookie('NLRAF', 'true', { path: "/", domain: _domain });
    }
    $('#afp').slideUp();
}
function SetHome(par) {
    var url = window.location.href + (par == undefined ? "" : par);
    try {
        document.body.style.behavior = 'url(#default#homepage)';
        document.body.setHomePage(url);
    } catch (e) {
        if (window.netscape) {
            try {
                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            } catch (e) {
                alert("当前浏览器禁止此操作。您可点击浏览器上方的 工具，选项 手动将\n" + url + " 设为您的主页");
                return false;
            }
            var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
            prefs.setCharPref('browser.startup.homepage', url);
        }
    }
    return false;
}
//------- bind event
$("a").click(function () { $(this).blur(); });

// navigation
if ( ( _path.indexOf("/rebate") > -1)) {
    $("#nav li a[name='nav-tb']").addClass("active");
} else if (_path == "/") {
    $("#nav li").eq(0).children("a").addClass("active");
}

//导航下拉
$(".nav-a").mouseover(function () {
    $(this).next(".nav-dropdown").show();
    $(this).find(".i-site-arrow").css("background-position", "-64px 0px");
}).mouseout(function () {
    $(this).next(".nav-dropdown").mouseover(function () {
        $(this).show();
        $(this).prev(".nav-a").find(".i-site-arrow").css("background-position", "-64px 0px");
        if (location.hostname != "taobao.fanhuan.com") {
            $(this).prev(".nav-a").addClass("active");
        }
    }).mouseout(function () {
        $(this).hide();
        if (location.hostname != "taobao.fanhuan.com") {
            $(this).prev(".nav-a").removeClass("active");
        }
        $(this).prev(".nav-a").find(".i-site-arrow").css("background-position", "-64px -5px");
    });
    $(this).next(".nav-dropdown").hide();
    if (location.hostname != "taobao.fanhuan.com") {
        $(this).find(".i-site-arrow").css("background-position", "-64px -5px");
    }
})

$("#nav li.first_menu").hover(function () {
    $(this).addClass("nav_hover");
}, function () {
    $(this).removeClass("nav_hover");
});
// left navigation
$("#menu li a,#sidebar_ul li a").hover(function () {
    $(this).addClass("hover");
}, function () {
    $(this).removeClass("hover");
});
$("#menu li.first a").hover(function () {
    $(this).addClass("hover1");
}, function () {
    $(this).removeClass("hover1");
});
$("#menu li .active").unbind();

// seo statistic
LogSeo(document.referrer);
function LogSeo(referrerUrl) {
    if (referrerUrl.indexOf("http://www.baidu.com/s") == -1) {
        return;
    }
    if ($.cookie("advertisement") != null) {
        return;
    }
    var parameters = GetQueryParameter(referrerUrl);
    if (parameters == null) {
        return;
    }
    var keyword = parameters["wd"] || parameters["word"];
    if (keyword == null) {
        return;
    }
    var encoding = parameters["ie"] || "gb2312";
}
function LogSeoCallback(ticket) { $.cookie("advertisement", ticket, { path: "/", domain: _domain }); }
// 获取链接的参数
function GetQueryParameter(url) {
    if (url == null) {
        return null;
    }
    var urlFregments = url.split("?");
    if (urlFregments.length != 2) {
        return null;
    }
    if (urlFregments[1].length == "") {
        return null;
    }
    var parameterFregments = urlFregments[1].split("&");
    var parameters = new Object();
    for (var i = 0; i < parameterFregments.length; i++) {
        nameValue = parameterFregments[i].split("=");
        if (nameValue.length != 2) {
            continue;
        }
        if (nameValue[0] == "" || nameValue[1] == "") {
            continue;
        }
        parameters[nameValue[0]] = nameValue[1];
    }
    return parameters;
}

//表单提交防止弹窗被拦截
function Search_form() {
    var key = $.trim($("#Search_Index").attr("value").toLowerCase());
    if (key) {
        var url = $("#shoplogo_ul").find("a").eq(0).attr("href");
        if (url != undefined) {
            $("#coop_form").attr("action", url);
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}
// 淘宝暂停搜索
var SuspendSearch = function (url) {
    var _html = '<div id="pop_bg" style=""></div><div id="q_message"><p class="q_con"><img src="assets/images/qin_bg.png" alt="亲爱的用户：你的搜索将直接跳转到淘宝网的搜索结果页面，从该搜索结果中挑选宝贝并购买，不会影响购物返还。除虚拟商品外，所有商品均可享受现金返还。" /></p><p class="q_tips">该搜索结果页面因淘宝接口变化，暂时看不到返还比例。但您可以通过点击<a href="http://taobao.fanhuan.com/">taobao.fanhuan.com</a>的搜索框顶部的“搜宝贝返还”来搜索该店铺的返还比例。</p><p class="solign_active"><label for="q_remind"><input type="checkbox" name="remind" id="q_remind" />下次不再提醒</label><a class="q_btn" target = "_blank" href=' + url + ' onclick = "return POP_close();">我知道了，跳转吧</a></p></div>';
    $('#wrapper').after(_html);
}
//淘宝亲 关闭、打开弹窗
function POP_close() {
    if ($('#q_message :input[name=remind]')[0].checked) {
        $.cookie("q_message", "close", { path: "/", expires: 30, domain: _domain });
    } else {
        $.cookie("q_message", "close", { path: "/", domain: _domain });
    }
    $("#q_message,#pop_bg").remove();
    return true;
}
function POP_SearchTB(url) {
    if ($.cookie("q_message")) {
        window.open(url);
    } else {
        SuspendSearch(url);
    }
}

//弹窗定位
function LayoutPop(obj, time) {
    var winHeight = $(window).height();
    var winWidth = $(window).width();
    var div;
    if (obj) {
        div = obj;
    } else {
        div = $(".pop").eq(0);
    }
    if (div.height() < winHeight) {
        div.css({
            "margin-top": 0
        });
        if (time) {
            div.stop(true).animate({ "top": (winHeight - div.height()) * 3 / 8 + "px" }, time);
        } else {
            div.css({
                "margin-top": 0,
                "top": (winHeight - div.height()) * 3 / 8 + "px"
            });
        }

    } else {
        div.css({
            "top": 0,
            "margin-top": 0
        });
    }
}

//返回顶部
//var topDistance = 400; //距离顶部的距离
var showDistance = 5; //距离顶部多少出现返回顶部
var showfuck12 = 500;
var toTopHtml = '<div id="J_bottom_box" class="bottom-box">';
toTopHtml += '<div class="btn-join"><a href="http://hezuo.fanhuan.com" target="_blank"></a></div>';
toTopHtml += '<div id="goTop"><a href="javascript:void(0)" title="返回顶部"></a></div></div>';
$("body").append(toTopHtml);

if ($(".inquire-into").is(":visible")) {
    $("#goTop").css({ "bottom": "260px" })
} else {
    $("#goTop").css({ "bottom": "20px" })
}
$(window).scroll(function () {
    if ($(window).scrollTop() >= showDistance) {
        $("#J_bottom_box").fadeIn("slow");
    }
    else {
        $("#J_bottom_box").fadeOut("slow");
    }
});
$(window).scroll(function () {
    if ($(window).scrollTop() >= showfuck12) {
        $(".rightfix").fadeIn("slow");
    } else {
        $(".rightfix").fadeOut("fast");
    }
})
$("#goTop a").click(function (e) {
    e.preventDefault();
    $("html").animate({ scrollTop: 0 }, "fast"); // IE FF
    $("body").animate({ scrollTop: 0 }, "fast"); // webkit
});
$(".backup").click(function (e) {
    e.preventDefault();
    $("html").animate({ scrollTop: 0 }, "fast"); // IE FF
    $("body").animate({ scrollTop: 0 }, "fast"); // webkit
});
//移入显示二维码
$(function () {
    $("#mbAPP").mouseover(function () {
        $(".nav_app_ewm").show();
    });
    $("#mbAPP").mouseleave(function () {
        $(".nav_app_ewm").hide();
    });
});

// 未读站内信数量，设置与客服的交流障碍，雅虎邮箱问题
function MixOperation(data) {
    if (data == null) {
        //ShowYahooNotice();
        return;
    }
    if (data.unread_msg > 0 && $("#NewMessageCount").length > 0) {
        $("#NewMessageCount").text("(" + data.unread_msg + ")").parents("a").addClass("newmessage");
    } else {
        $("#NewMessageCount").text("(" + 0 + ")").parents("a").removeClass("newmessage");
    }
    if (data.email_postfix.toLowerCase().indexOf('yahoo.') == 0 && CurrentUser.UserName != undefined) {
        if ($.cookie("yahoo_jump") != CurrentUser.UserName) {
            ShowYahooNotice();
        }
        $.cookie("yahoo_jump", CurrentUser.UserName, { path: "/", domain: _domain });
    }
    SetServerLink(data.server_link);
}
function ShowYahooNotice() {
    location.href = "http://my.fanhuan.com/my/changeemail";
}
function SetServerLink(link) {
    if (link == "") {
        return;
    }
    $(".online_servers, .i-site-online, .i-site-offline, #help_service").removeAttr("onclick").attr("href", link).attr("target", "_blank");
}


$('.navfirst').live('click', function () {
    $.cookie("product_cur_catename", "", { path: "/", expires: -1, domain: _domain });
});

// 为所有需要事先登录的元素绑定事件
var btns = $('.J_login_btn');
btns.on('click', function () {
    if (!CurrentUser.UserId) {
        Login(); // login
        return false;
    }
});

(function () {
    //根据用户是否绑定手机，显示绑定手机提示框
    var cookieName = null;
    function ini() {
        var userID = null;
        var phonetip = null;
        var userDetial = $.cookie("userDetial");
        if (userDetial) {
            var userArr = userDetial.split('|');
            userID = userArr[1];
        }
        cookieName = "phonetip_" + userID;
        if (userID) phonetip = $.cookie(cookieName);
        if (!phonetip && userID) {
            $.getJSON("http://my.fanhuan.com/ajax/UserInfoData/?callback=?", function (data) {
                if (data.BindedPhone == 1) return;
                bindPhoneTiShiBox();
            });
        }
    }

    function bindPhoneTiShiBox() {
        var phoneHtml = '<div class="opacity-bg-box">';
        phoneHtml += '<div class="con-phonetip ie6fixedTL">';
        phoneHtml += '<ul class="clearfix">';
        phoneHtml += '<li>';
        phoneHtml += '<p>您正在裸奔</p>';
        phoneHtml += '<p class="phonetip-mg-p">请尽快绑定手机号，保护账户安全哦！</p>';
        phoneHtml += '</li>';
        phoneHtml += '<li class="phonetip-mg"><a class="btn btn-1-40" href="javascript:void(0);" target="_blank" id="bind-phone" bind="1"><span>绑定手机号</span></a></li>';
        phoneHtml += '<li><a class="btn btn-3-40 next-close" href="javascript:void(0);"><span>下一次</span></a></li>';
        phoneHtml += '</ul>';
        phoneHtml += '<a href="#" title="Close" class="pop-close">×</a>';
        phoneHtml += '</div>';
        phoneHtml += '</div>';
        var store = location.host;
        if (store != 'go.fanhuan.com' && location.href.indexOf('www.fanhuan.com/welcome.html') <= -1) {
            $("body").append('<div id="TB_overlay" class="TB_overlayBG" style="opacity:0.4; filter:alpha(opacity=40);"></div>');
            $('body').append(phoneHtml);
        }
        //点击隐藏弹窗
        $(".pop-close,.next-close,#bind-phone").live("click", function () {
            $.cookie(cookieName, 'F%8i3%5fg,45.@/123,y52rtD.6#$', { path: "/", expires: 7, domain: _domain });
            $(".TB_overlayBG").hide();
            $(".opacity-bg-box").hide();
            var bind = $(this).attr("bind");
            if (bind && bind == "1") {
                window.open("http://my.fanhuan.com/my/bindphone");
                return false;
            }
        })
        doAdjustBox();
        $(window).resize(function () {
            doAdjustBox();
        });
    }
    //调整弹出位置
    function doAdjustBox() {
        $('.opacity-bg-box').css({
            left: ($(window).width() - $('.opacity-bg-box').outerWidth()) / 2,
            top: ($(window).height() - $('.opacity-bg-box').outerHeight()) / 2 + $(document).scrollTop()
        });
    }
    ini();
});

//    // imgLoadError
function imgLoadError(obj) {
    obj.src = 'http://i.fanhuan.com/images/zdm/zdm_loading.png?v=150129';
}
// 判断ie版本
var isIE_6 = false,
        isIE_7 = false;
if ($.browser.msie) {
    if ($.browser.version == "6.0") {
        isIE_6 = true;
    } else if ($.browser.version == "7.0") {
        isIE_7 = true;
    }
}
// 基础函数(公用)
var FH = FH || {};
FH.base = {
    // imglazyload
    imgLazyLoad: function (imgs) { // imgs, 一个图片列表
        // 图片滚动
        var win_Height = $(window).height() + 60;
        var img_Height = 95;
        var $srcDef = "http://i.fanhuan.com/images/zdm/zdm_loading.png?v=150129"; // 默认图片
        var loadImg = "zdm_loading";
        $(window).bind("resize", function () {
            win_Height = $(window).height() + 60;
        })
        function runing(winH, imgH) {
            var $img = imgs; // 要加载的图片
            var i = 0;
            $img.find("img").each(function (i) {
                if ($(this).attr("src").indexOf(loadImg) >= 0) {// 判断是否还需要加载（第一次之后就不要）
                    var $src = $(this).data("url");
                    var img_ScroTop = $(this).offset().top + imgH;
                    if (img_ScroTop >= $(window).scrollTop() && $(window).scrollTop() + winH >= img_ScroTop) {
                        if ($(this).attr("src") == $srcDef) {
                            $(this).attr("src", $src);
                            // 记录商品曝光量
                            var data = $(this).data('tongji');
                            if (data) { // 是否需要统计数据
                                var date = new Date();
                                var now = '';
                                now += date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
                                data.Act_time = now;
                                $.getJSON('http://tracker.fanhuan.com/ajax/log?callback=?', data, function (result) {
                                    //console.log(result)
                                });
                            }

                        }
                    }
                }
            })
        }
        setInterval(function () {
            runing(win_Height, img_Height);
        }, 2000);
        $(window).bind("scroll", function () { // 滚动时触发的事件
            runing(win_Height, img_Height);
        })
    },
    lazyLoad: function (imgs) { // imgs, 一个图片列表
        // 图片滚动
        var win_Height = $(window).height() + 60;
        var img_Height = 95;
        var $srcDef = "http://i.fanhuan.com/images/zdm/zdm_loading.png?v=150129"; // 默认图片
        var loadImg = "zdm_loading";
        $(window).bind("resize", function () {
            win_Height = $(window).height() + 60;
        })
        function runing(winH, imgH) {
            var $img = imgs; // 要加载的图片
            var i = 0;
            $img.find("img").each(function (i) {
                if ($(this).attr("src").indexOf(loadImg) >= 0) {// 判断是否还需要加载（第一次之后就不要）
                    var $src = $(this).data("url");
                    var img_ScroTop = $(this).offset().top + imgH;
                    if (img_ScroTop >= $(window).scrollTop() && $(window).scrollTop() + winH >= img_ScroTop) {
                        if ($(this).attr("src") == $srcDef) {
                            $(this).attr("src", $src);
                        }
                    }
                }
            })
        }
        setInterval(function () {
            runing(win_Height, img_Height);
        }, 2000);
        $(window).bind("scroll", function () { // 滚动时触发的事件
            runing(win_Height, img_Height);
        })
    },
    // 曝光统计函数
    exposureTongJi: function (module, idArray) {
        var data = {
            "Act_Event": "exposure",
            "Module1": module,
            "Module2": "",
            'ItemIDS': idArray.join(","),
            'UID': "",
            'ClientID': fp4.get(),
            'ClientType': "pc",
            'Act_Event_Tag': "image",
            'Version': "1.0.0"
        };

        var date = new Date();
        var now = '';
        now += date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        data.Act_time = now;
        $.getJSON('http://tracker.fanhuan.com/ajax/log_v2?callback=?', data, function (result) {
//            console.log(result);
        });
    },
    // 倒计时
    countDown: function (num, box, status) { // num,总时间，box，装载时间容器，非必须。如果不需要，请传空字符串，status为显示的形式
        var box = box;
        // 请求服务器的时间
        $.getJSON("http://www.fanhuan.com/ajax/GetNowDateTime/?callback=?", {}, function (data) {
            //console.log(data);
            var run = function (o, data) {
                var arr = data.Time.split(':');
                if (o.num == 34 || o.num == 39) {
                    //console.log(arr[0])
                    switch (arr[0]) {
                        case '00':
                            arr[0] = 24;
                            break;
                        case '01':
                            arr[0] = 25;
                            break;
                        case '02':
                            arr[0] = 26;
                            break;
                        case '03':
                            arr[0] = 27;
                            break;
                        case '04':
                            arr[0] = 28;
                            break;
                        case '05':
                            arr[0] = 29;
                            break;
                        case '06':
                            arr[0] = 30;
                            break;
                        case '07':
                            arr[0] = 31;
                            break;
                        case '08':
                            arr[0] = 32;
                            break;
                        case '09':
                            arr[0] = 33;
                            break;
                    }
                }
                if (o.num == 39) {

                    switch (arr[0]) {
                        case '10':
                            arr[0] = 34;
                            break;
                        case '11':
                            arr[0] = 35;
                            break;
                        case '12':
                            arr[0] = 36;
                            break;
                        case '13':
                            arr[0] = 37;
                            break;
                        case '14':
                            arr[0] = 38;
                            break;

                    }
                }

                var count = o.num * 3600 - (arr[0] * 3600 + arr[1] * 60 + +arr[2]); // 总秒数
                //console.log(count);
                var h, m, s, hstr, mstr, sstr, timestr;
                var etime = count; //总秒数
                //var box = o.box;
                function timer() {
                    h = Math.floor(etime / 3600); //时
                    m = Math.floor(etime / 60) % 60; //分
                    s = Math.floor(etime % 60); //秒
                    //console.log(etime);
                    h < 0 ? h = 0 : h = h;
                    m < 0 ? m = 0 : m = m;
                    s < 0 ? s = 0 : s = s;

                    h.toString().length < 2 ? hstr = "0" + h.toString() : hstr = h; //1显示01
                    m.toString().length < 2 ? mstr = "0" + m.toString() : mstr = m; //1显示01
                    s.toString().length < 2 ? sstr = "0" + s.toString() : sstr = s; //1显示01
                    if (h == 0 && m == 0 && s == 0) {
                    }
                    if (status == 0) { // 0表示默认，以：显示
                        timestr = '<em>' + hstr + '</em><i>:</i><em>' + mstr + '</em><i>:</i><em>' + sstr + '</em>';
                    } else { // 1,以时分秒显示
                        timestr = '<em>' + hstr + '</em><i>时</i><em>' + mstr + '</em><i>分</i><em>' + sstr + '</em><i>秒</i>';
                    }
                    //console.log(timestr);
                    if (box) { // 有些情况下，我们可能不需要把它显示出来，这时候可以将box传空字符
                        box.html(timestr);
                    }

                    etime = etime - 1;
                    if (etime == 0) {
                        location.reload(); // 刷新更新数据
                    }

                }
                var timer = setInterval(timer, 1000);
            }
            // run
            run({ 'num': num }, data); // num, 总时间，如：15:00 = 24 + 15 = 39

        });
    }
}

$(function () {
    // 用户行为记录分析(通用)
    var btn_jump = $('.J_btn_jump'); // 行为记录标示class（J_btn_jump），其他情况，请禁止使用该class
    btn_jump.live('click', function () {
        var isClick = $(this).attr('status-isClick');
        if (isClick == 1) {
            // 防止重复点击
        } else {
            var data = $(this).data('tongji');
            var date = new Date();
            var now = '';
            now += date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
            data.Act_time = now;

            $.getJSON('http://tracker.fanhuan.com/ajax/log?callback=?', data, function (result) {
                //console.log(result)
            });
            $(this).attr('status-isClick', 1);

        }

    })
    // 提示登录(需要事先登录的元素，都可以绑定此class（J_login）。其他情况下请不要使用此class)
    $('.J_login').live('click', function (e) {
        if (!CurrentUser.UserName) {
            Login();
            e.preventDefault();
        }
    })

})
// 返还网商品举报模块
FH.report = function () {
    var html = '';
    var createHtml = function () { // 创建dom
        html += '<div id="J_report_box" class="m-report f-hide"><h2 id="J_drag"><a id="J_close_layer" class="xulayer_png32 u-close-white" href="javascript:;"></a>举<i style="padding:0 15px"></i>报</h2>';
        html += '<div class="cont"><h3>请选择举报原因：</h3>';
        html += '<ul class="form-list" id="J_report_form">';
        html += '<li><input id="reason1" type="radio" name="reason" value="宝贝价格与活动价格不符" /><label for="reason1">宝贝价格与活动价格不符</label></li>';
        html += '<li><input id="reason2" type="radio" name="reason" value="宝贝已下架" /><label for="reason2">宝贝已下架</label></li>';
        html += '<li><input id="reason3" type="radio" name="reason" value="主图宝贝与实际出售宝贝不符" /><label for="reason3">主图宝贝与实际出售宝贝不符</label></li>';
        html += '<li><input id="reason4" type="radio" name="reason" value="宝贝链接打不开" /><label for="reason4">宝贝链接打不开</label></li>';
        html += '<li><input id="reason5" type="radio" name="reason" value="卖家拒绝发货" /><label for="reason5">卖家拒绝发货</label></li>';
        html += '<li><input id="reason6" type="radio" name="reason" value="" style="*position:relative;*bottom:8px"/><label for="reason6" style="*position:relative;*bottom:8px">其他原因</label><input class="text" type="text" name="text" value="" /></li>';
        html += '</ul>';
        html += '<div class="btn-box f-tc">';
        html += '<a href="JavaScript:;" class="btn btn-1" id="J_btn_report_submit" data-id=""><span style="width:80px;">提交</span></a>';
        html += '</div></div></div>';
        // append
        $('body').append(html);
    }
    // main
    var main = function () {
        var appType = '';
        $(document).on('click', function (e) {
            var tar = e.target;
            var that = tar;
            var status = $(tar).hasClass('J_btn_report');

        })
    }
    // 暴露公共接口
    return {
        author: 'zimo',
        version: '1.0.0',
        init: function () {
            main();
        }
    }
} ();
FH.report.init();
//手机版hover
$(".tel_part").mouseenter(function () {
    $(this).css("z-index", "1000").find(".code_link").show();
    $(this).addClass("topz");
    $(this).find("a").eq(0).css("color", "#f40");
}).mouseleave(function () {
    $(this).css("z-index", "2").find(".code_link").hide();
    $(this).removeClass("topz");
    $(this).find("a").eq(0).css("color", "#666");
})
if (CurrentUser.UserId == undefined || CurrentUser.UserId == "") {
    $(".top_header_r li").eq(0).hide();
} else {
    $(".top_header_r li").eq(0).show();
}

// 防止浮点数计算不准确
Math.add = function(v1, v2) {
    var r1, r2, m, n;
    try {
        r1 = v1.toString().split(".")[1].length;
    }
    catch (e) {
        r1 = 0;
    }
    try {
        r2 = v2.toString().split(".")[1].length;
    }
    catch (e) {
        r2 = 0;
    }
    n = (r1 >= r2) ? r1 : r2;
    m = Math.pow(10, Math.max(r1, r2));

    return ((v1 * m + v2 * m) / m).toFixed(n);
};

function Geetcaptcha(captcha, notice) {
    var handler = function (captchaObj) {
        if ($(captcha).length > 0) {
            captchaObj.appendTo(captcha);
            captchaObj.onSuccess(function () {
                notice.isverfiy = true;
            });
            captchaObj.onFail(function () {
                notice.isverfiy = false;
            });
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