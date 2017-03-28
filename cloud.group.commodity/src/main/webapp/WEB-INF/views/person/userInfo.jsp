<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
	<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common-user.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/main-user.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="assets/js/user_base.js"></script>
	<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />    
    <link href="/assets/stylesheets/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<script src="/assets/js/bootstrap-table.min.js"></script>  
    <title>
	聚宝师
</title>
</head>
<body>
       <%@include file="user-header.jsp"%>         
    <h3>
            <img src="assets/main/img/userIcon9.png" />我的收益<span></span></h3>
        <div class="head clearfix">
            <div class="userCtn pull-left">
                <p>您好，<span class='username'>${user.userCode}</span> <input type="button" class="btn" onclick="changePwd()" value="修改密码"	/></p>
                <p><span>ID：</span>${user.id}</p>
                <p><span>手机号码：</span>${user.userMobile} <c:if test="${user.userMobile==null||user.userMobile=='' }">
                <input type="button" onclick="bind()" class="btn" value="绑定手机号"	/></c:if></p>
                <p><span>QQ 号码：</span>${user.userQq}</p>
                <p><span>邮<span class='mg'></span>箱：</span>${user.userMail}</p>
                <p><span>注册日期：</span>${user.createDate}</p>
            </div>
            <div class="balance pull-right">
                <div class="balanceHead">
                    <img src="assets/main/img/userIcon10.png" />账户余额
                </div>
                <div class="balanceCtn">
                    <p class="jb">
                        <img src="assets/main/img/money.png" />${user.balance}元宝
                    </p>
                    <p>可兑换 = ${user.balanceRMB}元</p>
                    <a href="/userPay.html" class='sqtx'>
                        <img src="assets/main//img/sqtx.png" /></a>
                </div>
            </div>
        </div>
        <div class="userCommon">
            <h4>
                <img src="assets/main/img/userIcon11.png" />收益记录</h4>
            <ul id="myTab" class="nav nav-tabs">
			<li class="active">
				<a href="#one" data-toggle="tab">
					 待返还
				</a>
			</li>
			<li>
				<a href="#two" data-toggle="tab">
					 已返还
				</a>
			</li>
			<li>
				<a href="#three" data-toggle="tab">
					 无返还
				</a>
			</li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="one">
				<div class="panel panel-default" style="padding: 20px">
						<table data-toggle="table"
							data-url="/rebateslist.html?type=1" data-pagination="true"
							data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter">序号</th>
									<th data-field="earnings" data-align="center" data-sortable="true">结算金额</th>
									<th data-field="missionName" data-align="center" data-sortable="true">商品</th>
									<th data-field="typeCn" data-align="center" data-sortable="true">结算说明</th>
									<th data-field="statusCn" data-align="center" data-sortable="true">结算状态</th>
									<th data-field="createDate" data-align="right" data-sortable="true">结算时间</th>
								</tr>
							</thead>
						</table>
					</div>
			</div>
			<div class="tab-pane fade" id="two">
				<div class="panel panel-default" style="padding: 20px">
						<table data-toggle="table"
							data-url="/rebateslist.html?type=2" data-pagination="true"
							data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter">序号</th>
									<th data-field="earnings" data-align="center" data-sortable="true">结算金额</th>
									<th data-field="missionName" data-align="center" data-sortable="true">商品</th>
									<th data-field="typeCn" data-align="center" data-sortable="true">结算说明</th>
									<th data-field="statusCn" data-align="center" data-sortable="true">结算状态</th>
									<th data-field="createDate" data-align="right" data-sortable="true">结算时间</th>
								</tr>
							</thead>
						</table>
					</div>
			</div>
			<div class="tab-pane fade" id="three">
				<div class="panel panel-default" style="padding: 20px">
						<table data-toggle="table"
							data-url="/rebateslist.html?type=3" data-pagination="true"
							data-side-pagination="server"
							data-page-list="[5, 10, 20, 50, 100, 200]" data-height="300">
							<thead>
								<tr>
									<th data-formatter="runningFormatter">序号</th>
									<th data-field="earnings" data-align="center" data-sortable="true">结算金额</th>
									<th data-field="missionName" data-align="center" data-sortable="true">商品</th>
									<th data-field="typeCn" data-align="center" data-sortable="true">结算说明</th>
									<th data-field="statusCn" data-align="center" data-sortable="true">结算状态</th>
									<th data-field="createDate" data-align="right" data-sortable="true">结算时间</th>
								</tr>
							</thead>
						</table>
					</div>
			</div>
		</div>
            
        </div>       
    </div>


                </div>
        </section>
<script type="text/javascript">
	function changePwd(){
		location.href= "/newpwd.html";
	}
	
	function bind(){
		location.href= "/userDetail.html";
	}
</script>        
<%@include file="footer.jsp"%>
</body>
</html>
