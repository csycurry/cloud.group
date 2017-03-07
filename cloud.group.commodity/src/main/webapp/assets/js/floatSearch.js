
function initFloatSearchBox(triggerDOM, toggleDOM, target, scrollBuffer) {
    if (!target) {
        target = $(".headeBlock");
    }

    if (!scrollBuffer) {
        scrollBuffer = 0;
    }


    var float_search_box = $(".float_search_box");
    var animateBlock = $(".animate_block");
    var isFloatSearchShow = false;
    var floatSearchProcess = false;

    var opacity_background = $(".opacity_background");

    //2016 02 16 淘宝搜索框下拉判断是否显示商城
    $(window).bind("scroll", function () {
        var aa = triggerDOM.offset().top - $(document).scrollTop() + scrollBuffer;

        if (floatSearchProcess && $(document).scrollTop() > 0) {
            return;
        }
        if (aa < 0) {
            if (isFloatSearchShow) {
                return;
            }

            //            if (searchInputIsFocus) {
            //                float_search_box.find(".SearchInputText").focus();
            //            }

            var searchResult = target.find(".J_show");
            target.find(".J_show").remove();
            //给浮动搜索框添加搜索结果DIV父容器

            float_search_box.find(".SearchInputText").val(target.find(".SearchInputText").val());

            if (target.find(".SearchInputText").val() == "") {
                float_search_box.find(".J_show").hide();
            } else {
                float_search_box.find(".J_show").show();
                float_search_box.find(".J_show div").show();
            }

            setTimeout(function () {
                float_search_box.find(".Text_Ts_Box").append(searchResult);
            }, 100)

            floatSearchProcess = true;
            isFloatSearchShow = true;
            animateBlock.animate({ top: '0px' }, "300", function () {
                floatSearchProcess = false;
            });


        } else if (aa > 0) {
            if (!isFloatSearchShow) {
                return;
            }

            floatSearchProcess = true;
            isFloatSearchShow = false;

            var searchResult = float_search_box.find(".J_show");
            target.find(".Text_Ts_Box").append(searchResult);
            var val = float_search_box.find(".SearchInputText").val();
            var topInput = target.find(".SearchInputText");
            if (val == "" || val == "搜商城 或 粘贴淘宝/天猫宝贝标题" || !searchResult.is(":visible")) {
                topInput.val(val);
                target.find(".J_show").hide();
            } else {
                target.find(".J_show").show();
                target.find(".J_show div").show();
                topInput.val(val);
            }

            animateBlock.animate({ top: '-50px' }, "300", function () {
                //删除浮动搜索框搜索结果DIV父容器
                float_search_box.find(".J_show").remove();
                //修改搜索框placeholder
                floatSearchProcess = false;
            });

        }
    });
}