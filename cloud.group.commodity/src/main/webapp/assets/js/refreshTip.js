/**
* @author yahuang.wu
* @date : 2016.03.28
*/

$(function () {
    var $body = $("body");

    var myEndTimeSeconds = $body.find("#timeoutToTen").val();
    var type = $body.find("#timeoutToTenType").val();

    /*
    * 0 = 超高返图片
    * 1 = 9块9图片
    * 2 = 品牌特卖图片
    */

    var tipImg = ["http://i.fanhuan.com/images/newcgf/refreshTip_0.png?v=201601020", "http://i.fanhuan.com/images/newcgf/refreshTip_1.png?20160328", "http://i.fanhuan.com/images/newcgf/refreshTip_2.png?20160328"][type];

    //倒计时，当myEndTimeSeconds=0时，显示商品上新提示。

    var interval = setInterval(function () {
        myEndTimeSeconds--;
        if (myEndTimeSeconds <= 0) {
            $body.append('<div id="showindow" style="display: block;position: fixed;right: 20px;bottom: 80px;background: url(' + tipImg + ') no-repeat;width: 137px;height: 169px;;z-index: 999;">' +
                '<a id="showClose" style="height: 30px;width: 30px;float: right;cursor: pointer;"></a>' +
                '<a id="showReload" style="height: 30px;width: 90px;cursor: pointer;position: absolute;bottom: 18px;left: 23px;"></a>' +
                '</div>');
            clearInterval(interval);
        }
    }, 1000);


    //关闭提示
    $body.on("click", "#showClose", function () {
        $("#showindow").css("display", "none");
        location.reload();
    });

    //刷新页面
    $body.on("click", "#showReload", function () {
        location.reload();
    });
});