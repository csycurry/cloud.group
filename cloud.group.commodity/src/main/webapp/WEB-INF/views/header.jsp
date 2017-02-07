<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/assets/main/css/chinaz.css" type="text/css" rel="stylesheet" />
<style>
*{ margin:0; padding:0; list-style:none;}
img{ border:0;}

.header{ width:100%; background:#F5F5F5;}
.nav{ width:100%; margin:0 auto; overflow:hidden;}
.nav ul li{ height:40px; line-height:40px; float:left; padding:10px 5px; margin:0px 5px;position:relative}
.nav ul li a{ color:#666; font-family:'Microsoft Yahei'; font-size:14px; text-decoration:none;}
.nav ul li a:hover{ color:#000; text-decoration:none;}
.headNav ul li span{ display:block; position:absolute; width:0px; height:0px; background:#1FAEFF; top:80px; left:50%;}
</style>
<script type="text/javascript">
	function cashclick() {

		$.post("/user/loginout.json", {}, function(data) {
			location.href="/index.html";
		});

	}
</script>
<header class="head" style="position: relative; z-index: 999">
	<div class="headNav">
		<div class="container head clearfix" style="width: 100% !important;min-width: 900px;max-width: 1200px;">
			<div class="logo pull-left ">
				<a href="http://currychen.cn"> <img class="logo_img" src="assets/main/img/logo.png"
					alt="" /></a>
			</div>
			<ul class="pull-left clearfix" style="margin-left: 45px">
				<li>
						<a href="/index.html">首页</a><span></span>
				</li>
				<li><a href="/codes.html">
						打码专区
				</a><span></span></li>
				<li><a href="/newslist.html?page=1&type=1">
						<div>资讯中心</div>
				</a><span></span></li>
				<li><c:if test="${userCode!=null&&userCode!='' }">
						<a href="/userinfo.html">
							<div>个人中心</div>
						</a><span></span>
					</c:if></li>
			</ul>
			<div class="headlittle pull-right">
				<c:if test="${userCode!=null&&userCode!='' }">
						<div class="nologin">
								<a id="alogin"><span
							class="glyphicon glyphicon-user "
							style="color:gray; font-size: 16px; height: 80px; line-height: 80px; vertical-align: bottom;">欢迎回来，${userCode}</span></a>	
							<a onclick="cashclick()"><span
							class="glyphicon"
							style="color: #DA8528; font-size: 16px; height: 80px; line-height: 80px; vertical-align: bottom;" role="button" >[退出]</span></a>		
						</div>
				</c:if>
				<c:if test="${userCode==null||userCode=='' }">
					<div class="nologin">
						<a id="alogin" class="loginmodal"><span
							class="glyphicon"
							style="color: #DA8528; font-size: 18px; height: 80px; line-height: 80px; vertical-align: bottom;" role="button">登录</span></a>
						<span class="orange"
							style="font-size: 18px; height: 80px; line-height: 80px; vertical-align: bottom;">丨</span>
						<a id="reg" href="/register.html"><span
							class="glyphicon"
							style="color: #DA8528; font-size: 18px; height: 80px; line-height: 80px; vertical-align: bottom;">注册</span></a>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</header>
