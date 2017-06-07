  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
    <c:if test="${u.id>0}">
		<%@ include file="../../common/commonjs.jsp"%>
	</c:if>
	<link href="${pageContext.request.contextPath}/assets/umeditor1_2_2/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/umeditor.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/umeditor.config.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/lang/zh-cn/zh-cn.js"></script>
    <script src='${pageContext.request.contextPath}/assets/js/file.js' type='text/javascript'></script>	
  <div class='container-fluid'>
        <div class='row-fluid' id='content-wrapper'>
            <div class='span12'>
                <div class='row-fluid'>
                    <div class='span12'>
                        <div class='page-header'>
                            <h1 class='pull-left'>
                                <i class='icon-ok'></i>
                                <span>用户编辑</span>
                            </h1>
                            <div class='pull-right'>
                                <ul class='breadcrumb'>
                                    <li>
                                        <a href="index.html"><i class='icon-bar-chart'></i>
                                        </a>
                                    </li>
                                    <li class='separator'>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li>
                                        用户管理
                                    </li>
                                    <li class='separator'>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>用户编辑</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-header blue-background'>
                            <div class='title'>用户信息</div>
                            <div class='actions'>
                                <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                </a>
                                <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                </a>
                            </div>
                        </div>
                       
                        <div class='box-content'>
                         <form id="userForm" class='form form-horizontal validate-form' style='margin-bottom: 0;'>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>手机号码</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='2' data-rule-required='true' id='userMobile' name='userMobile' value="${u.userMobile}" placeholder='手机号码' type='text' />
                                   		<input type='hidden' name='id' id='id' value='${u.id==null?0:u.id}'/>
                                    </div>
                                </div>
                                <div class='control-group'>
		                            <label class='control-label'>邮箱</label>
		                            <div class='controls'>
		                                <div class='input-prepend input-append'>
		                                    <input id='userMail' name="userMail" value="${u.userMail}" type='text' />
		                                </div>
		                            </div>
                            	</div>
                                <div class='control-group'>
		                            <label class='control-label'>qq号码</label>
		                            <div class='controls'>
		                                <div class='input-prepend input-append'>
		                                    <input id='userQq' name="userQq" value="${u.userQq}" type='text' />
		                                </div>
		                            </div>
                            	</div>
                   				
                                 <div class='control-group'>
				                    <label class='control-label'>真实姓名</label>
				                    <div class='controls'>
				                        <input id='realName' name="realName" value="${u.realName}" type='text' />
				                    </div>
				                </div>
				               <div class='control-group'>
				                    <label class='control-label'>支付宝</label>
				                    <div class='controls'>
				                        <input id='userAlipay' name="userAlipay" value="${u.userAlipay}" type='text' />
				                    </div>
				                </div>
				                
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button class='btn btn-primary' type="button" onclick="saveGroup()">
                                        <i class='icon-save'></i>
                                        保存
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src='${pageContext.request.contextPath}/assets/js/groupbuy.js' type='text/javascript'></script> 