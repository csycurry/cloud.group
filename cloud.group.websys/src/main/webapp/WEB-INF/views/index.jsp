<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>打码**-首页</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="打码赚钱,网络赚钱,玩游戏赚钱,网赚平台,网络兼职" />
<meta name="description"
	content="聚聚玩是一个玩游戏、体验产品赚积分。玩家可以通过玩游戏赚钱，打码赚钱，体验广告等方式进行网络赚钱。让您轻松实现网上赚钱的愿望。" />
<link href="/assets/index/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/common.css" type="text/css"
	rel="stylesheet" />
<link href="/assets/main/css/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="assets/main/js/scroll.js"></script>
<style type="text/css">
body {
	font: 14px '微软雅黑';
	background: #fff;
}

ul, li {
	margin: 0;
}

* {
	margin: 0;
	padding: 0;
	list-style: none;
}

.zxx_align_box_2 {
	display: table-cell;
	padding: 0 0.1em; solid #beceeb;
	color: #069;
	font-size: 10em;
}

.zxx_align_box_2 span.zxx_align_word {
	display: inline-block;
	font-size: 0.1em;
	line-height: 35px;
}
</style>
<link type="text/css" rel="stylesheet" href="/assets/main/css/index.css" />
</head>
<body>
	<%@include file="header.jsp"%>
	<script src="assets/main/js/dialog.js" type="text/javascript"></script>
	<script src="assets/main/js/common.js" type="text/javascript"></script>
	<script src="http://static.geetest.com/static/tools/gt.js"></script>

	<div class="banner">
		<ul class="bannerImg">
			<c:forEach items="${banners}" var="banner" varStatus="status">
				<li
					style="background: url('${banner.url}') no-repeat top center; display: none; position: absolute; left: 0; width: 100%; overflow: hidden; height: 100%;">
					<a style="position: relative; z-index: 10;" href='${banner.link}'
					target="_blank"></a>
				</li>
			</c:forEach>
			<c:if test="${userCode==null||userCode=='' }">
				<div class="container"
					style="height: 100%; width: 1200px !important; position: relative">
					<div class="register">
						<div class="registerCtn">

							<div class="nologin">
								<p>
									<span class="pull-left">用户名：</span><input type="text" id="user" />
								</p>
								<p>
									<span class="pull-left">密&nbsp;&nbsp;码：</span> <input
										type="password" id="psd" />
								</p>
								<div id="captchaIndex"
									style="margin: 10px 0 10px; padding-top: 10px"></div>
								<input id="btnlogin" class='btn btn-info btn-block'
									type="button" value="登录" /> <a href="/qqLogin.html"><img
									alt="qq登陆" src="assets/images/bt_white_24X24.png"><span
									id="qqLoginBtn"></span></a>
								<p class="dl">
									<a href="register.html"; class='pull-left'>注册账号</a><a
										href="Password.aspx" class='pull-right'>忘记密码？</a>
								</p>
							</div>

						</div>
					</div>
				</div>
			</c:if>
		</ul>
		<ul class="bannerIcon text-center">

			<li class='active'></li>

			<li class=''></li>

			<li class=''></li>

			<li class=''></li>

		</ul>

	</div>
	<div class='index'>
		<div class="container mainWidth" style="width: 1200px !important">
			<div class="loginReg">
				<div class="pull-left text-center tip" style="">体验步骤</div>
				<ul class='loginState clearfix'>
					<li>
						<div class="pull-left icon">
							<img src="assets/main/img/code-1.png" />
						</div>
						<div class="pull-left">
							<h4>注册账号</h4>
							<p>无需任何押金</p>
						</div>
						<div class="pull-left right">
							<img src="assets/main/img/login4.png" />
						</div>
					</li>
					<li>
						<div class="pull-left icon">
							<img src="assets/main/img/code-2.png" />
						</div>
						<div class="pull-left">
							<h4>赚取元宝</h4>
							<p>任务简单轻松</p>
						</div>
						<div class="pull-left right">
							<img src="assets/main/img/login4.png" />
						</div>
					</li>
					<li>
						<div class="pull-left icon">
							<img src="assets/main/img/code-3.png" />
						</div>
						<div class="pull-left">
							<h4>元宝提现</h4>
							<p>10000元宝=1元</p>
						</div>
					</li>
					<li>
						<div class="dh">
							<div class="pull-left icon">
								<img src="assets/main/img/code-4.png" />
							</div>
							<div class="pull-left">
								<h5>累计发放</h5>
								<p style="font-size: 18px;">${decimal}元</p>
							</div>
						</div>

					</li>
				</ul>
			</div>

			<div class="indexCtn clearfix mt25">
				<div class="pull-left prefecture">
					<div class="prefectureCom play">
						<h3 class='clearfix'>
							<div class="pull-left title">新手推荐</div>
							<div class="pull-right more">
								<a href="#" id="trymore">更多>></a>
							</div>
						</h3>
						<div class="tab-content">
							<div class="tab-pane active in fade gameplay pull-left" id="play">
								<div id="ctl00_ContentPlaceHolder1_UpdatePanel2">


									<div class="item">
										<div class="img">
											<img style="width: 100%"
												src="http://p1.bpimg.com/510468/b58c66e0e76b8a3a.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8013">混沌战域 2期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8013" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：15226人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">38万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">1000元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 100%"
												src="http://i1.piimg.com/510468/3ce9dd863233466a.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8016">斗三国 12期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8016" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：1380人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">28万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">300元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 100%"
												src="http://tu2.jujuwan.com/Game/2101480668121.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=7603">烈焰传说 1期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=7603" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：14188人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">48万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">600元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 100%"
												src="http://tu2.jujuwan.com/Game/2101479462675.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8002">天神战 9期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8002" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：4人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">21万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">600元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 100%"
												src="http://i1.piimg.com/510468/36365e8b44367e18.png" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8011">神魔 12期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8011" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：2050人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">28万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">1000元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 100%"
												src="http://tu2.jujuwan.com/Game/2101479347418.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8022">剑侠情缘2 25服</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8022" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：14260人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">13万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">500元</span>
										</p>
									</div>


								</div>
							</div>
							<div class="tab-pane in fade chessplay pull-left" id="chess">
								<div id="ctl00_ContentPlaceHolder1_UpdatePanel4">


									<div class="item">
										<div class="img">
											<img style="width: 215px; height: 152px;"
												src="http://tu2.jujuwan.com/Chess/210-11480930365.gif"
												alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8023">236棋牌-236棋牌3期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8023" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：1046人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">20459万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">24000元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 215px; height: 152px;"
												src="http://i1.piimg.com/510468/cb6cab90dad01a51.png" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8021">3386-《3386棋牌》3期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8021" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：1590人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">27852万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">8000元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 215px; height: 152px;"
												src="http://i4.buimg.com/44df7410fb4d8571.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8006">奇游棋牌 4期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8006" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：1780人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">12883万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">8000元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 215px; height: 152px;"
												src="http://p1.bqimg.com/510468/d8b515e8e74e5b02.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=8005">G9969-神兽转盘3期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=8005" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：1994人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">15855万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">12800元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 215px; height: 152px;"
												src="http://i1.buimg.com/510468/f9f0f5b96e93b233.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=7881">《2378棋牌》3期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=7881" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：1255人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">12300万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">8000元</span>
										</p>
									</div>

									<div class="item">
										<div class="img">
											<img style="width: 215px; height: 152px;"
												src="http://i4.piimg.com/510468/8e7c0ce10b7a83c5.jpg" alt="" />
											<p>
												<a style="color: white"
													href="CardDetailContent.aspx?gid=7998">1891-神兽转盘4期</a>
											</p>

											<div class='shadow'>
												<div class="shadowBtn">
													<a href="CardDetailContent.aspx?gid=7998" target="_blank">立即试玩</a>
												</div>
												<span>体验热度：12210人</span>
											</div>
										</div>
										<p>
											每人奖励：<span class="red">8280万</span><img
												src="assets/main/img/money.png" class='JB' alt="">
										</p>
										<p>
											冲级奖励：<span class="red">10000元</span>
										</p>
									</div>


								</div>
							</div>
						</div>
					</div>



					<div class="prefectureCom cash mt20">
						<h3 class="clearfix">
							<div class="pull-left title">热门推荐</div>
							<div class="pull-right more">
								<a href="/codes.html">更多>> </a>
							</div>
						</h3>
						<div class="tab-content">
							<div class="tab-pane active in fade gameplay pull-left" id="play">
								<div id="ctl00_ContentPlaceHolder1_UpdatePanel2">

									<c:forEach items="${missions}" var="m" varStatus="status">
										<div class="item">

											<div class="img">
												<a style="color: white" href="/code.html?missionId=${m.id}">
													<img style="width: 100%" src="${m.imageUrl}" alt="" />
												</a>
											</div>
											<p>${m.missionTitle}</p>
											<p>
												报名人数：<span class="red">${m.signNum}人</span>
											</p>

										</div>
									</c:forEach>


								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="pull-left aside">
					<div class="notice common mt20">
						<h4>
							<img src="assets/main/img/index4-2.png" alt="">公告
						</h4>
						<div class="chessRank" style="height: 80px">
							<span>${notice}</span>
						</div>
					</div>
					<div class="weekRank common mt20">
						<h4>
							<img src="assets/main/img/index4-2.png" alt="">实时提现
						</h4>
						<div class="chessRank">
							<div id="ctl00_ContentPlaceHolder1_UpdatePanel6">
								<div class='tv'>
									<div class="list_lh">
										<ul>
											<c:forEach items="${pay}" var="p">
												<li>用户:<span class='green1 apostrophe'>${p.usercode}</span>提现了<span
												class="red">${p.total}元</span></li>
											</c:forEach>
											

											<li>用户:<span class='green1 apostrophe'>p854251109</span>提现了<span
												class="red">14元</span></li>

											<li>用户:<span class='green1 apostrophe'>dukw0526</span>提现了<span
												class="red">2348元</span></li>

											<li>用户:<span class='green1 apostrophe'>200482</span>提现了<span
												class="red">1元</span></li>

											<li>用户:<span class='green1 apostrophe'>haizhong123</span>提现了<span
												class="red">58元</span></li>

											<li>用户:<span class='green1 apostrophe'>zx294113647</span>提现了<span
												class="red">42元</span></li>

											<li>用户:<span class='green1 apostrophe'>13175831806</span>提现了<span
												class="red">4元</span></li>

											<li>用户:<span class='green1 apostrophe'>denniscui</span>提现了<span
												class="red">1元</span></li>

											<li>用户:<span class='green1 apostrophe'>tianjiao1200</span>提现了<span
												class="red">11元</span></li>

											<li>用户:<span class='green1 apostrophe'>biw123</span>提现了<span
												class="red">5元</span></li>

											<li>用户:<span class='green1 apostrophe'>3441407735</span>提现了<span
												class="red">31元</span></li>

											<li>用户:<span class='green1 apostrophe'>qq549385465</span>提现了<span
												class="red">10元</span></li>

											<li>用户:<span class='green1 apostrophe'>dfffiw521</span>提现了<span
												class="red">14元</span></li>

											<li>用户:<span class='green1 apostrophe'>wyj3957</span>提现了<span
												class="red">11元</span></li>

											<li>用户:<span class='green1 apostrophe'>sunuo1</span>提现了<span
												class="red">13元</span></li>

											<li>用户:<span class='green1 apostrophe'>q18065167130</span>提现了<span
												class="red">100元</span></li>

											<li>用户:<span class='green1 apostrophe'>yiyepiaoling</span>提现了<span
												class="red">79元</span></li>

											<li>用户:<span class='green1 apostrophe'>wudi111</span>提现了<span
												class="red">30元</span></li>

											<li>用户:<span class='green1 apostrophe'>ll23852</span>提现了<span
												class="red">80元</span></li>

											<li>用户:<span class='green1 apostrophe'>a912001740</span>提现了<span
												class="red">10元</span></li>

											<li>用户:<span class='green1 apostrophe'>mmm32336</span>提现了<span
												class="red">340元</span></li>

											<li>用户:<span class='green1 apostrophe'>ruiven0317</span>提现了<span
												class="red">1元</span></li>

											<li>用户:<span class='green1 apostrophe'>dai19910705</span>提现了<span
												class="red">10元</span></li>

											<li>用户:<span class='green1 apostrophe'>q3252515</span>提现了<span
												class="red">666元</span></li>

											<li>用户:<span class='green1 apostrophe'>hzfcyzf</span>提现了<span
												class="red">722元</span></li>

											<li>用户:<span class='green1 apostrophe'>皇族天赐</span>提现了<span
												class="red">101元</span></li>

											<li>用户:<span class='green1 apostrophe'>libieshanggan</span>提现了<span
												class="red">279元</span></li>

											<li>用户:<span class='green1 apostrophe'>woyaohuijia</span>提现了<span
												class="red">288元</span></li>

											<li>用户:<span class='green1 apostrophe'>mingtianjiuzou</span>提现了<span
												class="red">588元</span></li>

											<li>用户:<span class='green1 apostrophe'>shiwei1235</span>提现了<span
												class="red">22元</span></li>

											<li>用户:<span class='green1 apostrophe'>a700733</span>提现了<span
												class="red">226元</span></li>

											<li>用户:<span class='green1 apostrophe'>xq12080</span>提现了<span
												class="red">74元</span></li>

											<li>用户:<span class='green1 apostrophe'>xuewen1021</span>提现了<span
												class="red">459元</span></li>

											<li>用户:<span class='green1 apostrophe'>13980863852</span>提现了<span
												class="red">68元</span></li>

											<li>用户:<span class='green1 apostrophe'>TIANGUIJIN</span>提现了<span
												class="red">2元</span></li>

											<li>用户:<span class='green1 apostrophe'>lsl123456</span>提现了<span
												class="red">70元</span></li>

											<li>用户:<span class='green1 apostrophe'>shanye</span>提现了<span
												class="red">66元</span></li>

											<li>用户:<span class='green1 apostrophe'>ltw12345</span>提现了<span
												class="red">9元</span></li>

											<li>用户:<span class='green1 apostrophe'>likai520</span>提现了<span
												class="red">50元</span></li>

											<li>用户:<span class='green1 apostrophe'>kaleb0522</span>提现了<span
												class="red">9元</span></li>

											<li>用户:<span class='green1 apostrophe'>y52111125y</span>提现了<span
												class="red">8元</span></li>

											<li>用户:<span class='green1 apostrophe'>13161860445</span>提现了<span
												class="red">3元</span></li>

											<li>用户:<span class='green1 apostrophe'>whq518</span>提现了<span
												class="red">740元</span></li>

											<li>用户:<span class='green1 apostrophe'>18207741560</span>提现了<span
												class="red">3元</span></li>

											<li>用户:<span class='green1 apostrophe'>lx886966</span>提现了<span
												class="red">3元</span></li>

											<li>用户:<span class='green1 apostrophe'>q519184804</span>提现了<span
												class="red">9元</span></li>

											<li>用户:<span class='green1 apostrophe'>name314</span>提现了<span
												class="red">45元</span></li>

											<li>用户:<span class='green1 apostrophe'>15008838979</span>提现了<span
												class="red">350元</span></li>

											<li>用户:<span class='green1 apostrophe'>m1044889812</span>提现了<span
												class="red">9元</span></li>

											<li>用户:<span class='green1 apostrophe'>15336656765</span>提现了<span
												class="red">150元</span></li>

										</ul>
									</div>
								</div>

							</div>
						</div>

					</div>
					<div class="notice common mt20">
						<h4>
							<img src="assets/main/img/index4-3.png" alt="" />最新资讯<a href="#">更多&gt;&gt;</a>
						</h4>
						<div id="ctl00_ContentPlaceHolder1_UpdatePanel3">
							<c:forEach items="${news}" var="n">
								<p class="apostrophe">
									<a href='/detail.json?newsId=${n.id}' target='_blank' title="">【重要资讯】${n.title}</a>
								</p>

							</c:forEach>

						</div>
					</div>

				</div>
			</div>

			<div class='blogroll'>
				<h4>友情链接</h4>
				<ul>
					<c:forEach items="${blogs}" var="b">
						<li><a href="${b.link}" target="_blank">${b.title}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
        $(function () {
            (function () {
            	$("div.list_lh").myScroll({
            		speed:40, //数值越大，速度越慢
            		rowHeight:68 //li的高度
            	});
            	
                function initindex() {
                    banner();
                    weekRank();
                    loginmodal();
                }
                var code={isverfiy:false}; 
                Geetcaptcha("#captchaIndex",code);
                $('#btnlogin').click(function () 
                        {
                            if (code.isverfiy) {
                                var user = $('#user').val();
                                if (user.length == 0) { alert("用户名为空"); return; };
                                var psw = $('#psd').val();
                                if (psw.length == 0) { alert("密码不可以为空"); return; };
                                $.post("/user/login.json", {"userCode":user,"userPwd":psw} , function (data) {
                                    if (data.status == 1) {
                                        window.location.reload();
                                        return;
                                    }
                                    else {
                                            alert(data.msg);
                                        	return;
                                    }
                                });
                            }
                            else {
                                alert('请先进行验证！');
                            }
                        });

                

                function banner() {
                    var $bannerIcon = $('.bannerIcon li');
                    var $bannerImg = $('.bannerImg li');
                    $bannerImg.eq(0).show();
                    var length = $bannerIcon.length;
                    $bannerIcon.hover(function () {
                        $(this).addClass('active').siblings().removeClass('active');
                        var index = $(this).index();
                        $bannerImg.eq(index).fadeIn(1000).siblings('li').fadeOut(1000);
                        clearInterval(timer);
                    }, function () {
                        var inum = $(this).index();
                        interval(inum);
                    })
                    var inum = 0;
                    var timer;
                    function interval(inum) {
                        timer = setInterval(function () {
                            inum++;
                            if (inum > length - 1) { inum = 0 }
                            $bannerImg.eq(inum).fadeIn(1000).siblings('li').fadeOut(1000);
                            $bannerIcon.eq(inum).addClass('active').siblings().removeClass('active');
                        }, 3000)
                    }
                    interval(0);
                }
                function weekRank() {
                    var $rankSel = $("select");
                    $rankSel.change(function () {
                        var $table = $('.' + $(this).val()).show();
                        $table.siblings('div').hide();
                    })
                }
                initindex();
            })();
        })
    </script>


	<div id="ctl00_hiddencode" class="hiddencode" style="display: none">309b79a6-5fbc-4484-a951-12401afe8efb</div>

	<%@include file="footer.jsp"%>

	<script type="text/javascript">
        $(function () {
            (function () {
                function init() {
                    navbar();
                    backTOP();
                    navbarMove();
                    var code={isverfiy:false};                
                    
                }       
                
                

                function navbarMove() {
                    var $navbar = $('.navbar .nav li');
                    if ($navbar.length == 0) {
                        $navbar = $('.head .headNav li');
                    }
                    var $move = $navbar.find('.move');
                    $move.each(function (i, obj) {
                        upDownMove(obj);
                    })
                }

                function upDownMove(obj) {
                    var moveOnOff = true;
                    setInterval(function () {
                        if (moveOnOff) {
                            $(obj).css({ "margin-top": "-2px" });
                            moveOnOff = false;
                        } else {
                            $(obj).css({ "margin-top": "0px" });
                            moveOnOff = true;
                        }
                    }, 250)
                }

                function navbar() {
                    var $abtn = $('#reg');
                    if ($abtn.length > 0) {
                        $abtn.attr('href', $abtn.attr('href') + '?para=' + encodeURIComponent(window.location.href));
                    }
                }

                function backTOP() {
                    var $backTOP = $('.backTOP');
                    $backTOP.click(function () {
                        $("html,body").animate({ 'scrollTop': '0' });
                    })
                }              
                init();
            })()
        })
    </script>
</body>
</html>
