<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="/assets/stylesheets/bootstrap/bootstrap-table.min.css"
	rel="stylesheet">
<script type="text/javascript" src="assets/main/js/jquery.cookie.js"></script>
<script src="/assets/js/bootstrap-table.min.js"></script>
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
                                        <input type="text" class="SearchInputText" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
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
               <div id="account_container" class="clearfix">
        <div id="account_sidebar">
            
            <ul id="actside_ul">
                 
                <li><a class="selected" href="/my/AllOrder_V3"><i
                    class="iconfont iconfont-1"></i>我的订单</a></li>
                    <li><a class="" href="/my/Credit"><i class="iconfont iconfont-credit">
                    </i>信用等级</a></li>
                <li><a class="" href="/my/MallMoneyDetail">
                    <i class="iconfont iconfont-3"></i>收支明细</a></li>
                <li><a class="" href="/my/safe"><i class="iconfont iconfont-5">
                </i>安全中心</a></li>
                
                <li><a class="" href="/my/mail"><i class="iconfont iconfont-6">
                </i>我的消息 </a><span class="newnews"></span></li>
                
            </ul>
        </div>

		<div class="userContent pull-left">
			<script>
				function accout() {
					var $accoutBtn = $(".accout p a");
					$accoutBtn.click(function() {
						var $parents = $(this).closest(".accout");
						$parents.find("h4").css({
							"color" : "#FE6E00",
							"border-left" : "2px solid #FE6C00"
						});
						var src = $parents.find("h4 img").each(function() {
							var src = $(this).attr("src");
							$(this).attr("src", src.replace(/-1/, "-2"));
						});
						var $other = $parents.siblings(".accout");
						$other.find("h4").css({
							"color" : "#333",
							"border-left" : "2px solid transparent"
						});
						$other.each(function() {
							$(this).find("h4 img").each(function() {
								var src = $(this).attr("src");
								$(this).attr("src", src.replace(/-2/, "-1"));
							})
						})
					})
				}
				accout();
			</script>

			<div class="row">
				<div class="alert alert-warning">
					<h4 class="text-center">用户提示</h4>
					<hr style="color: #6D6D6D" />
					<p>
						提现说明：提现金额为1元的整数倍，满<span class="red" style="font-size: 18px">1元</span>即可提现,管理员确认后<span
							class="red" style="font-size: 18px">48小时内</span>给您提现
					</p>
					<p>官网申明：提现前请确认自己的收款账号无误
					</p>
				</div>
				<div class="col-md-12">

					<div id="ctl00_ContentPlaceHolder1_up1">

						<div class="panel panel-default" style="padding: 20px">
							<div class="panel-heading">
								<span>申请提现</span>
							</div>
							<div class="panel-body">
								<form id="payForm">
									<div class="form-group">
										<p>
											<span style="width: 100px; display: inline-block">
												可提现余额：</span><span id="ctl00_ContentPlaceHolder1_lbleftmoney"
												style="color: #478fca !important; line-height: 21px; font-size: 22px">${user.balanceRMB}</span>元
										</p>
									</div>
									<div class="form-group">
										<p>
											<span style="width: 100px; display: inline-block">支付宝账户：</span><span
												id="ctl00_ContentPlaceHolder1_lbZhiFuBao"
												style="color: #dd5a43; line-height: 15px; font-size: 16px">${user.userCode}</span>
										</p>
									</div>
									<div class="form-group">
										<c:if test="${user.userMobile==null||user.userMobile==''}">
											<p>
												<span style="width: 100px; display: inline-block">手机号码：</span><input
													name="ctl00$ContentPlaceHolder1$txtphone" type="text"
													id="ctl00_ContentPlaceHolder1_txtphone" disabled="disabled"
													placeholder="请先在“基本信息”栏绑定手机号" style="width: 300px;" />
											</p>
										</c:if>
										<c:if test="${user.userMobile!=null&&user.userMobile!=''}">
											<p>
												<span style="width: 100px; display: inline-block">手机号码：</span><input
													name="ctl00$ContentPlaceHolder1$txtphone" type="text"
													id="ctl00_ContentPlaceHolder1_txtphone" disabled="disabled"
													value="${user.userMobile}" style="width: 300px;" />
											</p>
										</c:if>
									</div>
									<div class="form-group">
										<p>
											<span style="width: 100px; display: inline-block">提现金额：</span><input
												name="amount" type="text"
												id="ctl00_ContentPlaceHolder1_askmoney" placeholder="请输入1的整数倍"
												style="width: 300px;" />
										</p>
									</div>
									<div id="ctl00_ContentPlaceHolder1_divVerify"
										class="form-group">
										<p>
											验证码：<input id="mobileCode" name="code" type="text"
												id="ctl00_ContentPlaceHolder1_txtlistenNumer"
												placeholder="请填写验证码" /> <input type="button" data-mode="1" value="发送验证码"
												class="btn btn-sm btn-info phoneverify" />
										</p>
									</div>

									<div class="form-group">
										<p class="pick">
											<input type="button"
												name="ctl00$ContentPlaceHolder1$btnpickCash" value="确定提现"
												onclick="return cashclick();"
												id="ctl00_ContentPlaceHolder1_btnpickCash"
												class="btn btn-success" style="width: 300px" />
										</p>
									</div>
								</form>
							</div>
						</div>

					</div>
				</div>
				<div class="col-md-12">
					<div class="panel panel-default" style="padding: 20px">
						<div class="panel-heading">
							<span>申请记录</span>
						</div>
						<table data-toggle="table"
							data-url="/account_CashData.html?type=2" data-pagination="true"
							data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter">序号</th>
									<th data-field="time" data-align="center" data-sortable="true">申请时间</th>
									<th data-field="total" data-align="right" data-sortable="true">申请金额</th>
									<th data-field="reason">操作</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				function runningFormatter(value, row, index) {
					return index + 1;
				}

				function cashclick() {
										var money = $('#ctl00_ContentPlaceHolder1_askmoney');
										var lbmoney = money.parent();
										lbmoney.children('p').remove();
										if (money != null
												&& money.val().length > 0) {
											var reg = /^[1-9]\d*$/;
											isok = reg.test(money.val());
											if (!isok) {
												$(
														"<p class=\"label label-warning\">亲,您输入的提现金额出现错误,请输入整数~</p>")
														.appendTo(lbmoney);
												return false;
											} else if (money.val() < 1) {
												$(
														"<p class=\"label label-warning\">亲,提现金额不能小于1元额~</p>")
														.appendTo(lbmoney);
												return false;
											} else if (money.val() > 10000) {
												alert("提现金额超过1万请联系客服哦！");
												return false;
											}else if(money.val()>$("#ctl00_ContentPlaceHolder1_lbleftmoney").text())
											{
												alert("提现金额超过账户余额，不能提现！");
												return false;
											}
											if($('#mobileCode').val()==null||$('#mobileCode').val()==''){
												alert("请填写短信验证码！");
												return false;
											}
											$.post("/user/pay.json",$('#payForm').serialize(),function(data){
					                        	if(data.status==0)
					                        		{
					                        		alert(data.msg);
					                        		}
					                        	else
					                        		{
					                        		alert("申请成功!");
					                        		}
					          			  });
										}
										else
											{
											$("<p class=\"label label-warning\">亲,请输入的提现金额~</p>").appendTo(lbmoney);
											}
										
				}

				function DisableOrOpenAllbutton(isopen, count) {
					if (isopen) {
						$('.phoneverify').each(
								function(i, item) {
									$(item).val("语音通道" + (i + 1)).removeClass(
											'disabled').removeAttr(
											'disabled style');
								});
					} else {
						$('.phoneverify').each(
								function(i, item) {
									$(item).val("剩余" + count + '秒').attr(
											'disabled', true).css('cursor',
											'not-allowed');
									;
								});
					}
				}
				function dealmessage(count) {
					var resend = setInterval(function() {
						count--;
						if (count > 0) {
							DisableOrOpenAllbutton(false, count);
							$.cookie("captcha", count, {
								path : '/',
								expires : (1 / 86400) * count
							});
						} else {
							clearInterval(resend);
							DisableOrOpenAllbutton(true);
						}
					}, 1000);
				}

				$(function() {
					/*防刷新：检测是否存在cookie*/
					if ($.cookie("captcha")) {
						var count = $.cookie("captcha");
						if (count > 0)
							dealmessage(count);
					}
					$('.phoneverify')
							.click(
									function() {
										if ($.cookie("captcha")) {
											var count = $.cookie("captcha");
											if (count > 0) {
												dealmessage(count);
											}
										} else {
											$
													.post(
															"/sms.json",
															{
																"mobile" : $(
																		'#ctl00_ContentPlaceHolder1_txtphone')
																		.val()
															}, function(data) {
															});
											dealmessage(60);
										}
									});
				})
			</script>

		</div>
	</div>
	</section>
	<%@include file="footer.jsp"%>
</body>
</html>
