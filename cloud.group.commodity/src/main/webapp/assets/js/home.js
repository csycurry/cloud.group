/**
 * 
 */
//加入收藏夹
if ($.cookie("NLRAF") == null && !/favorite|desk|zt11/.test(location.search)) {
    // append style
    if (!$('#afps').length) { $('head').append('<style id="afps" type="text/css" media="screen">#afp{ height:35px; padding-top:4px; background-color:#eceff5;border-bottom:1px solid #cdd6e8; position:relative; width:100%; min-width:960px;}#afp .afpc{width:960px; margin:0 auto;}#afp p{text-align:center;height:33px;line-height:33px; vertical-align:middle; color:#6f8193; font-size:14px;}#afp .afpc a{ vertical-align:middle; display:inline-block; width:100px; height:32px; text-indent:-999em; overflow:hidden; background-image:url(http://i.fanhuan.com/images/afp_btn.png); background-repeat:no-repeat;}.afpc .afpa{ background-position:0 -33px; margin-right:10px;}.afpc .desktop{ background-position:-102px -33px;}.afpc a.afpa:hover{ background-position:0 0px;}.afpc a.desktop:hover{ background-position:-102px 0px;}.close_area{ position:absolute;right:15px;top:10px; _top:6px;height:16px; line-height:16px; }#nlraf{ color:#6f8193; cursor:pointer; margin-right:10px; }#check_nlraf{ position:relative; top:2px; margin-right:5px;}#cafp{ vertical-align:middle; display:inline-block; width:16px;height:16px;overflow:hidden;text-indent:9999em;background:url(http://i.fanhuan.com/images/share_close.png) no-repeat 3px 3px}#cafp:hover{background-position:-30px 3px}</style>'); }
    // create dom
    if (!$('#afp').length) {
        $(function () {
            var explorer = window.navigator.userAgent;
            if (explorer.indexOf("Firefox") >= 0 || explorer.indexOf("Chrome") >= 0) {
                //firefox chrome 360 qq
                $("#s_toptitle").text("按 Ctrl+D，把返还网加入收藏夹，购物更省钱！");
            } else if (Object.hasOwnProperty.call(window, "ActiveXObject") && !window.ActiveXObject) {
                //判断是否是ie11
                $("#s_toptitle").text("按 Ctrl+D，把返还网加入收藏夹，购物更省钱！");
            } else {
                $("#s_toptitle").text("网购，不要忘了用返还网省钱哦，您可以把返还网：");
                $(".afpa").css("display", "");
                $(".desktop").css("display", "");
            }
        });
        $('#waterfall').after('<div id="afp" style="display:none;"><div class="afpc"><p style="*line-height:18px;"><span id="s_toptitle" style="display:inline-block;*display:inline;*zoom:1;width:322px;height:18px;"></span><a id="af" class="afpa" style="display:none;*display:inline-block;*zoom:1;*display:inline;" href="javascript:void(0)" onclick="addFavorite(true)">加入收藏夹</a><a style="display:none;*display:inline-block;*zoom:1;*display:inline;" href="http://www.fanhuan.com/down/%E8%BF%94%E8%BF%98%E7%BD%91.url" class="desktop">添加到桌面</a></p></div><div class="close_area"><label id="nlraf" onclick="CloseNLRAF(true)" for="check_nlraf" ><input type="checkbox" id="check_nlraf" />不再提醒</label><a id="cafp" href="javascript:void(0)" onclick="CloseNLRAF(false)"></a></div></div>');
    }
    $("#afp").slideDown("slow");
}
var FH_TaobaoOrTmallGuider = function (userCount, type) {
    //    var _html = '<div id="pop_bg" style=""></div><div id="taobao_id_login"><a class="tb_id_close" href="javascript:void(0);" onclick="$(\'#taobao_id_login,#pop_bg\').hide()">关闭</a><h4 class="' + (type ? type : 'taobao') + '">返还网会员去淘宝或淘宝商城（天猫）购物，返现金 2 ~ 50%</h4><div class="tbid_content"><p class="user_num">已有<font>{{people}}</font>人在使用返还网省钱</p><div class="input_t" style="position:relative;"><form method="get" action=""><input type="text" class="auto_input" name="email" id="tbid_email" autocomplete="off" /><input type ="text" name ="hide" style="display:none;" /><button type="submit" onclick = "return RegisterRightNow($(this), true)">免费注册</button></form><table id="auto_email"><thead><tr><th>请选择或继续输入…</th></tr></thead><tbody></tbody></table></div><dl id="other_id_login"><dt>您也可以</dt><dd><a href="javascript:TbLogin()"><span class="tb_lg">淘宝网</span><font>用淘宝帐号<br />直接登录</font></a></dd><dd><a href="javascript:Login()"><span class="fh_lg">返还网</span><font>老会员<br />直接登录</font></a></dd></dl></div></div>';
    //    var _html1 = '<div id="pop_bg" style=""></div><div id="taobao_id_login"><a class="tb_id_close" href="javascript:void(0);" onclick="$(\'#taobao_id_login,#pop_bg\').hide()">关闭</a><div class="seo_taobao_tmall"><h4 class="' + (type ? type : 'taobao') + '">返还网会员去淘宝或淘宝商城（天猫）购物，返现金 2 ~ 50%</h4><div class="tbid_content"><p class="user_num">已有<font>{{people}}</font>人在使用返还网省钱</p><div class="input_t" style="position:relative;"><form method="get" action=""><input type="text" class="auto_input" name="email" id="tbid_email" autocomplete="off" /><input type ="text" name ="hide" style="display:none;" /><button type="submit" onclick = "return RegisterRightNow($(this), true)">免费注册</button></form><table id="auto_email"><thead><tr><th>请选择或继续输入…</th></tr></thead><tbody></tbody></table></div><dl id="other_id_login"><dt>您也可以</dt><dd><a href="javascript:TbLogin()"><span class="tb_lg">淘宝网</span><font>用淘宝帐号<br />直接登录</font></a></dd><dd><a href="javascript:Login()"><span class="fh_lg">返还网</span><font>老会员<br />直接登录</font></a></dd></dl></div></div></div>';

    //    $('#wrapper').after(userCount ? _html1.replace('{{people}}', userCount) : _html1.replace('{{people}}', '2,685,482'));
    //    $('head').append('<link rel="Stylesheet" type="text/css" href="http://js.fanhuan.com/css/FH_TaobaoOrTmallGuider.css?v=20150211" />');

    $('head').append('<link rel="Stylesheet" type="text/css" id="FH_Taobao_css" href="http://js.fanhuan.com/css/FH_TaobaoOrTmallGuider.css?v=20150211" />');
    var html = '<div id="pop_bg"></div>';
    html += '<div id="taobao_id_login"><a href="javascript:void(0)" class="pop-close" id="taobao_id_close"></a><iframe src="http://www.fanhuan.com/SeoTaobao" scrolling="no" frameBorder="0" height="624" style="width:100%; min-width:980px; margin:0 auto; border:0 none;"></iframe></div>';
    $('#wrapper').after(html);
    $("html,body").animate({ "scrollTop": 0 }, 0);
    fhTaobaoPopPos("taobao_id_login", "taobao_id_close");

    $(window).bind("resize", function () {
        fhTaobaoPopPos("taobao_id_login", "taobao_id_close");
    });
}
$("#taobao_id_login").find(".pop-close").live("click", function () {
    $("#pop_bg").remove();
    $('#FH_Taobao_css').remove();
    $("#taobao_id_login").remove();
    $(window).unbind("resize");
    $.cookie("FH_TaobaoOrTmallGuider_over", "true");
});
function GetAdtype() {
    var url = window.document.referrer; if (url == "") { return undefined; }
    if (url.split("?")[0].indexOf("fanhuan.com") > -1) { return undefined; }
    if (url.indexOf("&bs=") > 0) { url = url.replace(url.split("&bs=")[1].split("&")[0], ""); }
    var keyWords = url.split("?")[1]; if (keyWords == undefined) { return; }
    if (keyWords.indexOf("tianmao") != -1 || keyWords.indexOf("%E5%A4%A9%E7%8C%AB") != -1 || keyWords.indexOf("%CC%EC%C3%A8") != -1) { return "tmall"; }
    if (keyWords.indexOf("taobao") != -1 || keyWords.indexOf("%E6%B7%98%E5%AE%9D") != -1 || keyWords.indexOf("%CC%D4%B1%A6") != -1) {
        if (keyWords.indexOf("shangcheng") != -1 || keyWords.indexOf("%E5%95%86%E5%9F%8E") != -1 || keyWords.indexOf("%C9%CC%B3%C7") != -1) { return "sc"; }
        return "tb";
    }
}
var _adtype = GetAdtype();
if (_adtype != undefined && CurrentUser.UserId == undefined && $.cookie("userName") == null && $.cookie("user_name") == null) {
    if (_adtype != "tm") {
        CreateJScript('ShowInfo', 'https://passport.fanhuan.com/ajax/getclientinfo?callback=ShowInfo&_=0.8711712812796429');
        setTimeout(function () {
            if (!$.cookie("FH_TaobaoOrTmallGuider_over")) {
                FH_TaobaoOrTmallGuider($("#_userInfo_count").val(), /(tm)|(sc)/.test(_adtype) ? "tmall" : "taobao");
            }
        }, 300);
    }
}
//获取用户数
function ShowInfo(data) {
    var html = '<input type="hidden" id="_userInfo_count" value="' + fmoney(data['Result']['Remark']) + '" />';
    $("#wrapper").append(html);
}
//金额数字格式
function fmoney(s) {
    var t = "";
    var l = s.split("").reverse();
    for (i = 0; i < l.length; i++) {
        t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");
    }
    return t.split("").reverse().join("");
}
//落地页定位
function fhTaobaoPopPos(id, id_close) {
    var obj = document.getElementById(id);
    var obj_close = document.getElementById(id_close);
    var bodyHeight = document.documentElement.clientHeight;
    var bodyWidth = document.documentElement.clientWidth;
    var objHeight = obj.offsetHeight;

    var oTop = Math.floor((bodyHeight - objHeight) / 2);

    if (oTop < -150) {
        oTop = -150;
    }
    obj.style.top = oTop + 'px';

    if (bodyHeight < objHeight) {
        obj_close.style.top = 15 - oTop + 'px';
    } else {
        obj_close.style.top = '15px';
    }
    if (bodyWidth < 960) {
        obj_close.style.right = 50 + 960 - bodyWidth + 'px';
    } else {
        obj_close.style.right = '50px';
    }
}

