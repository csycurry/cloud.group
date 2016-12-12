  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ include file="../../common/commonjs.jsp"%>
  <div class='container-fluid'>
        <div class='row-fluid' id='content-wrapper'>
            <div class='span12'>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-header blue-background'>
                            <div class='title'>佣金信息</div>
                            <div class='actions'>
                                <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                </a>
                                <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                </a>
                            </div>
                        </div>
                       
                        <div class='box-content'>
                         <form id="groupBuyForm" class='form form-horizontal validate-form' style='margin-bottom: 0;'>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>佣金id</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='2' data-rule-required='true' id='id' name='id' value="${m.id}" type='text' />
                                    </div>
                                </div>
                                <div class='control-group'>
		                            <label class='control-label'>用户名称</label>
		                            <div class='controls'>
		                                <div class='input-prepend input-append'>
		                                    <input id='userCode' value="${m.userCode}" type='text' enable="false" />
		                                </div>
		                            </div>
                            	</div>
                                <div class='control-group'>
                                    <label class='control-label' >用户工号</label>
                                    <div class='controls'>
                                        <input  enable="false" data-rule-required='true' value="${m.userName}" id='userName'  type='text' />
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' >项目id</label>
                                    <div class='controls'>
                                        <input  enable="false" data-rule-required='true' value="${m.missionId}" id='missionId' name="missionId"  type='text' />
                                    </div>
                                </div>
                   				<div class='control-group'>
                                    <label class='control-label' >项目名称</label>
                                    <div class='controls'>
                                        <input  enable="false" data-rule-required='true' value="${m.missionName}" id='missionName'  type='text' />
                                    </div>
                                </div>
                                 <div class='control-group'>
				                    <label class='control-label'>佣金金额</label>
				                    <div class='controls'>
				                         <input  data-rule-required='true' value="${m.earnings}" id='earnings' name='earnings' type='text' />
				                    </div>
				                </div>
				                
				                
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button id="saveBtn" class='btn btn-primary' type="button" onclick="modify()">
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
<script src='${pageContext.request.contextPath}/assets/js/rebate.js' type='text/javascript'></script>
 