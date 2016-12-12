<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="head" style="position: relative; z-index: 999">
            <div class="logo clearfix">
                <div class="container clearfix mainWidth" style="width: 1150px!important;">
                    <div class="logoImg  pull-left">
                        <a href="http://currychen.cn">
                            <img class="logo_img" src="/img/logo1.png" alt="LOGO" /></a>
                    </div>
                    <div class='headText pull-right'>
                        <c:if test="${userCode!=null&&userCode!='' }">
							<div class="admin">
                            <div class="adminHead clearfix">
                                <div class="pull-left" style="margin-right: 10px">
                                    <a href="/user/UserManage.aspx">
                                        <img src="assets/main/img/hean.png" class="img-circle" style="height: 45px;" />
                                    </a>
                                </div>
                                <div class="pull-left">
                                    <p class="username"><span class="gray"><span class="username" title="${userCode}">${userCode}</span></span><a id="ctl00_LinkButton1" href="javascript:__doPostBack(&#39;ctl00$LinkButton1&#39;,&#39;&#39;)"><img src="assets/main/img/newCenter01.png"/></a></p>
                                    <p class="center"><span class="gray">个人中心</span><a href="#"><img src="assets/main/img/newCenter03.png" /></a></p>
                                </div>
                            </div>
                        </div>
						</c:if>
						<c:if test="${userCode==null||userCode=='' }">
							 <div class="nologin">
	                            <a id="alogin" class="loginmodal"><span class="glyphicon glyphicon-user " style="color: #DA8528">登录</span></a>
	                            <span class="orange">丨</span>
	                            <a id="reg" href="/register.html"><span class="glyphicon glyphicon-pencil" style="color: #DA8528">注册</span></a>
	                        </div>
						</c:if>
                        
                        
                       
                        
                    </div>
                </div>
            </div>
            <div class="headNav">
                <div class="container head clearfix" style="width: 1150px!important;">
                    <ul class="pull-left clearfix">
                        <li>
                            <div>
                                <a href="/index.html">首 页</a>
                            </div>
                        </li>
                        <li>
                            <a href="/codes.html">
                                <div>
                                    打码专区
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/newslist.html?page=1">
                                <div>
                                    资讯中心
                                </div>
                            </a>
                        </li>
                        <li>
                            <div>
                                <a href="#">个人中心</a>
                            </div>
                        </li>
                    </ul>
                    <div class="headlittle pull-right">
                    </div>
                </div>
            </div>
        </header>