// 加载用户添加的
if (CurrentUser.UserId && document.getElementById('J_home_added')) {
    $('#J_home_added').next('.tiptext').next('.loading').show();
    $.ajax({
        url: "/ajax/HomeGetUserAddMalls",
        type: 'post',
        cache: false,
        error: function (error) {
            return;
        },
        success: function (response) {
            $('#J_home_added').next('.tiptext').show().next('.loading').hide();
            var json = eval("(" + response + ")");
            if (json.code == 200) {
                if (json.count > 0) {
                    CreateUserAddMalls(json.data);
                    // 用户有添加
                    $(".list-resort").removeClass("list-resort-normal").next(".divide").show();
                }
                else {
                    // 用户未添加
                }
            }
            else {
                return;
            }
        }
    });
}
else {
    if ($.browser.msie && $.browser.version == '6.0') {
        $('#J_home_added').next('.tiptext').show().children('a').attr('href', '###').removeAttr("Id").bind('click', function () { Login(); });
    }
    else {
        $('#J_home_added').next('.tiptext').show().children('a').removeAttr("Id").bind('click', function () { Login(); });
    }

}

function isExistItem(array, code) {
    if (array.length == 0) {
        return false;
    }
    for (var i in array) {
        if (array[i] == code) {
            return true;
        }
    }
    return false;
}
//判断商城是否淘宝
function checkTaobao(json) {
    if (json.MallCode != "淘宝网" && json.MallCode != "tmall" && json.MallCode != "paipai" && json.MallCode != "tgfh" && json.MallCode != 'taobao') {
        json.TdLink = "http://www.fanhuan.com" + json.TdLink;
        return String.Format('<a href="{1}" class="btn btn-1-25" data-code="{0}" data-fh="{3}" data-title="{4}" target="_blank" {2} mallid="{0}"><span>全站返还通道<i></i></span></a>', json.MallCode, json.Link, (json.UnionName == "taobao" ? "biz-sellerid = \"" + json.MallCode + "\"" : ""), json.RoughlyFH, json.Title);
    }
    return "";
}
// 加载用户添加的商场的html
function CreateUserAddMalls(data) {
    var html = "";
    var manage_html = "";
    var json;
    for (var i in data) {
        json = data[i];
        checkTaobao(json);
        html += String.Format('<li class="{0}" bcid="{1}">', (json.BusinessType == 1 ? "item-shop" : "item-mall"), json.Id);
        html += '<span class="poptip-info">';
        html += String.Format('<a href="{0}" data-code="{1}" data-fh="{2}" data-title="{3}" target="_blank" class="mall" ' + (json.SubName == json.BusinessName ? "" : "title=\"{3}\"") + '><img src="http://i.fanhuan.com/images/ico_mall/{4}.png" onerror="this.src = \'http://i.fanhuan.com/images/ico_mall/ico-default.png\'">{5}</a>', json.TdLink, json.IdentityCode, json.RoughlyFH, json.BusinessName, (json.BusinessType == 0 ? json.IdentityCode : "淘宝网"), json.SubName);
        html += String.Format('<a href="{0}" {5} data-code="{1}" data-title="{3}" data-fh="{4}" class="detail" target="_blank"><b></b><em><span>返</span>{2}</em></a>', json.Link, json.IdentityCode, (json.FhValue + json.FhTxt), json.BusinessName, json.RoughlyFH, (json.BusinessType == 1 ? "biz-sellerid = \"" + json.IdentityCode + "\"" : ""));
        html += '</span>';
        html += '</li>';
        manage_html += String.Format('<li><span class="mall" data-code="{0}" ' + (json.SubName == json.BusinessName ? "" : "title=\"{1}\"") + ' >{2}</span><a href="javascript:void(0);" onclick="DelBusiness(this,{3});" class="ico-home i-home-remove"></a></li>', json.IdentityCode, json.BusinessName, json.SubName, json.Id);
    }
    $('#J_home_added').prepend($(html));
    if (((location.hostname == "mall.fanhuan.com" && $("#J_home_added").find("li").length - 1) % 6 != 0) || (location.hostname == "www.fanhuan.com" && ($("#J_home_added").find("li").length - 1) % 7 != 0)) {
        $("#J_home_added").find(".item-add").attr("class", "item-add").find(".ico-home").attr("class", "ico-home i-home-add-long").html("添加/管理");
    } else {
        $("#J_home_added").find(".item-add").attr("class", "item-add item-add-pos").find(".ico-home").attr("class", "ico-home i-home-add-big").html("");
    }
    $('#J_home_added').children('.item-add').show();
    $('#J_home_added').next('.tiptext').hide();
    $('#J_added').html(manage_html);
}
//分类切换
function getMallClassData(cid) {
    if (cid == 0) {
        return;
    }
    var element = $("#J_nav_site").find(".mall-pane").eq(cid);
    if ($.trim(element.html()) == "") {
        $("#J_nav_site").find(".mall-pane").eq(cid).html('<div class="loading"></div>');
        $.ajax({
            type: "GET",
            url: "/ajax/homegetmalls",
            data: "catId=" + cid,
            cache: false,
            error: function (err) {
                //alert("错误");
                $("#J_nav_site").find(".mall-pane").eq(cid).html("");
                return;
            },
            success: function (response) {
                var json = response;
                if (json.code == 500) {
                    alert(json.data);
                    return;
                }
                if (json.code == 200) {
                    if (json.dataType == "parentClass") {
                        createParentClass(cid, json.data);
                    } else {
                        createChildrenClass(cid, json.malls, json.classmalls);
                    }
                }
            }
        });
    }
}

