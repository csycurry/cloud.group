<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/assets/main/css/chinaz.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="assets/main/js/js.js"></script>
<script type="text/javascript">
       
	function cashclick() {

		$.post("/user/loginout.json", {}, function(data) {
			location.href="/index.html";
		});

	}
</script>
<header class="head find_nav" style="position: relative; z-index: 999">
	<div class="find_nav_left">
		<div class="find_nav_list" style="width: 1150px !important;">
			<div class="logoImg  pull-left">
				<a href="http://currychen.cn"> <img class="logo_img" src="assets/main/img/logo.png"
					alt="" /></a>
			</div>
			<ul class="pull-left clearfix">
				<li>
					<div>
						<a href="/index.html">首 页</a>
					</div>
				</li>
				<li><a href="/codes.html">
						<div>打码专区</div>
				</a></li>
				<li><a href="/newslist.html?page=1&type=1">
						<div>资讯中心</div>
				</a></li>
				<li><c:if test="${userCode!=null&&userCode!='' }">
						<a href="/userinfo.html">
							<div>个人中心</div>
						</a>
					</c:if></li>
				<li></li>
			</ul>
			<div class="headlittle pull-right">
				<c:if test="${userCode!=null&&userCode!='' }">
						<div class="nologin">
								<a id="alogin"><span
							class="glyphicon glyphicon-user "
							style="color:gray; font-size: 16px; height: 80px; line-height: 80px; vertical-align: bottom;">欢迎回来，${userCode}</span></a>	
							<a onclick="cashclick()"><span
							class="glyphicon"
							style="color: #DA8528; font-size: 16px; height: 80px; line-height: 80px; vertical-align: bottom;" >[退出]</span></a>		
						</div>
				</c:if>
				<c:if test="${userCode==null||userCode=='' }">
					<div class="nologin">
						<a id="alogin" class="loginmodal"><span
							class="glyphicon"
							style="color: #DA8528; font-size: 18px; height: 80px; line-height: 80px; vertical-align: bottom;">登录</span></a>
						<span class="orange"
							style="font-size: 18px; height: 80px; line-height: 80px; vertical-align: bottom;">丨</span>
						<a id="reg" href="/register.html"><span
							class="glyphicon"
							style="color: #DA8528; font-size: 20px; height: 80px; line-height: 80px; vertical-align: bottom;">注册</span></a>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</header>
