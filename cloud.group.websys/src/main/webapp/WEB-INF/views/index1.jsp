<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>打码**-首页</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="assets/index/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="assets/index/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="assets/index/css/faqstyle.css" type="text/css" media="all" />
<link href="assets/index/css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/index/css/contactstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="assets/index/news-css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="assets/index/list-css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="assets/index/css/font-awesome.min.css" />
<link href="assets/index/css/jquery.slidey.min.css" rel="stylesheet">

<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="assets/index/js/move-top.js"></script>
<script type="text/javascript" src="assets/index/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<style type="text/css">
.banner { position: relative; overflow: auto; } 
.banner li { list-style: none; } 
.banner ul li { float: left; } 
</style>
<!-- start-smoth-scrolling -->
</head>

<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>打码<span>Logo</span></h1></a>
			</div>
			<div class="w3_search">
			</div>
			<div  id="usertitle" class="w3l_sign_in_register">
			<c:if test="${userCode!=null&&userCode!='' }">
				欢迎您：${userCode}
			</c:if>
			<c:if test="${userCode==null||userCode=='' }">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal">登陆</a></li>
				</ul>
			</c:if>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					登陆 & 注册
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">点我</div>
							  </div>
							  <div class="form">
								<h3>请登陆</h3>
								<form id="login" method="post">
								  <input type="text" name="userCode" placeholder="用户名" required="">
								  <input type="password" name="userPwd" placeholder="密码" required="">
								  <input type="button" onclick="login()" value="登陆">
								</form>
							  </div>
							  <div class="form">
								<h3>注册</h3>
								<form id="registerForm" method="post">
								  <input type="text" id="userCode" name="userCode" placeholder="用户名" required="">
								  <input type="password" id="userPwd" name="userPwd" placeholder="密码" required="">
								  <input type="email" name="userMail" placeholder="邮箱">
								   <input type="text" name="userQq" placeholder="qq">
								  <input type="text" id="phoneTxt" name="userMobile" placeholder="手机号码">
								  <div>
								  	<input id="code" type="text" placeholder="验证码" required="" style="width: 60%;display: inline;" onblur="submitCode()"><img alt="code..." name="randImage" id="randImage" src="assets/index/image.jsp" style="width: 15%;display: inline;" height="20" border="1" align="absmiddle"/><a href="javascript:loadimage();" style="width: 15%;display: inline;"><font class=pt95>看不清点我</font></a>
								  </div>
								  <input type="text" id="msgCode" name="code" placeholder="短信验证码" required="" style="width: 70%;display: inline;"><input type="button" id="smsBtn" disabled="disabled" onclick="time()" value="获取验证码" style="width: 30%;display: inline;">
								  <input type="button" onclick="register()" value="注册">
								</form>
							  </div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.html">首页</a></li>
							<li>
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">打码专区</a>
							</li>
							<li><a href="series.html">文章专区</a></li>
							<li ><a href="news.html">个人中心</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">QQ客服 <i class="fa fa-twitter"></i></a></li>
		</ul>
  </nav>
</div>

<!-- banner -->
<div class="banner"> 
    <ul> 
    <c:forEach items="${banners}" var="banner" varStatus="status">
        <li><a  href="${banner.link}" width="100%"><img src="${banner.url}" alt="First slide" width="100%" height="300px"></a></li> 
    </c:forEach>
                <div class="register">
                    <div class="registerCtn">
                        
                        <div class="nologin">
                            <p>
                                <span class="pull-left">用户名：</span><input type="text" id="user" />
                            </p>
                            <p>
                                <span class="pull-left">密&nbsp;&nbsp;码：</span>
                                <input type="password" id="psd" />
                            </p>
                            <div id="captchaIndex" style="margin: 10px 0 10px; padding-top: 10px"></div>
                            <button class='btn btn-info btn-block' data-enable="false" type="button" id="btnlogin">登录</button>
                            <p class="dl"><a href="Register.aspx" class='pull-left'>注册账号</a><a href="Password.aspx" class='pull-right'>忘记密码？</a></p>
                        </div>
                        
                    </div>
                </div>
    
    </ul> 