//获取无子分类
function createParentClass(cid, data) {
    var html = "";
    var json;
    html += '<div class="list-mall" id="list_malls_v"><ul class="clearfix">';
    for (var i = 0; i < data.length; i++) {
        if (i <= 11) {
            json = data[i];
            var tongdaoHtml = checkTaobao(json);
            html += '<li>';
            html += String.Format('<a href="{0}" target="_blank" class="{1}" data-fh="{2}" data-code="{3}" data-title="{4}">', json.TdLink, (json.UnionName == "taobao" ? "link-shop" : "link-mall"), json.RoughlyFH, json.MallCode, json.Title);
            html += String.Format('<img src="http://image.fanhuan.com/mall/{0}/{1}.jpg" alt="{2}">', (json.UnionName == "taobao" ? "taobao" : "s"), json.MallCode, json.Title);
            html += String.Format('<span class="info">最高返还{0}</span>', (json.FhTxt == '' ? ("<em>" + json.RoughlyFH + "</em>") : ("<em>" + json.FhValue + "</em><span>" + json.FhTxt + "</span>")));
            html += '</a>';
            html += tongdaoHtml;
            html += '</li>';
        } else {
            break;
        }
    }
    html += '</ul></div>';
    html += '<div class="list-mall-word"><ul class="clearfix">';
    var color = '';
    if (data.length > 12) {
        for (var j = 12; j < data.length; j++) {
            json = data[j];
            checkTaobao(json);
            color = '';
            if (json.Color != '') {
                color = 'style="' + json.Color + '"';
            }
            html += String.Format('<li class="{0}">', (json.UnionName == "taobao" ? "item-shop" : "item-mall"));
            html += '<span class="poptip-info">';
            html += String.Format('<a href="{0}" {5} target="_blank" class="mall" data-fh="{1}" data-code="{2}" data-title="{3}" ' + (json.SubName == json.Title ? "" : "title=\"{3}\"") + '>{4}</a>', json.TdLink, json.RoughlyFH, json.MallCode, json.Title, json.SubName, color);
            html += String.Format('<a href="{0}" {5} target="_blank" class="detail" data-code="{1}" data-title="{3}" data-fh="{4}"><b></b><em><span>返</span>{2}</em></a>', json.Link, json.MallCode, (json.FhValue + json.FhTxt), json.Title, json.RoughlyFH, (json.UnionName == "taobao" ? "biz-sellerid = \"" + json.MallCode + "\"" : ""));
            html += '</span>';
            html += '</li>';
        }
    }
    html += '</ul></div>';
    $("#J_nav_site").find(".mall-pane").eq(cid).html(html);
}
//获取有子分类
function createChildrenClass(cid, malls, classmalls) {
    var html = '';
    html += '<div class="list-mall" id="list_malls_v">';
    html += '<ul class="clearfix">';
    var json;
    for (var i = 0; i < malls.length; i++) {
        json = malls[i];
        var tongdaoHtml = checkTaobao(json);
        html += '<li>';
        html += String.Format('<a href="{0}" target="_blank" class="{1}" data-fh="{2}" data-code="{3}" data-title="{4}" >', json.TdLink, (json.UnionName == "taobao" ? "link-shop" : "link-mall"), json.RoughlyFH, json.MallCode, json.Title);
        html += String.Format('<img src="http://image.fanhuan.com/mall/{0}/{1}.jpg" alt="{2}" >', (json.UnionName == "taobao" ? "taobao" : "s"), json.MallCode, json.Title);
        html += String.Format('<span class="info">最高返还{0}</span>', (json.FhTxt == '' ? ("<em>" + json.RoughlyFH + "</em>") : ("<em>" + json.FhValue + "</em><span>" + json.FhTxt + "</span>")));
        html += '</a>';
        html += tongdaoHtml;
        html += '</li>';
    }
    html += '</ul></div>';
    html += '<div class="list-shop-word">';
    var color = '';
    for (var a in classmalls) {
        html += '<div class="item">';
        html += '<h4>' + a + '</h4>';
        html += '<ul class="clearfix">';
        for (var b in classmalls[a]) {
            json = classmalls[a][b];
            checkTaobao(json);
            color = '';
            if (json.Color != '') {
                color = 'style="' + json.Color + '"';
            }
            html += String.Format('<li class="{0}">', (json.UnionName == "taobao" ? "item-shop" : "item-mall"));
            html += '<span class="poptip-info">';
            html += String.Format('<a href="{0}" {5} target="_blank" class="mall" data-fh="{1}" data-code="{2}" data-title="{3}" ' + (json.SubName == json.Title ? "" : "title=\"{3}\"") + '>{4}</a>', json.TdLink, json.RoughlyFH, json.MallCode, json.Title, json.SubName, color);
            html += String.Format('<a href="{0}" {5} target="_blank" class="detail" data-code="{1}" data-title="{3}" data-fh="{4}"><b></b><em><span>返</span>{2}</em></a>', json.Link, json.MallCode, (json.FhValue + json.FhTxt), json.Title, json.RoughlyFH, (json.UnionName == "taobao" ? "biz-sellerid = \"" + json.MallCode + "\"" : ""));
            html += '</span>';
            html += '</li>';
        }
        html += '</ul>';
        html += '</div>';
    }
    html += '</div>';
    $("#J_nav_site").find(".mall-pane").eq(cid).html(html);
}
// lk-new添加开始
if ($.cookie("product_cur_catename") && $.cookie("product_cur_catename") != "热门商家") {
    $('#J_loading_con').show();
    var name = $.cookie("product_cur_catename");
    var $a = $('.tit ul li a:contains("' + name + '")');
    if ($a.length == 1) {
        var $li = $a.parent('li');
        $li.addClass('cur');
        var index = $('.tit ul li').index($li);
        setTimeout(function () { $li.trigger('click'); $("#J_nav_site").find(".mall-pane").eq(index).show(); $('#J_loading_con').remove(); }, 50);
    }
    else {
        $('#J_loading_con').remove();
        $('#J_menu_cat_0').addClass('cur');
        $('.con .mall-pane').eq(0).show();
    }
}
else {
    $('#J_loading_con').remove();
    $('#J_menu_cat_0').addClass('cur');
    $('.con .mall-pane').eq(0).show();
}
// lk-new添加结束
// 热门商家的大分类跳转
function goCategory(txt) {
    $('.tit ul li:contains("' + txt + '")').trigger('click');
    $('html,body').scrollTop(0);
}
// 处理商城的名称(显示str的length + ...)
function stringCutEllipsis(str, length) {
    var count = 0;
    var str = str;
    var reg = /[\u4E00-\u9FA5]/;
    var newStr = "";
    if (str.length <= length) {
        newStr = str;
        return newStr;
    } else {
        for (var i = 0; i < str.length; i++) {
            if (reg.test(str.charAt(i).toString())) {
                count += 2;
            } else {
                count += 1;
            }
            if (count >= length * 2) {
                return newStr + "…";
            } else if (i == (str.length - 1)) {
                return newStr;
            }
            newStr += str.charAt(i).toString();
        }
    }
}
//右下角弹窗
var btnDetailPop = false, //防止右键点击 和 重复点击
    timerDetailPop = null;
