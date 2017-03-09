// 常去的商城的数组
var Often = [];
// 历史订单记录
var MyBuyedOrder = [];
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
