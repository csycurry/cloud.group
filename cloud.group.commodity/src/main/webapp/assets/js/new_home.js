/**
 * 
 */
var FH = FH || {};
$("#curPage").val("1");
$("#curType").val("1");
FH.home = (function () {
    function getParam(url, param) {
        var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
        var paraObj = {};
        for (i = 0; j = paraString[i]; i++) {
            paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
        }
        var returnValue = paraObj[param.toLowerCase()];
        if (typeof (returnValue) == "undefined") {
            return "";
        } else {
            return returnValue;
        }
    }

    var brandId = 0;
    var NUm = "";
    var idPairs = "";
    var idArr = "";

    var cgfData = {};
    var cgfPageIndexBefore = 1;
    var cgfPageIndexAfter = 0;

    var jiujiuData = {};
    var jiujiuPageIndexBefore = 1;
    var jiujiuPageIndexAfter = 0;

    var ifLoad = false;

    var liHeight = 472;

    var firstCategory = $("#cgfCategory a").first();
    firstCategory.addClass("activeClass");
    var firstCategoryId = firstCategory.data("id");

    var flagEle = $("#index_tab .curr a");
    flagEle.data({
        curPage: 1,
        clicked: true
    });

    var init = function () {
        getGoods(1, $(".home_lists_vbox_1 #J_box_cgf"));
        cgfScroll();
        FH.base.lazyLoad($("#J_box_cgf"));
    };

    var getMAPgoods = function (ele, type) {
        flagEle = ele;
        var curType = $("#curType").val();
        if (curType == type) {
            return false;
        } else {
            var eleparents = ele.parents("li");
            if (eleparents.hasClass("curr")) {
                return false;
            } else {
                eleparents.addClass("curr").siblings().removeClass("curr");
            }
            $("#curType").val(type);

            if (type == 1) {
                $(".bh-fr").html("每天早10晚8点上新");
            } else {
                $(".bh-fr").html("每天10点上新");
            }

            if (!flagEle.data("clicked")) {
                flagEle.data({
                    curPage: 1,
                    clicked: true
                });
                getGoods(type, $(".home_lists_vbox_" + type).find(".list_box_m"), 1);

                if (type == 3) {
                    getCategory();
                    FH.base.lazyLoad($("#J_jiujiu"));
                }
            }

            $(".cgf-list").hide();
            $(".home_lists_vbox_" + type).show();
            $("#showend").hide();
        }
    };


    var getGoods = function (type, target, mode) {
        ifLoad = false;
        var html = "";
        var curType = $("#curType").val();
        if (curType == 1) {//cgf
            var url = "/commodity/page.json?";
            url = url + "commodityType=2&page=" + flagEle.data("curPage") + "&commodityCategory=" + firstCategoryId;
            $.ajax({
                type: "GET",
                url: url,
                cache: false,
                dataType: "json",
                success: function (result) {
                    cgfPageIndexAfter = result.data.pageCount;
                    cgfData[cgfPageIndexAfter] = result.data;
                    html = getCgfGoodsHtmls(result.data, cgfPageIndexAfter);
                    target.append(html);
                    getCGFQiangNum();

                    // 设置整个列表的高度
                    var cgfBox = $("#J_box_cgf");
                    if (cgfPageIndexAfter == 1) {
                        cgfBox.css("height", (liHeight * 3));
                    }
                    else if (result.data.pageIndex == result.data.pageCount) {
                        cgfBox.css("height", cgfBox.height() + (liHeight * Math.ceil(result.list.length / 3)));
                    } else {
                        cgfBox.css("height", cgfBox.height() + (liHeight * 3));
                    }
                    ifLoad = true;
                }, error: function () {
                    //
                }
            })
        } 
        flagEle.data("curPage", flagEle.data("curPage") + 1);
    };
    
    var switchCategory = function (categoryId, a) {
        var category = a.attr("data-id");
        $("#cgfCategory").children().children().removeClass("activeClass");
        a.addClass("activeClass");
        var category2 = $(".activeClass").attr("id").split("category")[1];
        var that = this;
        if (category2 != categoryId) {
        	var url = "/commodity/page.json?";
            url = url + "commodityType=2&page=" + flagEle.data("curPage") + "&commodityCategory=" + category;
            $.ajax({
                type: "GET",
                url: url,
                cache: false,
                dataType: "json",
                success: function (result) {
                	$(".home_lists_vbox_1").find(".list_box_m").html("");
                    cgfPageIndexAfter = result.data.pageCount;
                    cgfData[cgfPageIndexAfter] = result.data;
                    html = getCgfGoodsHtmls(result.data, cgfPageIndexAfter);
                    
                    $(".home_lists_vbox_1").find(".list_box_m").append(html);
                    getCGFQiangNum();

                    // 设置整个列表的高度
                    var cgfBox = $("#J_box_cgf");
                    if (cgfPageIndexAfter == 1) {
                        cgfBox.css("height", (liHeight * 3));
                    }
                    else if (result.data.pageIndex == result.data.pageCount) {
                        cgfBox.css("height", cgfBox.height() + (liHeight * Math.ceil(result.list.length / 3)));
                    } else {
                        cgfBox.css("height", cgfBox.height() + (liHeight * 3));
                    }
                    ifLoad = true;
                }, error: function () {
                    //
                }
            })
            flagEle.data("curPage", flagEle.data("curPage") + 1);
        }
    };

    // up表示向上滚动
    var getCgfGoodsHtmls = function (result, pageIndex, bool, up) {
        idPairs = "";
        flagEle.data("totalPage", result.totalCount);
        var html = "";
        var idArray = [];
        if (result.list != "") {
            var items = result.list,
                getTime = result.getTime,
                module2 = "",
                uid = "",
                clienttype = "pc",
                version = '1.0.0',
                clientid = fp4.get();

            function liHtml(items, i) {
                var html = "";
                var btn_name = '去领卷';
                var style = "";
                var item = items[i],
                    itemId = item.commodityId,
                    id = item.id,
                    title = item.commodityName,
                    statusSellout = item.commoditySales,
                    productType = item.commodityType,
                    imageHtml = '<img src=' + (cgfPageIndexAfter == 1 || bool ? item.commodityPic : "") + ' data-url="' + item.commodityPic;
                NUm = id + '|' + itemId + ',';
                idPairs = idPairs + NUm;

                var link = item.couponLink + "&id=" + id;

                var source, type;
                    //0.超高返 1.折扣 2.领券减 3.普通返 UserPayRatio代表分成比例为0显示折扣样式 为1显示超高返样式
                    if (productType == 0) {
                        source = (item.shopTypeMean == "淘宝" || item.shopTypeMean == "天猫") ? "c" : "73";
                        type = (item.shopTypeMean == "淘宝" || item.shopTypeMean == "天猫") ? "c" : "jd";
                        link += "&source=" + source + "&type=" + type + "&op=" + item.OriginalPrice + "&pp=" + item.PresentPrice + "&rp=" + item.ReturnPrice;
                    } else if (productType == 1) {
                        source = (item.shopTypeMean == "淘宝" || item.shopTypeMean == "天猫") ? "bc" : "90";
                        link += "&source=" + source + "&type=bc" + "&op=" + item.OriginalPrice + "&pp=" + item.PresentPrice;
                    } else if (productType == 2) {
                        source = (item.shopTypeMean == "淘宝" || item.shopTypeMean == "天猫") ? "fc" : "94";
                        link += "&source=" + source + "&type=fc" + "&op=" + item.OriginalPrice + "&pp=" + item.PresentPrice + "&rp=" + item.ReturnPrice + "&pp1=" + item.PhonePrice + "&img=" + item.ImageUrl;
                        if (item.couponLink.indexOf("uland") > -1) {
                            link += "&lingquanjian=1&quanurl=" + item.couponLink;
                        } else {
                            link += "&lingquanjian=1";
                        }
                    } else if (productType == 3) {
                        source = (item.MallName == "淘宝" || item.MallName == "天猫") ? "ac" : "71";
                        link += "&source=" + source + "&type=bc" + "&op=" + item.OriginalPrice + "&pp=" + item.PresentPrice;
                    }

                //                if (item.FuliQuanUrl && item.Activity != 1 && item.Activity != 2) {
                //                    if (item.FuliQuanUrl.indexOf("uland") > -1) {
                //                        link += "&lingquanjian=1&quanurl=" + item.FuliQuanUrl;
                //                    } else {
                //                        link += "&lingquanjian=1";
                //                    }
                //                }


                function tongji(event, id, eventTag) {
                    return JSON.stringify({
                        "Act_Event": event,
                        "Module1": "chaogaofan",
                        "Module2": module2,
                        'ItemID': id,
                        'UID': uid,
                        'ClientID': clientid,
                        'ClientType': clienttype,
                        'Act_Event_Tag': eventTag,
                        'Version': version
                    });
                }

                html += '<li style="position:absolute;top:' + ((pageIndex - 1) * (liHeight * 3) + Math.floor(i / 3) * liHeight) + 'px;left:' + ((i % 3) * 330) + 'px" class="goods-list g-l-default" data-itemid="' + itemId + '">' +
                    '<div style="background-color:#fff;height:452px"><div class="goods-pic">' +
                    '<div class="goods-pic-link">';

                html += '<a ';
                if (item.couponLink.indexOf("gou.fanhuan.com") < 0 && item.SaleOut == 0) {
                    html += 'onclick="FH.home.tanchuang($(this))"';
                }

                html += ' href=';

                html += link;


                html += ' class="li-box J_btn_jump clearfix"' +
                    ' itemId="' + id + '" id="' + id + '" getTime="' + getTime + '"  nowPrice="' + item.PresentPrice + '" yongJinRate="' + item.Proportion + '" brandId="' + item.BrandID + '"' +
                    ' data-href="' + link + '" data-tongji=' + tongji("jump0", id, "image") + '>' + imageHtml + '" data-tongji=' + tongji("exposure", id, "image") + ' alt="' + title + '" onerror="FH.home.imgLoadError(this);"></a>';

                html += '<span class="tag-ap J_tags">';
                if (item.IsNew == 1) {
                    html += '<span class="new-bt new-jr"><span class="jinri">今日</span></span>';
                }

                if (item.LimitNumber && item.LimitNumber != "0") {
                    html += '<span class="new-bt new-xl"><span class="xianliang">限量<br/>' + item.LimitNumber + '件</span></span>';
                }
                html += '</span>';

                if (item.couponNum == 0 ) { //已卖光，且不是品牌或者活动的。显示已抢光
                    html += '<i class="ico-qg" style="line-height:124px;"></i>';
                }


                html += '</div></div>';
                html += '<div class="goods-name f-ellipsis">';

                if (statusSellout > 0 ) {
                    html += '<a href="javascript:;" class="czg-wqg sell-out">' + title + '</a>';
                }  else {
                    html += '<a href="javascript:;" data-href="' + link + '"  itemId="' + id + '" getTime="' + getTime + '" nowPrice="' + item.PresentPrice + '" yongJinRate="' + item.Proportion + '" brandId="' + item.BrandID + '" class="czg-wqg J_btn_jump" data-tongji=' + tongji("jump0", id, "title") + ' onclick="FH.home.tanchuang($(this))">' + title + '</a>';
                }
                html += '</div>';

                var originalPrice = "", finalPrice;
                //商品类型ProductType：0.超高返1.折扣2.领券减3.普通返
                if (productType == 0 || (productType == 3 && item.UserPayRatio == 1)) {
                    finalPrice = Math.add(item.PresentPrice, -item.ReturnPrice);
                    originalPrice = '<div class="price-info">' +
                        '<i></i>' +
                        '<span class="price-pay">支付   ' + item.PresentPrice + '</span>' +
                        '<span class="price-return">返还   ' + item.ReturnPrice + '</span>' +
                        '</div>';
                } else if (productType == 1 || (productType == 3 && item.UserPayRatio == 0)) {
                    finalPrice = item.commodityPrice;
                    if (Number(item.PresentPrice) < Number(item.commodityPrice)) {
                        originalPrice = '<del class="original-price">¥' + item.OriginalPrice + '</del>';
                    }
                } else if (productType == 2) {
                    finalPrice = item.couponPay;
                    originalPrice = '<div class="price-info">' +
                        '<i></i>' +
                        '<span class="price-pay">' + item.commodityPrice + '</span>' +
                        '<span class="price-return">'+item.couponDetail + '</span>' +
                        '</div>';
                }

                html += '<div class="good-price"><span class="price-final"><em>¥</em>' + (finalPrice == 0 ? 0 : finalPrice) + '</span>' + originalPrice + '</div>';

                if (statusSellout > 0) {
                    html += '<span class="buy-icon disabled">' + btn_name + '</span>';
                } else {
                    if (item.couponLink && item.couponLink.indexOf("uland") == -1) {
                        html += '<a target="_blank" href="' + item.FuliQuanUrl + '" class="quan_link">领 ' + item.ReturnPrice + '元券</a>';
                        style = 'bottom: 44px';
                    }

                    html += '<a style="' + style + '" href="javascript:;" itemId="' + id + '" getTime="' + getTime + '" nowPrice="' + item.PresentPrice + '" yongJinRate="' + item.Proportion + '" brandId="' + item.BrandID + '" class="buy-icon" data-href="' + link + '" data-tongji=' + tongji("jump0", id, "shop") + ' onclick="FH.home.tanchuang($(this))">' + btn_name + '</a>';
                }

                var className = "";
                if (item.shopTypeMean == "天猫") {
                    className = item.SaleOut > 0 ? "shopIconTMout" : "shopIconTM";
                } else {
                    className = item.SaleOut > 0 ? "shopIconTBout" : "shopIconTB";
                }

                html += '<div class="good-footer">' +
                    '<i class="dashed"></i>' +
                    '<span class="qianggouNum"><i id="qianggouNum' + item.ID + '"></i></span>' +
                    '<span class="' + className + '"></span>' +
                    '</div>';

                html += '</div></li>';

                return html;
            }


            for (var i = 0, len = items.length; i < len; i++) {
                idArray.push(items[i].ID);
                html += liHtml(items, i);

                if (flagEle.data("curPage") > flagEle.data("totalPage")) {
                    $('#showend').css({ 'display': 'block' });
                }
            }
        }


        return html;
    };

    // up表示向上滚动
    var getJiuGoodsHtmls = function (data, pageIndex, bool, up) {
        idArr = "";
        var idArray = [];
        flagEle.data("totalPage", data.pagecount);
        var result = data.datas;
        if (result.datas != "") {
            var html = "", module2 = "", clientid = fp4.get(), uid = "", clienttype = "pc", version = '1.0.0';
            for (var i = 0, len = result.length; i < len; i++) {
                var item = result[i];
                var itemId = item.ProductId;
                var id = item.ID;
                var IsSellOut = item.Status;
                var title = item.Title;
                var source = getParam(item.Link, "source");

                var imgUrl = data.ImageConfig.DomainName + "/goods/" + item.ImageUrl + ".jpg" + data.ImageConfig.PcImg;
                var link = item.Link + (item.SCode == "lingquanjian" ? imgUrl : "");

                if (item.SCode == "fanhuan") {
                    link += "&type=bc&op=" + item.OldPrice + "&pp=" + item.NowPrice + "&isjiujiu=1";
                } else if (item.SCode == "chaogaofan") {
                    link = link.replace("source=" + source, "source=cp") + "&type=c&op=" + item.OldPrice + "&pp=" + item.NowPrice + "&rp=" + item.ReturnPrice;
                }

                idArray.push(item.ID);

                function tongji(event, id, eventTag) {
                    return JSON.stringify({
                        "Act_Event": event,
                        "Module1": "jiujiu",
                        "Module2": "",
                        'ItemID': id,
                        'UID': uid,
                        'ClientID': clientid,
                        'ClientType': clienttype,
                        'Act_Event_Tag': eventTag,
                        'Version': version
                    });
                }

                idArr = itemId + "," + idArr;

                html += '<li data-itemid="' + itemId + '" class="goods-list" style="position:absolute;top:' + ((pageIndex - 1) * (liHeight * 3) + Math.floor(i / 3) * liHeight) + 'px;left:' + ((i % 3) * 330) + 'px">';
                html += '<div class="goods-pic">';
                html += '<div  class="goods-pic-link">';
                if (IsSellOut == 3) {
                    html += '<a href="javascript:;" class="li-box clearfix">' +
                        '<img src=' + (jiujiuPageIndexAfter == 1 || bool ? imgUrl : "http://i.fanhuan.com/images/zdm/zdm_loading.png?v=150129") + ' data-url="' + imgUrl + '" data-tongji=' + tongji("exposure", id, "image") + ' title="' + title + '" alt="' + title + '" onerror="FH.home.imgLoadError(this);" ></a>';
                } else {
                    html += '<a target="_blank" href="' + link + '" class="li-box J_btn_jump  clearfix" data-tongji=' + tongji("jump0", id, "image") + '>' +
                        '<img src=' + (jiujiuPageIndexAfter == 1 || bool ? imgUrl : "http://i.fanhuan.com/images/zdm/zdm_loading.png?v=150129") + ' data-url="' + imgUrl + '" data-tongji=' + tongji("exposure", id, "image") + ' title="' + title + '" alt="' + title + '" onerror="FH.home.imgLoadError(this);" ></a>';
                }
                html += '<span class="tag-ap J_tags clearfix">';
                if (item.IsNewProduct == 1) {
                    html += '<i class="istoday">今日</i>';
                }

                if (item.LimitNumber && item.LimitNumber != 0) {
                    var limitNumber;
                    if (item.LimitNumber > 10000) {
                        limitNumber = String(item.LimitNumber / 10000).slice(0, String(item.LimitNumber / 10000).lastIndexOf(".") + 3).replace(/0+?$/, "").replace(/[.]$/, "") + "万";
                    } else {
                        limitNumber = item.LimitNumber;
                    }
                    html += '<span class="new-bt new-xl"><span class="xianliang">限量<br/>' + limitNumber + '件</span></span>';
                }

                html += '</span>';
                if (IsSellOut == 3) {
                    html += '<i class="ico-qg"></i>';
                }

                if (Number(item.LastPrice) > 0) {
                    if (IsSellOut != 3) {
                        html += '<span class="phone-box"><span class="new-phoneIcon"></span><span class="phone-word">手机专享价 ¥ ' + item.LastPrice + '</span></span>';
                        html += '<span class="phone-icon">手机专享价 ¥ ' + item.LastPrice + '</span>';
                    }
                }

                html += '</div></div>';
                html += '<div class="goods-name f-ellipsis">';
                if (IsSellOut == 3) {
                    html += '<a href="javascript:;" class="czg-wqg">' + title + '</a>';
                } else {
                    html += '<a target="_blank" href="' + link + '" class="czg-wqg J_btn_jump " data-tongji=' + tongji("jump0", id, "title") + '>' + title + '</a>';
                }
                html += '</div>';

                //                var originalPrice = "";
                //                if (Number(item.NowPrice) < Number(item.OldPrice)) {
                //                    originalPrice = '<del class="original-price">¥' + item.OldPrice + '</del>';
                //                }

                //                html += '<div class="good-price"><span class="price-final"><em>¥</em>' + item.NowPrice + '</span>' + originalPrice + '</div>';

                var originalPrice = "", finalPrice;
                if (item.SCode == "chaogaofan") {
                    finalPrice = Math.add(item.NowPrice, -item.ReturnPrice);
                    originalPrice = '<div class="price-info">' +
                        '<i></i>' +
                        '<span class="price-pay">支付   ' + item.NowPrice + '</span>' +
                        '<span class="price-return">返还   ' + item.ReturnPrice + '</span>' +
                        '</div>';
                } else {
                    finalPrice = item.NowPrice;
                    if (Number(item.NowPrice) < Number(item.OldPrice)) {
                        originalPrice = '<del class="original-price">¥' + item.OldPrice + '</del>';
                    }
                }

                html += '<div class="good-price"><span class="price-final"><em>¥</em>' + (finalPrice == 0 ? 0 : finalPrice) + '</span>' + originalPrice + '</div>';

                // 3代表已卖光
                if (IsSellOut != 3) {
                    html += '<a class="buy-icon" target="_blank" href="' + link + '" data-tongji=' + tongji("jump0", id, "shop") + '>去购买</a>';
                } else {
                    html += '<span class="buy-icon disabled">去购买</span>';
                }

                var className = "";
                if (item.SourceMall == "天猫") {
                    className = "shopIconTM";
                } else {
                    className = "shopIconTB";
                }

                html += '<div class="good-footer">' +
                    '<i class="dashed"></i>' +
                    '<span class="qianggouNum"><i id="qianggouNum' + itemId + '"></i></span>' +
                    '<span class="' + className + '"></span>' +
                    '</div>';

                html += '</li>';

                if (flagEle.data("curPage") > flagEle.data("totalPage")) {
                    $('#showend').css({ 'display': 'block' });
                }
            }
        }

        // 曝光统计
        if (!up) {
            FH.base.exposureTongJi("jiujiu", idArray);
        }

        return html;
    };

    var qiangNum = function (data) {
        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                if (data[i].QiangGou > 0) {
                    var ele = $('#qianggouNum' + data[i].Id);
                    if (ele) {
                        ele.text(data[i].QiangGouStr + "人抢购");
                    }
                }
            }
        }
    };

    var getCGFQiangNum = function () {
        if (idPairs) {
            $.getJSON("http://gou.fanhuan.com/ajax/GetQianggou?callback=?&idPairs=" + idPairs, function (result) {
                idPairs = "";
                qiangNum(result.data);
            });
        }
    };

    var getJIUQiangNum = function () {
        if (idArr) {
            $.getJSON("http://jiujiu.fanhuan.com/ajax/GetQianggou?callback=?&ids=" + idArr, function (result) {
                idArr = "";
                qiangNum(result.data);
            });
        }
    };

    var imgLoadError = function (obj, type) {
        var num = type == 1 ? "3" : type == 2 ? "4" : type == 3 ? "5" : type == 4 ? "6" : "";
        obj.src = "http://i.fanhuan.com/images/zdm/zdm_loading" + num + ".png?v=20160317";
        return false;
    };

    var createCgfListBefore = function () {
        if (!cgfData[cgfPageIndexBefore - 1]) {
            return;
        }
        var html = getCgfGoodsHtmls(cgfData[cgfPageIndexBefore - 1], cgfPageIndexBefore - 1, true, true);

        $("#J_box_cgf").prepend(html);
        getCGFQiangNum();
        cgfPageIndexBefore--;
    };


    var createJiujiuListBefore = function () {
        if (!jiujiuData[jiujiuPageIndexBefore - 1]) {
            return;
        }
        var html = getJiuGoodsHtmls(jiujiuData[jiujiuPageIndexBefore - 1], jiujiuPageIndexBefore - 1, true, true);

        $("#J_jiujiu").prepend(html);

        getJIUQiangNum();
        jiujiuPageIndexBefore--;
    };

    var cgfScroll = function () {
        var p = 0, t = 0;
        $(window).bind("scroll", function () {
            var scrollTop = $(document).scrollTop(),
                cgfBox = $("#J_box_cgf"),
                jiujiuList = $("#J_jiujiu"),
                curType = $("#curType").val();

            p = scrollTop;

            if (scrollTop + $(window).height() > $(document).height() - ($("#footer").height()) - cgfBox.find("li").height() && t < p) {
                if (flagEle.data("curPage") <= flagEle.data("totalPage")) {
                    $(".loading_j").show();
                    if (ifLoad == true) {
                        if (curType == 1) {
                            getGoods(1, $(".home_lists_vbox_1").find(".list_box_m"));
                        } else {
                            getGoods(3, $(".home_lists_vbox_3").find(".list_box_m"));
                        }
                        $(".loading_j").hide();
                    }

                } else {
                    $(".loading_j").hide();
                    $('#showend').css({ 'display': 'block' });
                }
            }


            try {
                if (curType == 1) {
                    // 向下滑
                    if (scrollTop > cgfBox.find("li").first().offset().top + 3 * liHeight) {
                        cgfBox.find("li").slice(0, 9).remove();
                        cgfPageIndexBefore++;
                    }

                    // 向上滑
                    if (scrollTop < cgfBox.find("li").first().offset().top && t > p) {
                        createCgfListBefore();
                    }

                    // 向上滑
                    if (scrollTop + $(window).height() < ($(document).height() - ($("#footer").height() + cgfBox.find("li").height() * 4)) && t > p) {
                        if (flagEle.data("curPage") == Number(flagEle.data("totalPage")) + 1) {
                            var len = cgfData[flagEle.data("curPage") - 1].Datas.length;
                            cgfBox.find("li").slice(-len).remove();
                            cgfBox.css("height", cgfBox.height() - (liHeight * Math.ceil(cgfData[flagEle.data("curPage") - 1].Datas.length / 3)));
                            flagEle.data("curPage", flagEle.data("curPage") - 1);
                        } else if (Number(flagEle.data("curPage")) > 2) {
                            cgfBox.find("li").slice(-9).remove();
                            cgfBox.css("height", cgfBox.height() - (liHeight * 3));
                            flagEle.data("curPage", flagEle.data("curPage") - 1);
                        }
                    }
                } else {
                    // 向下滑
                    if (scrollTop > jiujiuList.find("li").first().offset().top + 3 * liHeight) {
                        jiujiuList.find("li").slice(0, 9).remove();
                        jiujiuPageIndexBefore++;
                    }

                    // 向上滑
                    if (scrollTop < jiujiuList.find("li").first().offset().top && t > p) {
                        createJiujiuListBefore();
                    }

                    // 向上滑
                    if (scrollTop + $(window).height() < ($(document).height() - ($("#footer").height() + jiujiuList.find("li").height() * 4)) && t > p) {
                        if (flagEle.data("curPage") == Number(flagEle.data("totalPage")) + 1) {
                            var len = jiujiuData[flagEle.data("curPage") - 1].datas.length;
                            jiujiuList.find("li").slice(-len).remove();
                            jiujiuList.css("height", jiujiuList.height() - (liHeight * Math.ceil(jiujiuData[flagEle.data("curPage") - 1].datas.length / 3)));
                            flagEle.data("curPage", flagEle.data("curPage") - 1);
                        } else if (Number(flagEle.data("curPage")) > 2) {
                            jiujiuList.find("li").slice(-9).remove();
                            jiujiuList.css("height", jiujiuList.height() - (liHeight * 3));
                            flagEle.data("curPage", flagEle.data("curPage") - 1);
                        }
                    }
                }
            } catch (e) {

            }

            setTimeout(function () {
                t = p;
            }, 0);
        });
    };

    $("#goTop a").off("click").click(function (e) {
        e.preventDefault();
        $("html, body").animate({ scrollTop: 0 }, 0);
        if ($("#curType").val() == 1) {
            setTimeout(function () {
                cgfPageIndexAfter = 1;
                cgfPageIndexBefore = 1;
                var html = getCgfGoodsHtmls(cgfData[1], 1);
                getCGFQiangNum();
                $("#J_box_cgf").html(html);
                $("#J_box_cgf").css("height", (liHeight * 3));

                flagEle.data("curPage", 2);
            }, 10)
        } else {
            setTimeout(function () {
                jiujiuPageIndexAfter = 1;
                jiujiuPageIndexBefore = 1;
                var html = getJiuGoodsHtmls(jiujiuData[1], 1);
                getJIUQiangNum();
                $("#J_jiujiu").html(html);
                $("#J_jiujiu").css("height", (liHeight * 3));

                flagEle.data("curPage", 2);
            }, 10)
        }
    });

    $(document).on("keydown", function (e) {
        if (e.keyCode == 36 || e.keyCode == 9) {
            $("#goTop a").trigger("click");
        }
    });

    var tanchuang = function (obj) {
        var id = obj.attr('itemId');
        var brandId = obj.attr('brandId');
        var yongJinRate = obj.attr('yongJinRate');
        var nowPrice = obj.attr('nowPrice');
        var getTime = obj.attr('getTime');
        var link = obj.attr('data-href');
        var w = window.open();

        $.ajax({
            type: 'POST',
            url: 'http://gou.fanhuan.com/ajax/CheckChaogaofanValid?callback=?&id=' + id + "&brandId=" + brandId + "&yongJinRate=" + yongJinRate + "&nowPrice=" + nowPrice + "&getTime=" + getTime,
            dataType: 'json',
            error: function () {
                isItem = 0;
                w.close();
                layer("稍后重试~");
            },
            success: function (result) {
                var code = Number(result.code);
                switch (code) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        w.close();
                        document.getElementById("bq-fufu").innerHTML = code == 1 ? "今日好货上新啦~" : code == 4 ? "该宝贝返还比例有变动" : code == 5 ? "该宝贝价格有变动" : "该宝贝活动已结束";
                        $("#bq-clo").text('好的');

                        $("#bq-back,#bq-tc").show();
                        $("#bq-clo,#bq-close").click(function () {
                            location.reload();
                        });

                        break;
                    default:
                        w.location.href = link;
                }
            }
        });
    };

    return {
        init: init,
        getMAPgoods: getMAPgoods,
        tanchuang: tanchuang,
        imgLoadError: imgLoadError,
        switchCategory :switchCategory
    };
})();