/* bindWindowFocus 窗口触发焦点
*  @param type  mall or shop
*  @param link  链接
*  @param name  名称
*  @param src  图片
*/
function bindWindowFocus(type, link, name, src, bottom, oClass) {
    //窗口获取焦点的时候，弹窗
    $(window).bind("focus", function () {
        $(window).unbind("focus");
        $("div.pop-boot-detail").unbind("mouseover");
        $("div.pop-boot-detail").unbind("mouseout");
        $("div.pop-boot-detail").find(".pop-close").bind("click");
        clearTimeout(timerDetailPop);
        $("div.pop-boot-detail").remove();
        var attr = ''
        var str = '';
        link = "http://www.fanhuan.com" + link;
        if (link.replace(/(\/)+(.+)+(.html)/g, '$2') != "tmall") {
            var img = '<a href="' + link + '" class="mall" target="_blank"><img src="' + src + '" alt="' + name + '" title="' + name + '" /></a>';
        } else {
            var img = '<a href="' + link + '" class="mall" target="_blank"><img src="' + src + '?v=20140730" alt="' + name + '" title="' + name + '" /></a>';
        }
        if (type == "shop") {
            str = '，在淘宝网确认收货后24小时内，您可在我的返还中看到该订单记录，同时获得返还。';
            img = '<img class="mall" src="' + src + '" style="margin-top:30px;"/>';
        }
        var html = '';
        html += '<div class="pop pop-boot-detail' + oClass + '"><a href="javascript:;" class="pop-close">×</a>';
        html += '<div class="inner">';
        html += '<div class="con con-1 clearfix">' + img;
        html += '<h3><a href="' + link + '" target="_blank">' + name + '</a></h3>';
        html += '<p>您已通过返还网进入' + name + '<span>' + str + '</span></p>';
        html += '</div>';
        html += '<div class="con con-2">';
        html += '<a href="' + link + '" target="_blank">查看返还详情</a>';
        html += '</div>';
        html += '</div>';
        html += '</div>';
        $("body").append(html);
        $("div.pop-boot-detail").animate({ "bottom": 0 }, 600);
        timerDetailPop = setTimeout(function () {
            $("div.pop-boot-detail").animate({ "bottom": bottom }, 600, function () {
                $("div.pop-boot-detail").remove();
            });
        }, 5000);
        $("div.pop-boot-detail").bind({
            "mouseover": function () {
                clearTimeout(timerDetailPop);
            },
            "mouseout": function () {
                timerDetailPop = setTimeout(function () {
                    try {
                        $("div.pop-boot-detail").animate({ "bottom": bottom }, 600, function () {
                            $("div.pop-boot-detail").remove();
                        });
                    } catch (e) {
                        clearTimeout(timerDetailPop);
                    }
                }, 5000);
            }
        }).find(".pop-close").bind("click", function () {
            $("div.pop-boot-detail").animate({ "bottom": bottom }, 600, function () {
                $("div.pop-boot-detail").remove();
                clearTimeout(timerDetailPop);
            });
        });
    });
}
// by cjf 2013-04-17
$(function () {
    //首页banner
    if ($("#box-play").length) {
        if ($("#box-play").find(".img-list li").length != 1) {
            var box_play = $("#box-play"),
			i,
			box_play_count_html = "",
			box_play_img = $("#box-play").find(".img-list li"),
			box_play_timeout = box_play_interval = null,
			box_play_cur = 0;
            for (i = 0; i < box_play_img.length; i++) {
                if (i == 0) {
                    box_play_count_html += '<li class="cur" style=" margin-left:0;"></li>';
                } else {
                    box_play_count_html += '<li></li>';
                }
            }
            box_play.find(".count-num").html(box_play_count_html).css({ "marginLeft": (-box_play.find(".count-num").width() / 2) + "px" });
            box_play.find(".count-num li").live("mouseover", function () {
                box_play_cur = box_play.find(".count-num li").index($(this));
                box_play_timeout = setTimeout(function () {
                    box_play.find(".count-num li").eq(box_play_cur).addClass("cur").siblings().removeClass("cur");
                    box_play_img.eq(box_play_cur).fadeIn("slow").siblings().fadeOut("slow");
                }, 150);
            }).live("mouseout", function () {
                clearTimeout(box_play_timeout);
            });

            function autoPlay() {
                clearTimeout(box_play_interval);
                if (box_play_cur < box_play_img.length - 1) {
                    box_play_cur++;
                    box_play.find(".count-num li").eq(box_play_cur).addClass("cur").siblings().removeClass("cur");
                    box_play_img.eq(box_play_cur).fadeIn("slow").siblings().fadeOut("slow");
                } else {
                    box_play_cur = 0;
                    box_play.find(".count-num li").eq(box_play_cur).addClass("cur").siblings().removeClass("cur");
                    box_play_img.eq(box_play_cur).fadeIn("slow").siblings().fadeOut("slow");
                }

                box_play_interval = setTimeout(autoPlay, 5000);
            }
            box_play_interval = setTimeout(autoPlay, 5000);
            box_play.live("mouseover", function () {
                clearTimeout(box_play_interval);
            }).live("mouseout", function () {
                box_play_interval = setTimeout(autoPlay, 5000);
            });
        } else {
            $("#box-play").find(".count-num").remove();
        }

        var imgUrl = $("#box-play").find(".img-list li").data("url");
        var image = new Image();
        image.onload = function () {
            var height = image.height;
            $("#box-play").css("height", height);
            $("#box-play .img-list li").css("height", height);
            $("#box-play .img-list li a").css("height", height);
        }
        image.src = imgUrl;
    }
    //新版首页  20131206
    var $navSite = $("#J_nav_site");
    var $ieBrowserVersion = false;
    var $ieBrowserVersion_7 = false;
    if ($.browser.msie) {
        if ($.browser.version == '6.0') {
            $ieBrowserVersion = true;
            //ieResetWidth();
        } else if ($.browser.version == '7.0') {
            $ieBrowserVersion_7 = true;
        }
    }
    //左边类目切换
    $navSite.find(".tit li").live("mouseover", function () {
        $(this).addClass("hover");
    }).live("mouseout", function () {
        $(this).removeClass("hover");
    }).live("click", function () {
        var cateName = $(this).find('a').eq(0).html();
        $.cookie("product_cur_catename", cateName, { path: "/", domain: _domain });
        var oId = $(this).attr("id");
        _hmt.push(['_trackPageview', '/' + oId]); //百度统计Ajax
        var index = $navSite.find(".tit li").index($(this));
        $(this).addClass("cur").siblings().removeClass("cur");
        $navSite.find(".mall-pane").hide().eq(index).show();
    });
    //商城加载
    //    if (!$ieBrowserVersion_7 && !$ieBrowserVersion) {
    //        for (var i = 1, l = $navSite.find(".tit li").length; i < l; i++) {
    //            getMallClassData(i);
    //        }
    //    }
    // 热门商家的子分类跳转
    function goChidrenCategory(txt, chidrenTxt) {
        var $li = $('.tit ul li:contains("' + txt + '")');
        $li.trigger('click');
        // $('.tit ul li:contains("' + txt + '")').trigger('click');
        var index = $($('.tit ul li')).index($li);
        var $h4 = $('.con .mall-pane').eq(index).find('.list-shop-word').find('.item').find('h4:contains("' + chidrenTxt + '")');
        $('html,body').scrollTop($h4.offset().top);
    }
    // 热门商家移入
    $navSite.find(".list-mall li").live("mouseover", function () {
        if ($("#J_nav_site").find(".list-mall li").index($(this)) == 5) {
            $("#J_nav_site").find(".list-mall").css("z-index", 3);
        }
        if (location.hostname == "www.fanhuan.com" && $(this).index() == 7 && $(".new_boxNav .mall-pane").height() == 179) {
            $(".tiptext").hide();
        }
        $(this).addClass("hover");
        $(this).css("z-index", "2").siblings().css("z-index", "1")
    }).live("mouseout", function () {
        $("#J_nav_site").find(".list-mall").css("z-index", 1);
        $(this).removeClass("hover");
        if (location.hostname == "www.fanhuan.com" && $(this).index() == 7 && $(".new_boxNav .mall-pane").height() == 179) {
            $(".tiptext").show();
        }
        $(this).css("z-index", "1").siblings().css("z-index", "1")
    });
    //热门商家分类移入
    $navSite.find(".composite-item-line").live("mouseover", function () {
        $(this).addClass("composite-item-line-hover");
    }).live("mouseout", function () {
        $(this).removeClass("composite-item-line-hover");
    });
    // 商城分类移入
    $navSite.find(".list-shop-word .item").live("mouseover", function () {
        $(this).addClass("item-hover");
    }).live("mouseout", function () {
        $(this).removeClass("item-hover");
    });
    // 移入显示返还比例
    $navSite.find(".poptip-info").live("mouseover", function () {
        $(this).addClass("hover");
    }).live("mouseout", function () {
        $(this).removeClass("hover");
    });
    //超值购移入图片偏移
    $(".box-sale").find("a.item").live("mouseover", function () {
        $(this).find("img").stop(true).animate({ "left": "-10px" }, 300);
    }).live("mouseout", function () {
        $(this).find("img").stop(true).animate({ "left": "0" }, 300);
    })
    // 常用
    $("#J_home_add,#J_home_added_add").live("click", function () {
        $navSite.css("zIndex", 161);
        $("body").append('<div id="TB_overlay" class="TB_overlayBG" style="opacity:0.6; filter:alpha(opacity=60);"></div>');
        $("#mask").css({ "left": "-1px", "top": "1px", "width": "960px" }).height($navSite.height()).show();
        $navSite.find(".pop-box-restore").show();
        if ($ieBrowserVersion && $(".pop-box-restore").height() < 450) {
            $(".pop-box-restore").height(450);
        }
        //常用添加引导
        if ($.cookie("cookie_boot_resort_add") == null) {
            $(".pop-box-restore").find(".tippic-add").show();
        }
        if ($.cookie("cookie_boot_resort_close") == null) {
            $(".pop-box-restore").find(".tippic-close").show();
        }
        GetOftenDataFromCookie();
        $('#J_search_soon').addClass("cur").siblings().removeClass("cur");
    });
    $("div.pop-box-restore").find(".pop-close").live("click", function () {
        $navSite.css("zIndex", 10);
        $("#mask").hide();
        $("#TB_overlay").remove();
        $navSite.find(".pop-box-restore").hide();
    });
    //常用添加引导
    $("div.tippic-close").find("a").live("click", function () {
        $("div.tippic-close").hide();
        $.cookie("cookie_boot_resort_close", "hide", { path: "/", expires: 365, domain: _domain });
    })
    $("div.tippic-add").find("a").live("click", function () {
        $("div.tippic-add").hide();
        $.cookie("cookie_boot_resort_add", "hide", { path: "/", expires: 365, domain: _domain });
    })
    //搜索
    if ($.trim($("#J_search_new_saler").val()) == "") {
        $(this).val("试试输入：凡客");
    }
    $("#J_search_new_saler").live("focus", function () {
        if ($.trim($(this).val()) == "试试输入：凡客") {
            $(this).val("");
        }
    }).live("blur", function () {
        if ($.trim($(this).val()) == "") {
            $(this).val("试试输入：凡客");
        }
    });
    //首字母分类
    $(".tab-new-saler").find(".hd li").live("mouseover", function () {
        $(this).addClass("hover").siblings().removeClass("hover");
    }).live("mouseout", function () {
        $(this).removeClass("hover");
    }).live("click", function () {
        var that = $(this);
        $(this).addClass("cur").siblings().removeClass("cur");
        $('.tiptext-noresult').hide();
        if ($(this).attr("id") != "J_search_soon") {
            //            var _id = '#J_mall_item_' + $(this).data('type');
            //            $('.J_mall_item div').hide();
            //            if ($.trim($(_id).html()) == '') {
            //                $('#J_mall_item').next('.loading').show();
            //                $(".pop-box-restore").find(".tippic-add").hide();
            //                setTimeout(function () {
            //                    GetMalls(that.data('type'));
            //                }, 500);
            //            }
            //            else {
            //                $(_id).show();
            //            }

        } else {
            GetSoonMall();
        }
        if ($ieBrowserVersion && $(".pop-box-restore").height() < 450) {
            $(".pop-box-restore").height(450);
        }
    });
    // 给商场绑定点击事件（记录cookie 经常访问）
    // lk-new 下面这行新增加了最后一个a  注释by cjf 20140226
    //    $('#J_home_added a,.mall-pane .list-mall ul li a,.mall-pane .list-composite-new  .poptip-info a,.mall-pane .list-mall-word ul .poptip-info a,.mall-pane .list-shop-word  .poptip-info a').live('click',
    //        function () {
    //            var code = $(this).data('code');
    //            if (code) {
    //                SetOftenCookie(code);
    //            }
    //            // lk-new添加开始
    //            // 当点击“查看店铺详情”或者"商城的返还比例"获取当前分类名称,记录cookie
    //            if ($.trim($(this).html()) == "查看返还详情" || $(this).find("em").length == 1) {
    //                var cateName = $('.tit ul li[class*="cur"] a').html();
    //                if (cateName) {
    //                    $.cookie("home_cur_catename", cateName, { path: "/", domain: _domain });
    //                }
    //            }
    //            // lk-new添加结束
    //        }
    //    );

    //事件委托
    $("#J_nav_site").click(function (e) {
        var obj;
        if ($(e.target)[0].tagName.toLowerCase() == "a") {
            obj = $(e.target);
        } else {
            obj = $(e.target).parents("a").eq(0);
        }
        try {
            var code = obj.attr("data-code");
            if (code == undefined) {
                //return false;
            } else {
                SetOftenCookie(code);
            }
            if ($.trim(obj.html()) == "查看返还详情" || obj.find("em").length == 1) {
                var cateName = $('.tit ul li[class*="cur"] a').html();
                if (cateName) {
                    $.cookie("home_cur_catename", cateName, { path: "/", domain: _domain });
                }
            }
        } catch (err) {
            //return false;
        }
    })
    //右下角弹窗
    $(".item-mall .mall + a,.list-mall .link-mall + a").live("click", function () {
        var code = $(this).data("code"),
            title = $(this).data("title");
        var link = '/' + code + '.html';
        var src = 'http://image.fanhuan.com/mall/s/' + code + '.jpg';
        if (code != "淘宝网" && code != "paipai" && code != "tgfh") {
            bindWindowFocus("mall", link, title, src, "-121px", "");
        }
        return;
    });
    $(".item-shop .mall + a,.list-mall .link-shop + a").live("click", function () {
        var code = $(this).data("code"),
            title = $(this).data("title");
        var link = '/' + code + '.html';
        var src = 'http://i.fanhuan.com/images/home/taobao.jpg';

        bindWindowFocus("shop", link, title, src, "-175px", " pop-boot-detail-shop");
        return;
    });
});