</div> 
<!-- //banner -->


<!-- faq-banner -->
	<div class="faq">
			<div class="container">
				<div class="agileinfo-news-top-grids">
					<div class="col-md-8 wthree-top-news-left">
						<div class="wthree-news-left">
							<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<ul id="myTab" class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#home1" id="home1-tab" role="tab" data-toggle="tab" aria-controls="home1" aria-expanded="true">打码专区</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
									<div role="tabpanel" class="tab-pane fade in active" id="home1" aria-labelledby="home1-tab">
										<c:forEach items="${missions}" var="m" varStatus="status">
												<c:if test="${status.count%2!=0}"> 
												<div class="wthree-news-top-left"> 
													<div class="col-md-6 w3-agileits-news-left">
														<div class="col-sm-5 wthree-news-img">
															<a href="／mission／detail.html?id=${m.id}"><img src="${m.imageUrl}" alt="" /></a>
														</div>
														<div class="col-sm-7 wthree-news-info">
															<h5><a href="／mission／detail.html?id=${m.id}">${m.missionTitle}</a></h5>
															<p style="min-height: 80px;">摘要</p>
															<ul>
																<li><i class="fa fa-clock-o" aria-hidden="true"></i> <fmt:formatDate value="${m.beginTm}" pattern="yyyy-MM-dd"/></li>
																<li><i class="fa fa-eye" aria-hidden="true"></i> ${m.signNum}</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
											    </c:if>  
											    <c:if test="${status.count%2==0}">  
											        <div class="col-md-6 w3-agileits-news-left">
														<div class="col-sm-5 wthree-news-img">
															<a href="／mission／detail.html?id=${m.id}"><img src="${m.imageUrl}" alt="" /></a>
														</div>
														<div class="col-sm-7 wthree-news-info">
															<h5><a href="／mission／detail.html?id=${m.id}">${m.missionTitle}</a></h5>
															<p style="min-height: 80px;">摘要</p>
															<ul>
																<li><i class="fa fa-clock-o" aria-hidden="true"></i> <fmt:formatDate value="${m.createTm}" pattern="yyyy-MM-dd"/></li>
																<li><i class="fa fa-eye" aria-hidden="true"></i> ${m.signNum}</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
													<div class="clearfix"> </div>
													</div>
												</c:if>	
											    <c:if test="${status.count%2!=0&&status.count==fn:length(missions)}">  
											    	<div class="clearfix"> </div>
													</div>
											    </c:if>
										</c:forEach>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 wthree-news-right">
						<!-- news-right-top -->
						<div class="news-right-top">
							<div class="wthree-news-right-heading">
								<h3>最新文章</h3>
							</div>
							<div class="news-right-bottom-bg">
								<div class="news-grids-bottom">
									<c:forEach items="${news}" var="n">
										<div class="top-news-grid">
											<div class="top-news-grid-heading">
												<a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean rutrum ac nulla</a>
											</div>
											<div class="w3ls-news-t-grid top-t-grid">
												<ul>
													<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
													<li><a href="#"><i class="fa fa-user"></i> Vivamus nibh</a></li>
												</ul>
											</div>
										</div>
									</c:forEach>
									
								</div>
							</div>
							
						</div>
						<!-- //news-right-top -->
						<!-- news-right-bottom -->
						<div class="news-right-bottom">
							<div class="wthree-news-right-heading">
								<h3>最新提现</h3>
							</div>
							<div class="wthree-news-right-top">
								<div class="news-grids-bottom">
									<!-- date -->
									<div id="design" class="date">
										<div id="cycler">   
											<div class="date-text">
												<p>***提了***元</p>
											</div>
											<div class="date-text">
												<p>***提了***元</p>
											</div>
											<div class="date-text">
												<p>***提了***元</p>
											</div>
											<div class="date-text">
												<p>***提了***元</p>
											</div>
											<div class="date-text">
												<p>***提了***元</p>
											</div>
											<div class="date-text">
												<p>***提了***元</p>
											</div>
											<div class="date-text">
												<p>***提了***元</p>
											</div>
											<div class="date-text">
												<p>***提了***元</p>
											</div>
										</div>
										<script>
											function cycle($item, $cycler){
												setTimeout(cycle, 2000, $item.next(), $cycler);
												
												$item.slideUp(1000,function(){
													$item.appendTo($cycler).show();        
												});
												}
											cycle($('#cycler div:first'),  $('#cycler'));
										</script>
									</div>
									<!-- //date -->
								</div>
							</div>
						</div>
						<!-- //news-right-bottom -->
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
	</div>
