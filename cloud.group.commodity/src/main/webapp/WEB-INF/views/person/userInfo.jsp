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
<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />    
    <title>

</title>
</head>
<body>
       <%@include file="user-header.jsp"%>         
    <h3>
            <img src="assets/main/img/userIcon9.png" />个人中心<span>> 基本信息</span></h3>
        <div class="head clearfix">
            <div class="userImg pull-left">
                <div class="headImg">
                    <img style="height: 150px" src="assets/main/img/hean.png" />
                </div>
            </div>
            <div class="userCtn pull-left">
                <p>您好，<span class='username'>${user.userCode}</span></p>
                <p><span>手机号码：</span>${user.userMobile}</p>
                <p><span>QQ 号码：</span>${user.userQq}</p>
                <p><span>邮<span class='mg'></span>箱：</span>${user.userMail}</p>
                <p><span>注册日期：</span>${user.createDate}</p>
            </div>
            <div class="balance pull-right">
                <div class="balanceHead">
                    <img src="assets/main/img/userIcon10.png" />账户余额
                </div>
                <div class="balanceCtn">
                    <p>可兑换 = ${user.balanceRMB}元</p>
                    <a href="/userPay.html" class='sqtx'>
                        <img src="assets/main//img/sqtx.png" /></a>
                </div>
            </div>
        </div>
        <div class="userCommon">
            <h4>
                <img src="assets/main/img/userIcon11.png" />收益记录</h4>
            <table class="table table-bordered text-center">
                <thead>
                    <tr>
                        <th>结算金额</th>
                        <th>商品</th>
                        <th>结算说明</th>
                        <th>结算状态</th>
                        <th>结算时间</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                       
                    </tr>
                </tbody>
            </table>
        </div>       
    </div>


                </div>
        </section>
<%@include file="footer.jsp"%>
</body>
</html>