//推广链接中老用户跳转统计
$(function () {
    var url = document.location.href;
    var flagIndex = url.indexOf("flag=");
    if (flagIndex < 0) {
        return;
    }
    var flag = url.substring(flagIndex + 5, url.length);
    var adsage = $.cookie("adsage");
    if (adsage == null || adsage == "") {
        return;
    }
    var old_user = $.cookie("old_user");
    if (old_user == null && adsage != null) {
        $.cookie("old_user", "true", { path: "/" });
        $.cookie("adsage", "", { path: "/" });
        url = "http://tj.fanhuan.com/adsage?olduser=true&a=" + adsage + "&flag=" + flag + "&_=" + Math.random();
        CreateJScript("old_user", url);
    }
});
/////////////////////////////
//  首页常用的商家管理中心
/////////////////////////////
//  获取mall

function IsCreated(array) {
    for (var i in array) {
        if (array[i].count <= 59) {
            return true;
        }
    }
    return false;
}
//隐藏 首字母索引  by cjf 20140310
//function GetMalls(type) {
//    $('.tiptext-noresult').hide();
//    var mall;
//    var py;
//    var li = "";
//    var cla = "";
//    var click = "";
//    var code = 0;
//    var array = { "a": { count: 0, li: "" }, "b": { count: 0, li: "" }, "c": { count: 0, li: "" }, "d": { count: 0, li: "" },
//                  "e": { count: 0, li: "" }, "f": { count: 0, li: "" }, "g": { count: 0, li: "" }, "h": { count: 0, li: "" },
//                  "i": { count: 0, li: "" }, "j": { count: 0, li: "" }, "k": { count: 0, li: "" }, "l": { count: 0, li: "" },
//                  "m": { count: 0, li: "" }, "n": { count: 0, li: "" }, "o": { count: 0, li: "" }, "p": { count: 0, li: "" },
//                  "q": { count: 0, li: "" }, "r": { count: 0, li: "" }, "s": { count: 0, li: "" }, "t": { count: 0, li: "" },
//                  "u": { count: 0, li: "" }, "v": { count: 0, li: "" }, "w": { count: 0, li: "" }, "x": { count: 0, li: "" },
//                  "y": { count: 0, li: "" }, "z": { count: 0, li: "" }
//                };

