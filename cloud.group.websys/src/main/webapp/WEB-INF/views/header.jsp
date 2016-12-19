<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/assets/main/css/chinaz.css" type="text/css" rel="stylesheet" />
<style>
*{ margin:0; padding:0; list-style:none;}
img{ border:0;}

.header{ width:100%; background:#F5F5F5;}
.nav{ width:1000px; margin:0 auto; overflow:hidden;}
.nav ul li{ height:40px; line-height:40px; float:left; padding:10px 5px; margin:0px 5px;position:relative;}
.nav ul li a{ color:#666; font-family:'Microsoft Yahei'; font-size:14px; text-decoration:none;}
.nav ul li a:hover{ color:#000; text-decoration:none;}
.nav ul li span{ display:block; position:absolute; width:0px; height:0px; background:#1FAEFF; top:58px; left:50%;}
</style>
<script type="text/javascript">
	$(function(){
		$('.head li').hover(function(){
			$('span',this).stop().css('height','2px');
			$('span',this).animate({
				left:'0',
				width:'100%',
				right:'0'
			},200);
		},function(){
			$('span',this).stop().animate({
				left:'50%',
				width:'0'
			},200);
		});
	});   
	function cashclick() {

		$.post("/user/loginout.json", {}, function(data) {
			location.href="/index.html";
		});

	}
</script>
<header class="head" style="position: relative; z-index: 999">
	<div class="headNav">
		<div class="container head clearfix nav" style="width: 1150px !important;">
			<div class="logoImg  pull-left">
				<a href="http://currychen.cn"> <img class="logo_img" src="assets/main/img/logo.png"
					alt="" /></a>
			</div>
			<ul class="pull-left clearfix">
				<li>
					<div>
						<a href="/index.html">首 页</a><span></span>
					</div>
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