<!-- //faq-banner -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-10 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>友情链接</h2>
						<div class="w3ls_footer_grid1_left">
						<ul>
						<c:forEach items="${blogs}" var="b">
							<li>
								<a href="${b.link}" target="_blank">${b.title}</a>
							</li>
						</c:forEach>
						</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>Copyright &copy; 2016.Company name All rights reserved.</p>
			</div>
			<div class="col-md-7 w3ls_footer_grid1_right">
				
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="assets/index/js/bootstrap.min.js"></script>
<script src="assets/index/js/jquery-latest.min.js"></script>
<script src="assets/index/js/unslider.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('.banner').unslider(); 
			});
		function loadimage(){
			document.getElementById("randImage").src = "assets/index/image.jsp?"+Math.random();
			}
		
		function getCode()
		{
			var mobile = $("#phoneTxt").val();
			if(mobile=="")
				{
					alert("请输入手机号！");
					return;
				}
			var msg = $("#msgCode").val();
			var flag =false;
			$.post("assets/index/validate.jsp",{"rand":$("#code").val()},function(result){
				if(result.indexOf("1")>0)
					falg = true;
			  });
			if(flag)
			{
				alert("请输入验证码!");
				return;
			}
			$.post("/sms.json",{"mobile":mobile},function(data){
				time();
			  });
		}
		var wait=60;
		function time() {
			if (wait == 0) {
				$("#smsBtn").removeAttribute("disabled");   
				$("#smsBtn").value="获取验证码";
				   wait = 60;
				  } else { 
				 
				$("#smsBtn").addAttribute("disabled", true);
				$("#smsBtn").value="重新发送(" + wait + ")";
				   wait--;
				   setTimeout(function() {
				    time()
				   },
				   1000)
				  }
		 }
		
		function submitCode() {
			$.post("assets/index/validate.jsp",{"rand":$("#code").val()},function(result){
				if(result.indexOf("1")>0)
					{
						$("#smsBtn").removeAttr("disabled"); 
					}
				else
					{
						alert(result);
					}
					
			  });
		}
		
		function login() {
			$.post("/user/login.json",$('#login').serialize(),function(data){
				if(data.status==0)
				{
				alter(data.msg)
				}
			else
				{
				$("#usertitle").html("欢迎您："+data.data.userCode);
				document.getElementById("login").reset()
				$('#myModal').modal('hide');
				}
			  });
		}
		
		function register() {
			var userCode = $("#userCode").val();
			if(userCode=="")
				{
					alert("请填写用户名");
					return;
				}
				
			var userPwd = $("#userPwd").val();
			if(userPwd=="")
			{
				alert("请输入密码");
				return;
			}
			$.post("/user/register.json",$('#registerForm').serialize(),function(data){
				if(data.status==0)
					{
					alter(data.msg)
					}
				else
					{
					$("#usertitle").html("欢迎您："+data.data.userCode);
					document.getElementById("registerForm").reset()
					$('#myModal').modal('hide');
					}
				
			  });
		}
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>