//    for (var key in AllMall) {
//        if (!IsCreated(array)) {
//            break;
//        }
//        for (var j in AllMall[key]) {
//            if (!IsCreated(array)) {
//                break;
//            }
//            mall = AllMall[key][j];
//            if (!mall || !mall.IC || mall.IC == "淘宝网"|| mall.IC == "tmall"|| mall.IC == "paipai"|| mall.IC == "tgfh") {
//                continue;
//            }
//            py = mall.IC.toLowerCase().charAt(0);
//            code = py.charCodeAt(0);
//            if (code < 97 || code > 122 || !array[py]) {
//                continue;
//            }
//            if (array[py].count > 59) {
//                continue;
//            }
//            click = "";
//            if (!IsAdded(mall.IC)) {
//                cla = "add";
//                click = "onclick=\"AddBusiness(this,'" + mall.IC + "');\"";
//            }
//            else {
//                cla = "add added";
//                click = "onclick=\"deleteMallMiddle('" + mall.IC + "');\"";
//            }
//            li = String.Format("<li><a href='javascript:;' data-IC='{0}' title='{1}' class='{2}' {3} >{1}</a></li>", mall.IC, mall.T, cla, click);

//            array[py].li += li;
//            array[py].count += 1; 
//        }
//    }
//    $('#J_mall_item_A').html('<ul class="clearfix">' + array["a"].li + '</ul><ul class="clearfix">' + array["b"].li + '</ul><ul class="clearfix">' + array["c"].li + '</ul><ul class="clearfix">' + array["d"].li + '</ul>');
//    $('#J_mall_item_E').html('<ul class="clearfix">' + array["e"].li + '</ul><ul class="clearfix">' + array["f"].li + '</ul><ul class="clearfix">' + array["g"].li + '</ul><ul class="clearfix">' + array["h"].li + '</ul>');
//    $('#J_mall_item_I').html('<ul class="clearfix">' + array["i"].li + '</ul><ul class="clearfix">' + array["j"].li + '</ul><ul class="clearfix">' + array["k"].li + '</ul><ul class="clearfix">' + array["l"].li + '</ul>');
//    $('#J_mall_item_M').html('<ul class="clearfix">' + array["m"].li + '</ul><ul class="clearfix">' + array["n"].li + '</ul><ul class="clearfix">' + array["o"].li + '</ul><ul class="clearfix">' + array["p"].li + '</ul>');
//    $('#J_mall_item_Q').html('<ul class="clearfix">' + array["q"].li + '</ul><ul class="clearfix">' + array["r"].li + '</ul><ul class="clearfix">' + array["s"].li + '</ul><ul class="clearfix">' + array["t"].li + '</ul>');
//    $('#J_mall_item_U').html('<ul class="clearfix">' + array["u"].li + '</ul><ul class="clearfix">' + array["v"].li + '</ul><ul class="clearfix">' + array["w"].li + '</ul><ul class="clearfix">' + array["x"].li + '</ul>');
//    $('#J_mall_item_Y').html('<ul class="clearfix">' + array["y"].li + '</ul><ul class="clearfix">' + array["z"].li + '</ul>');
//    $('#J_mall_item').next('.loading').hide();
//    $('#J_mall_item_' + type).show();
//    $('.tiptext-noresult').hide();
//    if ($.cookie("cookie_boot_resort_add") == null) {
//        $(".pop-box-restore").find(".tippic-add").show();
//    }
//}
// 显示最近访问
function GetSoonMall() {
    // GetOftenDataFromCookie();
    $('.J_mall_item div').hide();
    $('#J_mall_Soon_item').show();
    $('.tiptext-noresult').hide();
}

