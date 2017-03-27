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
                $("#s_toptitle").text("按 Ctrl+D，把 聚宝师加入收藏夹，购物更省钱！");
            } else if (Object.hasOwnProperty.call(window, "ActiveXObject") && !window.ActiveXObject) {
                //判断是否是ie11
                $("#s_toptitle").text("按 Ctrl+D，把聚宝师加入收藏夹，购物更省钱！");
            } else {
                $("#s_toptitle").text("网购，不要忘了用聚宝师省钱哦，您可以把聚宝师：");
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
//获取有子分类
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
// 显示最近访问
function GetSoonMall() {
    // GetOftenDataFromCookie();
    $('.J_mall_item div').hide();
    $('#J_mall_Soon_item').show();
    $('.tiptext-noresult').hide();
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

// 删除用户添加商城的过度事件
function deleteMallMiddle(code) {
    $('#J_added li span[data-code="' + code + '"]').next('a').click();
}
var Poptip_Yet_ClearTime;
var Poptip_Full_ClearTime;
// 增加商家
var flagFuck = 0;



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

