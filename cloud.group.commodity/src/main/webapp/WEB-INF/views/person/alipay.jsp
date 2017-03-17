<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <div class="header">
            
<script src="http://static.geetest.com/static/tools/gt.js"></script>
<div class="container mainWidth">
    <div class="logo pull-left">
        <img src="" alt="" />
    </div>
    <ul class="pull-left clearfix">
        <li><a href="/index.html" target="_blank">首页</a></li>
    </ul>

    <div class="register pull-right" style="margin-top:15px">
        
        <a class="dropdown-toggle abtn pull-left" href="/" style="width:120px">            
            <span class="apostrophe pull-right" style="width:80px;display:block;color:#f5894e"> 您好：${user.userCode}</span>
            <img src="assets/main/img/hean.png" alt="" class="pull-right img-circle" style="height: 20px" />
        </a>
        <span class="pull-left">|</span>
        <a id="ctl00_ctl09_linkExit" class="dropdown-toggle abtn" href="javascript:__doPostBack(&#39;ctl00$ctl09$linkExit&#39;,&#39;&#39;)" >
            <i class="glyphicon glyphicon-off pull-left" ></i>退出
        </a>
        
    </div>
    <div id="ctl00_ctl09_hiddencode" class="hiddencode" style="display:none">57de586d-b506-4f1f-8313-04c6eea88e77</div>
</div>


        </div>
        <section class='user'>
            <div class="mainWidth container clearfix">
                <div class="aside pull-left">
                    <div class="userCenter">
                        <h3>
                            <img src="assets/main/img/user.png" />个人中心</h3>
                        <p class='zh'><span>ID：</span>${user.id}</p>
                        <p class='zh'><span>账号：</span>${user.userCode}</p>
                        <p>余<span>&nbsp;&nbsp;&nbsp;</span>额：<span class='orange'>
                            ${user.balance}
                            </span>
                            <img src="assets/main/img/money.png" class='money' /></p>
                    </div>

                    <div class="accout">
                        <h4 class='prl20'>
                            <img src="assets/main/img/userIcon3-2.png" class='icon' /><span>账号设置</span></h4>
                        <p><a href="/userinfo.html">个人中心</a></p>
                        <p><a href="/userDetail.html">基本信息</a></p>
                        <p><a href="/affiliates.html">联盟推广</a></p>
                    </div>
                    <div class="accout">
                        <h4 class='prl20 orange'>
                            <img src="assets/main/img/userIcon4-1.png" class='icon' /><span>我的资产</span></h4>
                        <p><a href="/userPay.html">申请提现</a></p>
                        <p><a href="/account_CashDeatil.html">我的账本</a></p>
                        <p><a href="/alipay.html">支付宝信息</a></p>
                    </div>

                </div>
                <div class="userContent pull-left">
                            
    <div class="alert alert-success">
        <h4 class="text-center">用户须知</h4>
        <hr style="color: #6D6D6D" />
        <p>
            账户修改：设置后不能再修改，如需修改请同客服人员联系QQ:xxxxxx
        </p>
        <p>
            提现说明：提现金额为1元的整数倍，满1元可申请提现,确认<span class="red" style="font-size:18px">48小时</span>内支付玩家
        </p>
        <p>
            官网申明：提现前请确认自己的收款账号无误，我们只支付一次支付后由于收款账号问题造成的资金退回、冻结、消失本站概不负责。
        </p>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default" style="padding: 20px">
                <div class="panel-heading">
                    <span>支付宝信息</span>
                </div>
                <c:if test="${user.userAlipay!=null&&user.userAlipay!='' }">
                <div class="panel-body">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">真实姓名</label>
                        <div class="col-sm-10">
                            
                            <span id="ctl00_ContentPlaceHolder1_lbname" class="form-control">${user.realName}</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="account" class="col-sm-2 control-label">支付宝账户</label>
                        <div class="col-sm-10">
                            
                            <span id="ctl00_ContentPlaceHolder1_lbaccount" class="form-control">${user.userAlipay}</span>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group text-center">
                        <input type="submit" name="ctl00$ContentPlaceHolder1$btnSet" value="确定" id="ctl00_ContentPlaceHolder1_btnSet" disabled="disabled" class="btn btn-md btn-primary" />
                    </div>
                </div>
                </c:if>
                
                <c:if test="${user.userAlipay==null||user.userAlipay=='' }">
                <div class="panel-body">
                <form id="payForm">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">真实姓名</label>
                        <div class="col-sm-10">
                            
                            <input type="text" id="ctl00_ContentPlaceHolder1_lbname" name="realName" value="${user.realName}" class="form-control">
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="account" class="col-sm-2 control-label">支付宝账户</label>
                        <div class="col-sm-10">
                            <input type="hidden"  name="id" value="${user.id}" class="form-control"/>
                            <input type="text" id="ctl00_ContentPlaceHolder1_lbaccount" name="userAlipay" value="${user.userAlipay}" class="form-control"/>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group text-center">
                        <input type="button" name="ctl00$ContentPlaceHolder1$btnSet" value="确定" id="ctl00_ContentPlaceHolder1_btnSet" class="btn btn-md btn-primary" onclick="modify()" />
                    </div>
                    </form>
                </div>
                </c:if>
            </div>
        </div>
    </div>

                </div>
            </div>
        </section>
        
        <script type="text/javascript">
        	function modify() {
        		$.post("/user/modify.json",$('#payForm').serialize(),function(data){
                	if(data.status==0)
                		{
                		alert(data.msg);
                		}
                	else
                		{
                		alert("修改成功!");
                		location.href="/alipay.html";
                		}
  			  });
			}
        </script>
 <%@include file="footer.jsp"%>
</body>
</html>
