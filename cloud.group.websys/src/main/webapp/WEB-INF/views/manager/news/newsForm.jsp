  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
    <c:if test="${m.id>0}">
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
                                <span>添加新闻</span>
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
                                        新闻管理
                                    </li>
                                    <li class='separator'>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>添加新闻</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-header blue-background'>
                            <div class='title'>新闻信息</div>
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
                                    <label class='control-label' for='validation_name'>新闻标题</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='2' data-rule-required='true' id='title' name='title' value="${m.title}" placeholder='新闻名称' type='text' />
                                   		<input type='hidden' name='id' id='id' value='${m.id==null?0:m.id}'/>
                                    </div>
                                </div>
                                <div class='control-group'>
		                            <label class='control-label'>摘要</label>
		                            <div class='controls'>
		                                <div class='input-prepend input-append'>
		                                    <textarea id='newsAbstract' name="newsAbstract" rows="3">${m.newsAbstract}</textarea>
		                                </div>
		                            </div>
                            	</div>
                                <div class='control-group'>
		                            <label class='control-label'>关键字</label>
		                            <div class='controls'>
		                                <div class='input-prepend input-append'>
		                                    <input id='subtitle' name="subtitle" value="${m.subtitle}" type='text' />
		                                </div>
		                            </div>
                            	</div>
                   				
                                 <div class='control-group'>
				                    <label class='control-label'>类型</label>
				                    <div class='controls'>
				                        <select name="type">
				                        <c:if test="${m.type==1 }">
				                        	<option value="1" selected="selected">打码动态</option>
				                        </c:if>
				                        <c:if test="${m.type!=1 }">
				                        	<option value="1">打码动态</option>
				                        </c:if>
				                        <c:if test="${m.type==2 }">
				                        	<option value="2" selected="selected">玩家心得</option>
				                        </c:if>
				                        <c:if test="${m.type!=2 }">
				                        	<option value="2">玩家心得</option>
				                        </c:if>
				                        <c:if test="${m.type==3}">
				                        	<option value="3" selected="selected">常见问题</option>
				                        </c:if>	
				                        <c:if test="${m.type!=3}">
				                        	<option value="3">常见问题</option>
				                        </c:if>	
				                        </select>
				                    </div>
				                </div>
				               
				                
                            	<div class='control-group'>
		                            <label class='control-label'>新闻详情</label>
		                            <div class='controls'>
		                            	<div class="box-content">
		                            		<script type="text/plain" id="myEditor"  style="height:240px; max-height: 300px;width: 100%">
												${m.content}
											</script>
		                            	</div>
		                            </div>
                            	</div>
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button class='btn btn-primary' type="button" onclick="saveNews()">
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
<script src='${pageContext.request.contextPath}/assets/js/news.js' type='text/javascript'></script>
<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    
</script>
 