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
<link rel="stylesheet" type="text/css" media="screen" href="assets/css/mynew.css" />  
    <title>
		聚宝师-支付宝信息
	</title>
    <link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="assets/css/index.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/base.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/home.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/new_home.css" />
    <link href="assets/css/search_box.css" rel="Stylesheet" type="text/css" />
</head>
<body>
	<div class="top_content">
        <div id="top_header">
            <div class="top_header_r">
                <ul>
                </ul>
            </div>
            <div class="top_header_l">
                <p class="login_info" id="site_userinfo"></p>
            </div>
        </div>
    </div>
    
    
    
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
                                        <input type="text" class="SearchInputText2" name="kw" autocomplete="off" value="请输入淘宝/天猫宝贝标题" />
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
	<div class="mainWidth container clearfix">
                <div id="account_sidebar">
		            <ul id="actside_ul">
		                 
		                <li><a class="" href="/userinfo.html"><i
		                    class="iconfont iconfont-1"></i>我的收益</a></li>
		                    <li><a class="" href="/affiliates.html"><i class="iconfont iconfont-credit">
		                    </i>联盟推广</a></li>
		                <li><a class="" href="/userPay.html">
		                    <i class="iconfont iconfont-3"></i>申请提现</a></li>
		                <li><a class="selected" href="/alipay.html"><i class="iconfont iconfont-5">
		                </i>支付宝信息</a></li>
		            </ul>
		        </div>
                <div class="userContent pull-left">
                            
    <div class="alert alert-warning">
        <h4 class="text-center">用户须知</h4>
        <hr style="color: #6D6D6D" />
        <p>
            账户修改：设置后不能再修改，如需修改请同客服人员联系QQ:xxxxxx
        </p>
        <p>
            提现说明：提现金额为1元的整数倍，满1元可申请提现,确认<span class="red" style="font-size:18px">48小时</span>内给您提现
        </p>
        <p>
            官网申明：提现前请确认自己的收款账号无误
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
                		location.href="/userPay.html";
                		}
  			  });
			}
        </script>
 <%@include file="footer.jsp"%>
</body>
</html>
