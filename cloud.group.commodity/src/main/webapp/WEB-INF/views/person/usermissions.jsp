<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common-user.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/main-user.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />   
<link href="/assets/stylesheets/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<script src="/assets/js/bootstrap-table.min.js"></script>    
    <title>

</title>
</head>
<body>
 <link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="assets/css/index.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/base.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/home.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/new_home.css" />
<title></title>
</head>
<body>
	<div class="headerPlaceBlock">
    </div>
    <div class="headeBlock">
        <div id="header">
            <div class="inner clearfix" style="position: relative;">
                <div class="newlogoshowindex" id="header_l" style="display:block">
                    <a class="gwa" href="/"></a>
                </div>
                
                <div class="newlogoshowtaobao">
                    <a class="gwa" href="/"></a>
                    <a class="cgfa" href="/"></a>
                </div>
                
                <div class="home-search clearfix blue">
                    <div class="search">
                        <div class="search_input">
                            <form action="" method="post" onsubmit="return SearchMall()" target="_blank" class="head_form">
                                <div class="Text_Ts_Box blue">
                                    <div class="TextBox">
                                        <input type="text" class="SearchInputText2" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
                                        <span class="icon-search"></span>
                                    </div>
                                    <div class="show J_show" id=""></div>
                                </div>
                                <input type="submit" class="searchInputImage" class="blue" value=""/>
                            </form>
                        </div>
                    </div>
                </div>
                
                
                
                <input type="hidden" id="homeNavId" value="hs_tb" />
            </div>
        </div>
    </div>

    
    <div class="opacity_background animate_block"></div>
    <div class="float_search_box animate_block">
        <div class="content">
            <div class="logotaobaofanhuan">
                    <a class="gwa" href="http://taobao.fanhuan.com" target="_blank"></a>
            </div>
            <div class="home-search clearfix blue">
                    <div class="search">
                        <div class="search_input">
                            <form action="" method="post" onsubmit="return SearchMall()" target="_blank" class="head_form">
                                <div class="Text_Ts_Box blue">
                                    <div class="TextBox">
                                        <input type="text" class="SearchInputText" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
                                        <span class="icon-search"></span>
                                    </div>
                                </div>
                                <input type="submit" class="searchInputImage" class="blue" value=""/>
                            </form>
                        </div>
                    </div>
                </div>
        </div>
    </div>



    
    <div id="navouter">
        <div class="navinner clearfix">
            <div id="nav">
                <ul> 
                    <li class="navfirst"><a class="nav-a" href="/" name="nav-www">今日好货</a></li>
                    <li><a class="nav-a" href="/rebate.html" name="nav-tb"><i class="icon-nav2"></i>热门商品</a> </li>
                    <li><a class="nav-a act-login" href="/userinfo.html" name="nav-my">我的返还</a></li>
                    
                </ul>
            </div>
            <div id="nav_notice">
            </div>
        </div>
    </div>
	<section class='user'>
	<div class="mainWidth container clearfix">
                <div class="aside pull-left">
                    <div class="accout">
                        <p><a href="/userinfo.html">我的收益</a></p>
                         <p><a href="/affiliates.html">联盟推广</a></p>
                    </div>
                    <div class="accout">
                        <p><a href="/userPay.html">申请提现</a></p>
                        <p><a href="/account_CashDeatil.html">收益记录</a></p>
                        <p><a href="/alipay.html">支付宝信息</a></p>
                    </div>
                </div>
                <div class="userContent pull-left">
                    <script src="/plugins/bootstrap-3.3.6/js/bootstrap.min.js"></script>
                    <script src="/plugins/DataTables/js/jquery.dataTables.min.js"></script>
                    <script src="/plugins/DataTables/js/dataTables.bootstrap.min.js"></script>
                    <script src="/scripts/sweetalert2.min.js"></script>
                    <!-- for IE support -->
                    <script src="/scripts/es6-promise.min.js"></script>
                    <script src="/scripts/peronalhadler.js?1.0" type="text/javascript"></script>
                    <script>
                        function accout() {
                            var $accoutBtn = $(".accout p a");
                            $accoutBtn.click(function () {
                                var $parents = $(this).closest(".accout");
                                $parents.find("h4").css({ "color": "#FE6E00", "border-left": "2px solid #FE6C00" });
                                var src = $parents.find("h4 img").each(function () {
                                    var src = $(this).attr("src");
                                    $(this).attr("src", src.replace(/-1/, "-2"));
                                });
                                var $other = $parents.siblings(".accout");
                                $other.find("h4").css({ "color": "#333", "border-left": "2px solid transparent" });
                                $other.each(function () {
                                    $(this).find("h4 img").each(function () {
                                        var src = $(this).attr("src");
                                        $(this).attr("src", src.replace(/-2/, "-1"));
                                    })
                                })
                            })
                        }
                        accout();
                    </script>              
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default" style="padding: 20px">
                <div class="panel-heading">
                    <span>收益记录</span>
                </div>
                <div class="panel-body">
                <table data-toggle="table"
					       data-url="/rebateslist.html"
					       data-pagination="true"
					       data-side-pagination="server"
					       data-page-list="[5, 10, 20, 50, 100, 200]"
					       data-height="300">
					    <thead>
					    <tr>
					    	<th data-field="missionName" data-align="center" data-sortable="true">任务名称</th>
					        <th data-field="createDate" data-align="right" data-sortable="true">时间</th>
					        <th data-field="earnings" data-align="center" data-sortable="true">收益</th>
					        <th data-field="amount" data-align="right" data-sortable="true">打码数量</th>
					        <th data-field="statusCn" data-align="center" data-sortable="true">状态</th>
					        <th data-field="typeCn" data-align="center" data-sortable="true">类型</th>
					    </tr>
					    </thead>
				</table>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function () {
            getAccountDetail();
        });
    </script>

                </div>
            </div>
        </section>
        
<%@include file="footer.jsp"%>
</body>
</html>
