// 常去的商城的数组
var Often = [];
// 历史订单记录
var MyBuyedOrder = [];
//常去商城
function GetOftenData() {
    if (CurrentUser.UserId) {
        var _url = "http://my.fanhuan.com/ajax/favoritemall/?callback=ShowOrderArray&r=" + Math.random();
//        CreateJScript("getfm", _url);
    }
}
function ShowOrderArray(data) {
    if (data && CurrentUser.UserId) {
        MyBuyedOrder=ShowVisitedMall(data);
    }
}

function ShowVisitedMall(data) {
    if (data) {
        var IC = "";
        var array=[];
        var _mall="";
        data = data.split(",");
        var index = 0;
        var flag = 0;
        for (var j in data) {
            if (index > 59) {
                break;
            }
            IC = data[j];
            if (IC == "taobao" || IC == "淘宝网" || IC == "tmall" || IC == "paipai" || IC == "tgfh") {
                continue;
            }
            if (IsExist(IC)) {
                continue;
            }
            flag = 0;
            for (var key in AllMall) {
                if (flag == 1) {
                    break;
                }
                for (var i in AllMall[key]) {
                    _mall = AllMall[key][i];
                    if (_mall.IC == IC) {
                        array[index] = ({ IC: _mall.IC, T: _mall.T });
                        index++;
                        flag = 1;
                        break;
                    }
                }
            }
        }
        return array;
    }
}


function IsExist(IC) {
    for (var i in MyBuyedOrder) {
        if (MyBuyedOrder[i]['IC'] == IC) {
            return true;
        }
    }
    for (var i in Often) {
        if (Often[i]['IC'] == IC) {
            return true;
        }
    }
    return false;
}

// Alter by john for:  新用户（没有收藏、没有购买过的）显示的热门商城
function DefaultHotMall() {
    var _hot = [{ IC: "nuomi", T: "百度糯米" }, { IC: "honghaizi", T: "红孩子" }, { IC: "yougouwang", T: "优购时尚商城" }, { IC: "mengbasha", T: "梦芭莎" }, { IC: "shunfengyouxuan", T: "顺丰优选" }, { IC: "v1baobao", T: "唯一宝宝" }, { IC: "lifevc", T: "LifeVC" }, { IC: "muyingzhijia", T: "母婴之家" }, { IC: "zhengda", T: "美味七七" }, { IC: "lashou", T: "拉手网" }, { IC: "kede", T: "可得眼镜" }, { IC: "ocj", T: "东方CJ" }, { IC: "yiguo", T: "易果网" }, { IC: "jushang", T: "聚尚网" }, { IC: "banggo", T: "邦购网" }, { IC: "meilihui", T: "魅力惠"}];
    for (var i = 18; i < HotMall.length; i++) {
        _hot.push(HotMall[i]);
    }

    return _hot;
}

function GetHtmlCode() {
    var _li = "";
    if (MyBuyedOrder.length == 0 && Often.length == 0) {
        // Alter by john
        // _li+=CreateZoonLi(HotMall, true);
        _li += CreateZoonLi(DefaultHotMall(), true);
    }
    else {
        var array = MyBuyedOrder.concat(Often);
        _li += CreateZoonLi(array, false);
    }

    var html = '<ul class="clearfix">' + _li + '</ul>';
    $('.J_mall_item div').hide();
    $('#J_mall_Soon_item').html(html).show();
}
// 生成最近访问li
function CreateZoonLi(array,isCheck) {
    var click = "";
    var li = "";
    var count = 0;
    for (var i in array) {
        if (count > 59) {
            break;
        }
        if (li.indexOf("data-IC='" + array[i]["IC"] + "'")>=0) {
            continue;
        }
        if (isCheck) {
            if (array[i].IC == "taobao" || array[i].IC == "淘宝网" || array[i].IC == "tmall" || array[i].IC == "paipai" || array[i].IC == "tgfh") {
                continue;
            }
        }
        if (!IsAdded(array[i]["IC"])) {
            cla = "add";
            click = "onclick=\"AddBusiness(this,'" + array[i]["IC"] + "');\"";
        }
        else {
            cla = "add added";
            click = "onclick=\"deleteMallMiddle('" + array[i]["IC"] + "');\"";
        }
        li += String.Format("<li><a href='javascript:void(0);' data-IC='{0}' hidefocus='true' title='{1}'  class='{2}' {3} >{1}</a></li>", array[i]["IC"], array[i]["T"], cla, click);
        count++;
    }
    return li;
}
// 只从cookie中获取
function GetOftenDataFromCookie() {
    if (CurrentUser.UserId) {
        var data = $.cookie("often_" + CurrentUser.UserId);
        Often = [];
        Often = ShowVisitedMall(data);
        if (!Often) {
            Often = [];
        }
        GetHtmlCode(); 
    }
}
GetOftenData();