// 查询商城
function SearchMalls(obj) {
    var value = $(obj).val();
    $('#J_search_type li').removeClass('cur');
    if (value.replace(/\s/g, "") == '') {
        GetSoonMall();
        $('#J_search_soon').addClass("cur").siblings().removeClass("cur");
        return;
    }
    $('.J_mall_item div').hide();
    $('#J_mall_item').empty().show();
    $('.tiptext-noresult').hide();
    var mall;
    var ul_item = "";
    var html = "";
    var cla = "";
    var click = "";
    var count = 0;
    var re = /[,|.|，|。|\/|、|~|!|！|？|?|@|\||+|-|*|.|;|'|；|"|“|:|：|#|$|￥|%|……|^|&|*|(|)|（|）|_|——|=|\s]/g;
    for (var key in AllMall) {
        if (count >= 150) {
            break;
        }
        for (var j in AllMall[key]) {
            if (count >= 150) {
                break;
            }
            mall = AllMall[key][j];
            if (!mall || !mall.SS || mall.IC == "淘宝网" || mall.IC == "tmall" || mall.IC == "paipai" || mall.IC == "tgfh") {
                continue;
            }
            if (mall.SS.toLowerCase().indexOf(value.toLowerCase().replace(re, "")) >= 0) {
                click = "";
                if (!IsAdded(mall.IC)) {
                    cla = "add";
                    click = "onclick=\"AddBusiness(this,'" + mall.IC + "');\"";
                }
                else {
                    cla = "add added";
                    click = "onclick=\"deleteMallMiddle('" + mall.IC + "');\"";
                }
                ul_item += String.Format("<li><a href='javascript:void(0);' data-IC='{0}' hidefocus='true' title='{1}' class='{2}' {3}>{1}</a></li>", mall.IC, mall.T, cla, click);
                count++;
            }
        }
    }
    if (ul_item != '') {
        if ($.cookie("cookie_boot_resort_add") == null) {
            $(".pop-box-restore").find(".tippic-add").show();
        }
        html += '<ul class="clearfix">' + ul_item + '</ul>';
        $('#J_mall_item').html(html);
    }
    else {
        $("div.tippic-add").hide();
        $('.tiptext-noresult').html("<p>没有找到与“" + value + "”相关的商城，试试按拼音首字母查找吧</p>").show();
    }
}

// 判断某个商家是否被收藏
function IsAdded(code) {
    if (!code) {
        return false;
    }
    if ($("#J_added").html().indexOf('data-code="' + code + '"') >= 0) {
        return true;
    }
    return false;
}

// 获取首页商城链接
function GetRedireUrl(code) {
    // 通道url
    var tdurl = "";
    // go链接
    var link = "";
    switch (code) {
        case "淘宝网": tdurl = "http://taobao.fanhuan.com/"; link = "http://taobao.fanhuan.com/redirect?type=channel&rkey=QTBhaHR0cDovL3M4LnRhb2Jhby5jb20vc2VhcmNoP3BpZD1tbV8xNDMzMTA2M18wXzAmdGFva2VfdHlwZT0xJnVuaWQ9ezB9ejBa"; break;
        case "tmall": tdurl = "http://taobao.fanhuan.com/qijian/"; link = "http://taobao.fanhuan.com/redirect?type=channel&rkey=QTBhaHR0cDovL3MuY2xpY2sudGFvYmFvLmNvbS90P2U9ekdVMzRDQTdLJTJCUGtxQjA1JTJCbTdyZkdHamxZNjBvSGNjN2JrS09RaVJkSHVlcGNaemV2UHd0Z3clMkJJR3N2JTJGaUxqNHRrNmRTSGlDYTZQak55Vmd2QVBnR2tLNnB4aFNIVkJKTElyb2lPZlcxRDF1c0ZlNUxQJTJCTkElM0QlM0R6MFo="; break;
        case "paipai": tdurl = "http://paipai.fanhuan.com/"; link = "http://paipai.fanhuan.com/"; break;
        case "tgfh": tdurl = "http://tuan.fanhuan.com/"; link = "http://tuan.fanhuan.com/"; break;
        default: tdurl = "/" + code + ".html"; link = "http://go.fanhuan.com/redirect/?s=" + code; break;
    }
    var links = [];
    links[0] = link;
    links[1] = tdurl;
    return links;
}
// 删除用户添加商城的过度事件
function deleteMallMiddle(code) {
    $('#J_added li span[data-code="' + code + '"]').next('a').click();
}
var Poptip_Yet_ClearTime;
var Poptip_Full_ClearTime;
// 增加商家
var flagFuck = 0;
function AddBusiness(obj, code) {
    if ($(obj).hasClass('added') || flagFuck == 1 || !code) {
        return;
    }
    if ($('#J_added li').length >= 29) {
        clearTimeout(Poptip_Full_ClearTime);
        $('#J_poptip_full').show();
        Poptip_Full_ClearTime = setTimeout(function () { $('#J_poptip_full').hide(); }, 3000);
        if ($(window).scrollTop() > ($("#J_nav_site").offset().top + 145)) {
            $('html,body').animate({ scrollTop: $('#J_nav_site').offset().top }, 300);
        }
        return;
    }
    flagFuck = 1;
    var name = $(obj).html();
    $.post('/ajax/AddUserColBusiness', { identityCode: code, d: Math.random() }, function (data) {
        var json = eval('(' + data + ')');
        if (json.code == 1) {
            clearTimeout(Poptip_Yet_ClearTime);
            var opt_t_t = 2;
            if ($.browser.msie && $.browser.version == '6.0') {
                opt_t_t = 5;
            }
            $('.poptip-yet').css({ top: ($(obj).position().top - $(obj).height() - opt_t_t) + 'px', left: $(obj).position().left + 'px' }).show();
            Poptip_Yet_ClearTime = setTimeout(function () { $('.poptip-yet').hide(); }, 2000);

            var cutName = stringCutEllipsis(name, 5);
            $('#J_added').append('<li><span class="mall" data-code="' + code + '" ' + (cutName == name ? "" : "title =\"" + name + "\"") + '>' + name + '</span><a href="javascript:void(0)" onclick="DelBusiness(this,' + json.Msg + ');" class="ico-home i-home-remove"></a></li>');
            var likes = GetRedireUrl(code);
            $('<li class="' + (json.BusinessType == 1 ? "item-shop" : "item-mall") + '" bcid="' + json.Msg + '"><span class="poptip-info"><a ' + (json.BusinessType == 1 ? "biz-sellerid=\"" + code + "\"" : "") + ' data-fh="' + json.FH + '" ' + (cutName == name ? "" : "title =\"" + name + "\"") + '  href="' + likes[0] + '" data-code="' + code + '" data-title="' + name + '" target="_blank" class="mall"><img src="http://i.fanhuan.com/images/ico_mall/' + (json.BusinessType == 1 ? "淘宝网" : code) + '.png" onerror="this.src=\'http://i.fanhuan.com/images/ico_mall/ico-default.png\'" >' + cutName + '</a><a href="' + likes[1] + '?cat=0" data-code="' + code + '" data-title="' + name + '" class="detail" target= "_blank"><b></b><em><span>返</span>' + json.FH + '</em></a></span></li>').insertBefore("#J_home_added .item-add");
            var $navSite = $("#J_nav_site");
            if (((location.hostname == "mall.fanhuan.com" && $("#J_home_added").find("li").length - 1) % 6 != 0) || (location.hostname == "www.fanhuan.com" && ($("#J_home_added").find("li").length - 1) % 7 != 0)) {
                $("#J_home_added").find(".item-add").attr("class", "item-add").find(".ico-home").attr("class", "ico-home i-home-add-long").html("添加/管理");
            } else {
                $("#J_home_added").find(".item-add").attr("class", "item-add item-add-pos").find(".ico-home").attr("class", "ico-home i-home-add-big").html("");
            }
            $(obj).addClass('added').removeAttr('onclick').bind('click', function () { $('#J_added li span[data-code="' + code + '"]').next('a').click(); });
            flagFuck = 0;
            if ($('#J_added li').length == 1) {
                $('#J_home_added').next('.tiptext').hide();
                $('#J_home_added .item-add').show();
            }
            if ($('#J_added li').length >= 1) {
                $(".list-resort").removeClass("list-resort-normal").next(".divide").show();
            }
            $("#mask").height($('#J_nav_site').height());
            return;
        }
        else {
            if (json.Msg == "暂时只能添加这么多商家了哦") {
                clearTimeout(Poptip_Full_ClearTime);
                $('#J_poptip_full').show();
                Poptip_Full_ClearTime = setTimeout(function () { $('#J_poptip_full').hide(); }, 3000);
                if ($(window).scrollTop() > ($("#J_nav_site").offset().top + 145)) {
                    $('html,body').animate({ scrollTop: $('#J_nav_site').offset().top }, 300);
                }
            }
            else {
                alert(json.Msg);
            }
            flagFuck = 0;
            return;
        }
    });
}

// 当用户删除所有的常去商城时，那么记录
function SetUserRecommendMall() {
    $.post('/ajax/SetUserRecommendMall', { d: Math.random() }, function (data) {
        var json = eval("(" + data + ")");
        if (json.code == 200) {
            $('#J_added').data('isSetRecommend', '1');
        }
    });
}

// 移除商家
var delflag = 0;
function DelBusiness(obj, id) {
    if (delflag == 1 || !id) {
        return;
    }
    delflag = 1;
    $.post('/ajax/DeleteUserColBusiness', { id: id, d: Math.random() }, function (data) {
        var json = eval('(' + data + ')');
        if (json.code == 1) {
            $(obj).parent('li').remove();
            delflag = 0;
            if ($('#J_added li').length == 0) {
                $('#J_home_added').next('.tiptext').show();
                $('#J_home_added .item-add').hide();
                if ($('#J_added').data('isSetRecommend') != "1") {
                    SetUserRecommendMall();
                }
            }
            $('#J_home_added li[bcid="' + id + '"]').remove();

            if (((location.hostname == "mall.fanhuan.com" && $("#J_home_added").find("li").length - 1) % 6 != 0) || (location.hostname == "www.fanhuan.com" && ($("#J_home_added").find("li").length - 1) % 7 != 0)) {
                $("#J_home_added").find(".item-add").attr("class", "item-add").find(".ico-home").attr("class", "ico-home i-home-add-long").html("添加/管理");
            } else {
                $("#J_home_added").find(".item-add").attr("class", "item-add item-add-pos").find(".ico-home").attr("class", "ico-home i-home-add-big").html("");
            }

            var code = $(obj).prev('span').data('code');

            // 经常访问下面
            var $item1 = $('#J_mall_Soon_item').find('a[data-ic="' + code + '"]');
            if ($item1.length == 1) {
                $item1.bind('click', function () { AddBusiness($item1[0], code); }).removeClass('added');
            }

            // 查询下面的
            var Li = $('#J_search_type li[class*="cur"]');
            if (Li.length == 0) {
                var $item = $('#J_mall_item').find('a[data-ic="' + code + '"]');
                $item.bind('click', function () { AddBusiness($item[0], code); }).removeClass('added');
            }

            // 各个分类下
            var $item2 = $('.J_mall_item ul li').find('a[data-ic="' + code + '"]');
            if ($item2.length > 0) {
                $item2.bind('click', function () { AddBusiness($item2[0], code); }).removeClass('added');
            }

            //没有的时候
            if ($('#J_added li').length <= 0) {
                $(".list-resort").addClass("list-resort-normal").next(".divide").hide();
            }

            $("#mask").height($('#J_nav_site').height());
            return;
        }
        else {
            alert(json.Msg);
            delflag = 0;
            return;
        }
    });
}

// 将用户点击记录 cookie
// $.cookie("often", data, { path: "/",expires: 180, domain: _domain });
function SetOftenCookie(code) {
    if (CurrentUser.UserId) {
        var data = $.cookie("often_" + CurrentUser.UserId);
        if (!data) {
            data = code;
            $.cookie("often_" + CurrentUser.UserId, data, { path: "/", expires: 180, domain: _domain });
            return;
        }
        else {
            var array = data.split(",");
            if (array.length >= 60) {
                // 移除末尾的
                var endstr = array[array.length - 1];
                data = data.replace("," + endstr, "");
            }
            if (data.indexOf(',' + code) >= 0) {
                data = data.replace("," + code, "");
            }
            data = code + "," + data;
            $.cookie("often_" + CurrentUser.UserId, data, { path: "/", expires: 180, domain: _domain });
        }
    }
}

//首页调查弹框
//function light() {
//    if ($(".inquire-into li").hasClass("select") || $(".inquire-nr").val() != "说两句...") {
//        $(".refer").addClass("light");
//        $(".refer").bind("click", function () { return btnsubmit($(this)) });
//    }
//};
//$(".inquire-into li").click(function () {
//    $(this).addClass("select").siblings("li").removeClass("select");
//    light();
//});
//$(".inquire-nr").focus(function () {
//    $(this).addClass("input-txt-focus");
//    if ($(this).val() == "说两句...") { $(this).val(""); }
//    light();

//}).blur(function () {
//    if ($(this).val() == "") {
//        $(this).val("说两句...");
//        $(this).removeClass("input-txt-focus");
//        $(".refer").removeClass("light");
//        $(".refer").unbind("click");
//    }
//    light();
//});
//if ($.cookie("inquireinto") == null) {
//    $(".inquire-into").slideDown(700);
//};
//$(".inquire-into .close").click(function () {
//    $(".inquire-into").slideUp(700);
//    $.cookie("inquireinto", "true", { expires: 365 });
//    $("#goTop").animate({ "bottom": "20px" },"slow");
//});

//function btnsubmit() {
//    var fk = $(".inquire-into li.select,.inquire-nr").attr("data-like");
//    if ($(".inquire-nr").val() == "说两句...") { $(".inquire-nr").val(""); }
//    var fktext = $(".inquire-nr").val();
//    if (CurrentUser.UserId == undefined) {
//        CurrentUser.UserId = 0;
//    }
//    var url = "http://42.96.169.153:5001/CountHandle.ashx?type=2&site_id=1&like=" + fk + "&user_id=" + CurrentUser.UserId + "&callback=LikeCallback&remark=" + fktext;
//    CreateJScript("about_like", url);
//}
//function LikeCallback(data) {
//    if (data.Code == 200) {
//        $(".inquire-into").html("<p>感谢您的参与</p>");
//        setTimeout('$(".inquire-into").fadeOut()', 2000);
//        $.cookie("inquireinto", "true", { expires: 36500 });
//        return;
//    }
//    alert(data.Msg);
//}
// 首页值得买模块 开始
//新消息，5分钟获取一次
//    setInterval(tipNew,1000*60*0.5);
//    //查看新消息
//    $(".tipbox-new a").live("click", function () {
//        var $this = $(this);
//        $.get("http://baoliao.fanhuan.com/ajax/updateCache",function(data){
//            if(data.toLowerCase() == "ok"){
//                getProducts(true, "http://baoliao.fanhuan.com/getIndexzdmlist/1?callback=?", true);
//                $this.parent().hide();
//                $("#requestTime").val($("#requestTimeCheck").val());
//            }
//        })
//    });
//$.getJSON("http://baoliao.fanhuan.com/JsonTopNDay_List/1?callback=?", function (result) {
//    // $.ajax("http://baoliao.fanhuan.com/getIndexzdmlist/7?callback=?",{},function(result){
//    var data = result.data
//    var TopNDay_List = "";
//    for (var i = 0; i < data.length; i++) {
//        TopNDay_List += "<li class=\"clearfix\">";
//        TopNDay_List += "<a class=\"goods-pic\" target=\"_blank\" href=\"http://baoliao.fanhuan.com/detail/" + data[i].id + "\">";
//        TopNDay_List += "<img width=\"70\" height=\"70\" src='" + data[i].PicUrl + "' alt=\"" + data[i].Category + "\">";
//        TopNDay_List += "</a>";
//        TopNDay_List += "<a class=\"goods-tit\" target=\"_blank\" href=\"http://baoliao.fanhuan.com/detail/" + data[i].id + "\" title=\"" + data[i].showTitle + "\">" + data[i].showTitle + "</a>";
//        if (parseInt(data[i].readCount) > 5000) {
//            TopNDay_List += "<div class=\"goods-tit num\"><span class=\"f-tahoma f-red\">" + data[i].readCount + "</span> 人关注</div>";
//        } else
//          {
//            TopNDay_List += "<div class=\"goods-tit num\"><span class=\"f-tahoma\">" + data[i].readCount + "</span> 人关注</div>";
//          }
//        TopNDay_List += "</li>"
//    }
//    $(".list-goods").html(TopNDay_List);
//    //});  
//});
// 搜索推荐
//var html = '';
//$.getJSON('http://baoliao.fanhuan.com/ajax/GetIndexZDMHotList?callback=?', {}, function (data) {
//    //console.log(data);
//    if (data.code == 200) {
//        var list = data.list;
//        for (var i = 0, l = list.length; i < l; i++) {
//            html += '<li class="f-ellipsis"><a href="' + list[i].url + '" target="_blank"><i class="ico-zdm dot"></i>' + list[i].title + '</a></li>';
//        }
//        $('#J_tj').append(html);
//    }
//})
// tab切换