<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<link href="/assets/index/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/common-user.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/main-user.css" type="text/css"
	rel="stylesheet" />
<script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="assets/js/clipboard.min.js"></script>
<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />
<link href="/assets/stylesheets/bootstrap/bootstrap-table.min.css"
	rel="stylesheet">
<script src="/assets/js/bootstrap-table.min.js"></script>
<script src="/assets/js/jquery.zclip.min.js"></script>
<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="assets/css/index.css" />
<link rel="stylesheet" type="text/css" href="assets/css/base.css" />
<link rel="stylesheet" type="text/css" href="assets/css/home.css" />
<link rel="stylesheet" type="text/css" href="assets/css/new_home.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="assets/css/mynew.css" />
<link href="assets/css/search_box.css" rel="Stylesheet" type="text/css" />
<title>聚宝师-联盟推广</title>
</head>
<body>
	<div class="top_content">
		<div id="top_header">
			<div class="top_header_r">
				<ul>
				</ul>
			</div>
			<div class="top_header_l">
				<p class="login_info" id="site_userinfo"></p>
			</div>
		</div>
	</div>



	<div class="headerPlaceBlock"></div>
	<div class="headeBlock">
		<div id="header">
			<div class="inner clearfix" style="position: relative;">
				<div class="newlogoshowindex" id="header_l" style="display: block">
					<a class="gwa" href="/"></a>
				</div>

				<div class="newlogoshowtaobao">
					<a class="gwa" href="/"></a> <a class="cgfa" href="/"></a>
				</div>

				<div class="home-search clearfix blue">
					<div class="search">
						<div class="search_input">
							<form action="" method="post" onsubmit="return SearchMall()"
								target="_blank" class="head_form">
								<div class="Text_Ts_Box blue">
									<div class="TextBox">
										<input type="text" class="SearchInputText2" name="kw"
											autocomplete="off" value="请输入淘宝/天猫宝贝标题" /> <span
											class="icon-search"></span>
									</div>
									<div class="show J_show" id=""></div>
								</div>
								<input type="submit" class="searchInputImage" class="blue"
									value="" />
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
						<form action="" method="post" onsubmit="return SearchMall()"
							target="_blank" class="head_form">
							<div class="Text_Ts_Box blue">
								<div class="TextBox">
									<input type="text" class="SearchInputText" name="kw"
										autocomplete="off" value="请输入淘宝/天猫宝贝标题" /> <span
										class="icon-search"></span>
								</div>
							</div>
							<input type="submit" class="searchInputImage" class="blue"
								value="" />
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
					<li><a class="nav-a" href="/rebate.html" name="nav-tb"><i
							class="icon-nav2"></i>热门商品</a></li>
					<li><a class="nav-a act-login" href="/userinfo.html"
						name="nav-my">我的返还</a></li>

				</ul>
			</div>
			<div id="nav_notice"></div>
		</div>
	</div>
	<section class='user'>
	<div class="mainWidth container clearfix">
		<div id="account_sidebar">
			<ul id="actside_ul">

				<li><a class="" href="/userinfo.html"><i
						class="iconfont iconfont-1"></i>我的收益</a></li>
				<li><a class="selected" href="/affiliates.html"><i
						class="iconfont iconfont-credit"> </i>联盟推广</a></li>
				<li><a class="" href="/userPay.html"> <i
						class="iconfont iconfont-3"></i>申请提现
				</a></li>
				<li><a class="" href="/alipay.html"><i
						class="iconfont iconfont-5"> </i>支付宝信息</a></li>
			</ul>
		</div>
		<div class="userContent pull-left">
			<div class="col-md-12">
				<div class="panel panel-default" style="padding: 20px">
					<div class="panel-heading">
						<span>您的唯一推荐链接</span>
					</div>
					<div class="panel-body">
						<input id="copyTo" type="text" disabled="disabled" value="${url}"
							style="width: 90%; height: 50px; font-size: 20px; text-align: center;">
						<input id="copyBtn" type="button" value="复制" onclick="copy()"
							style="font-size: 15px">
					</div>
				</div>
				<div class="row"></div>

				<ul id="myTab" class="nav nav-tabs">
					<li class="active"><a href="#one" data-toggle="tab"> 一级好友
					</a></li>
					<li><a href="#two" data-toggle="tab"> 二级好友 </a></li>
					<li><a href="#three" data-toggle="tab"> 三级好友 </a></li>
					<li><a href="#four" data-toggle="tab"> 四级好友 </a></li>
					<li><a href="#five" data-toggle="tab"> 五级好友 </a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="one">
						<div class="panel panel-default" style="padding: 20px">
							<table data-toggle="table" data-url="/levellist.html?type=1"
								data-pagination="true" data-side-pagination="server"
								data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
								<thead>
									<tr>
										<th data-formatter="runningFormatter" data-align="center">序号</th>
										<th data-field="userName" data-align="center"
											data-sortable="true">用户名</th>
										<th data-field="level1Name" data-align="center"
											data-sortable="true">推荐人</th>
										<th data-field="createDate" data-align="center"
											data-sortable="true">注册时间</th>
										<th data-field="earns" data-align="center"
											data-sortable="true">我的提成</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
					<div class="tab-pane fade" id="two">
						<div class="panel panel-default" style="padding: 20px">
							<table data-toggle="table" data-url="/levellist.html?type=2"
								data-pagination="true" data-side-pagination="server"
								data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
								<thead>
									<tr>
										<th data-formatter="runningFormatter" data-align="center">序号</th>
										<th data-field="userName" data-align="center"
											data-sortable="true">用户名</th>
										<th data-field="level1Name" data-align="center"
											data-sortable="true">推荐人</th>
										<th data-field="createDate" data-align="center"
											data-sortable="true">注册时间</th>
										<th data-field="earns" data-align="center"
											data-sortable="true">我的提成</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
					<div class="tab-pane fade" id="three">
						<div class="panel panel-default" style="padding: 20px">
							<table data-toggle="table" data-url="/levellist.html?type=3"
								data-pagination="true" data-side-pagination="server"
								data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
								<thead>
									<tr>
										<th data-formatter="runningFormatter" data-align="center">序号</th>
										<th data-field="userName" data-align="center"
											data-sortable="true">用户名</th>
										<th data-field="level1Name" data-align="center"
											data-sortable="true">推荐人</th>
										<th data-field="createDate" data-align="center"
											data-sortable="true">注册时间</th>
										<th data-field="earns" data-align="center"
											data-sortable="true">我的提成</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
					<div class="tab-pane fade" id="four">
						<div class="panel panel-default" style="padding: 20px">
							<table data-toggle="table" data-url="/levellist.html?type=4"
								data-pagination="true" data-side-pagination="server"
								data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
								<thead>
									<tr>
										<th data-formatter="runningFormatter" data-align="center">序号</th>
										<th data-field="userName" data-align="center"
											data-sortable="true">用户名</th>
										<th data-field="level1Name" data-align="center"
											data-sortable="true">推荐人</th>
										<th data-field="createDate" data-align="center"
											data-sortable="true">注册时间</th>
										<th data-field="earns" data-align="center"
											data-sortable="true">我的提成</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
					<div class="tab-pane fade" id="five">
						<div class="panel panel-default" style="padding: 20px">
							<table data-toggle="table" data-url="/levellist.html?type=5"
								data-pagination="true" data-side-pagination="server"
								data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
								<thead>
									<tr>
										<th data-formatter="runningFormatter" data-align="center">序号</th>
										<th data-field="userName" data-align="center"
											data-sortable="true">用户名</th>
										<th data-field="level1Name" data-align="center"
											data-sortable="true">推荐人</th>
										<th data-field="createDate" data-align="center"
											data-sortable="true">注册时间</th>
										<th data-field="earns" data-align="center"
											data-sortable="true">我的提成</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>

				<div class="col-md-12"></div>
			</div>
		</div>

	</div>
	</div>
	</section>

	<%@include file="footer.jsp"%>
</body>
<script type="text/javascript">
function runningFormatter(value, row, index) {
	return index + 1;
}

function copy() {
	if (window.clipboardData) {
        window.clipboardData.clearData();
        window.clipboardData.setData("Text", $("#copyTo").val());
        alert("已经成功复制到剪帖板上！");
    }else{
    	$('#copyBtn').zclip({
            path: "/assets/js/ZeroClipboard.swf",
            copy: function(){
                return $('#copyTo').val();
  　　　 　　}
        });

    }
}
</script>
</html>
