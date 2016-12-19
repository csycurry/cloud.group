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
<title></title>
</head>
<body>
	<div class="header">
		<div class="container mainWidth">
			<div class="logo pull-left">
				<img src="" alt="" />
			</div>
			<ul class="pull-left clearfix">
				<li><a href="/index.html" target="_blank">首页</a></li>
				<li><a href="/codes.html" target="_blank">打码专区</a></li>
				<li><a href="/newslist.html?page=1&type=1" target="_blank">资讯中心</a></li>
			</ul>

			<div class="register pull-right">

				<a class="dropdown-toggle abtn pull-left"
					href="/user/UserManage.aspx" style="width: 120px"> <span
					class="apostrophe pull-right"
					style="width: 80px; display: block; color: #f5894e">
						您好：${user.userCode}</span> <img src="/img/header/head-005.png" alt=""
					class="pull-right img-circle"
					style="height: 20px; margin-top: 15px" />
				</a> <span class="pull-left">|</span> <a id="ctl00_ctl09_linkExit"
					class="dropdown-toggle abtn"
					href="javascript:__doPostBack(&#39;ctl00$ctl09$linkExit&#39;,&#39;&#39;)"
					style="margin-top: 30px"> <i
					class="glyphicon glyphicon-off pull-left" style="margin-top: 20px"></i>退出
				</a>

			</div>
			<div id="ctl00_ctl09_hiddencode" class="hiddencode"
				style="display: none">57de586d-b506-4f1f-8313-04c6eea88e77</div>
		</div>


	</div>
	<section class='user'>
	<div class="mainWidth container clearfix">
		<div class="aside pull-left">
			<div class="userCenter">
				<h3>
					<img src="assets/main/img/user.png" />个人中心
				</h3>
				<p class='zh'>
					<span>ID：</span>${user.id}</p>
				<p class='zh'>
					<span>账号：</span>${user.userCode}</p>
				<p>
					余<span>&nbsp;&nbsp;&nbsp;</span>额：<span class='orange'>
						${user.balance} </span> <img src="assets/main/img/money.png"
						class='money' />
				</p>
			</div>

			<div class="accout">
				<h4 class='prl20'>
					<img src="assets/main/img/userIcon3-2.png" class='icon' /><span>账号设置</span>
				</h4>
				<p>
					<a href="/userinfo.html">个人中心</a>
				</p>
				<p>
					<a href="/userDetail.html">基本信息</a>
				</p>
			</div>
			<div class="accout">
				<h4 class='prl20 orange'>
					<img src="assets/main/img/userIcon4-1.png" class='icon' /><span>我的资产</span>
				</h4>
				<p>
					<a href="/userPay.html">申请提现</a>
				</p>
				<p>
					<a href="/account_CashDeatil.html">我的账本</a>
				</p>
				<p>
					<a href="/alipay.html">支付宝信息</a>
				</p>
			</div>
			<div class="accout">
				<h4 class='prl20'>
					<img src="assets/main/img/userIcon5-1.png" class='icon' /><span>任务体验</span>
				</h4>
				<p>
					<a href="/user_codes.html">收益记录</a>
				</p>
			</div>
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
							class="red" style="font-size: 18px">48小时内</span>支付玩家
					</p>
					<p>官网申明：提现前请确认自己的收款账号无误，我们只支付一次支付后由于收款账号问题造成的资金退回、冻结、消失本站概不负责。
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
											账户余额：</span><span id="ctl00_ContentPlaceHolder1_lbleftmoney"
											style="color: #478fca !important; line-height: 21px; font-size: 22px">${user.balanceRMB}元</span>
									</p>
								</div>
								<div class="form-group">
									<p>
										<span style="width: 100px; display: inline-block">收款账户：</span><span
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
											id="ctl00_ContentPlaceHolder1_askmoney" placeholder="单位是元"
											style="width: 300px;" />
									</p>
								</div>
								<div id="ctl00_ContentPlaceHolder1_div1" class="form-group">
									<p>
										点击获取短信：<input type="button" data-mode="1" value="发送验证码"
											class="btn btn-sm btn-info phoneverify" />
									</p>
								</div>
								<div id="ctl00_ContentPlaceHolder1_divVerify" class="form-group">
	                                <p>
	                                    验证码：<input name="code" type="text" id="ctl00_ContentPlaceHolder1_txtlistenNumer" placeholder="填写验证码" />
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
						<table data-toggle="table" data-url="/account_CashData.html?type=2"
							data-pagination="true" data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter">序号</th>
									<th>申请时间</th>
									<th>申请金额</th>
									<th>处理时间</th>
									<th>处理信息反馈</th>
									<th>处理结果</th>
									<th data-field="time" data-align="center" data-sortable="true">时间</th>
									<th data-field="total" data-align="right" data-sortable="true">金额</th>
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
												alert("提现金额超过1万请自己联系客服额哦！");
												return false;
											}else if(money.val()>$("#ctl00_ContentPlaceHolder1_lbleftmoney").text())
											{
												alert("提现金额超过账户余额，不能提现！");
												return false;
											}
											$.post("/user/pay.json",$('#payForm').serialize(),function(data){
					                        	if(data.status==0)
					                        		{
					                        		alert(data.msg);
					                        		}
					                        	else
					                        		{
					                        		alert("修改成功!");
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
