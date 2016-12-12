  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
    <c:if test="${g.groupBuyingId>0}">
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
                                <span>添加任务</span>
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
                                        任务管理
                                    </li>
                                    <li class='separator'>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>添加任务</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-header blue-background'>
                            <div class='title'>任务信息</div>
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
                                    <label class='control-label' for='validation_name'>任务名称</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='2' data-rule-required='true' id='missionTitle' name='missionTitle' value="${m.missionTitle}" placeholder='任务名称' type='text' />
                                   		<input type='hidden' name='id' id='id' value='${m.id==null?0:g.id}'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_date'>任务开始时间</label>
                                    <div class='controls' >
                                     	<div class='datetimepicker input-append form_datetime' id='datetimepicker1'>
					                        <input id="beginDate" name="beginDate"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='任务开始时间' type="datetime" value='<fmt:formatDate value="${m.beginTm}" pattern="yyyy-MM-dd HH:mm:ss"/>'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>
					                    </div>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_date'>任务结束时间</label>
                                    <div class='controls'>
                                        <div class='datetimepicker input-append form_datetime' id='datetimepicker2'>
					                        <input id="endDate" name="endDate"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='任务结束时间' type="datetime" value='<fmt:formatDate value="${m.endTm}" pattern="yyyy-MM-dd HH:mm:ss"/>'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>
					                    </div>
                                    </div>
                                </div>
                                <div class='control-group'>
		                            <label class='control-label'>价格</label>
		                            <div class='controls'>
		                                <div class='input-prepend input-append'>
		                                    <input class='text-right' id='price' name="price" value="${m.price}" type='text' />
		                                </div>
		                            </div>
                            	</div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_password'>结算周期</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='6' data-rule-password='true' data-rule-required='true' value="${m.settlementInterval}" id='settlementInterval' name='settlementInterval' placeholder='结算周期(单位天)' type='text' />
                                    </div>
                                </div>
                   				
                                 <div class='control-group'>
				                    <label class='control-label'>类型</label>
				                    <div class='controls'>
				                        <label class='radio inline'>
				                            <input type='radio' name="type" checked="checked"  value='1' />
				                            	打码
				                        </label>
				                    </div>
				                </div>
				                <div class='control-group'>
				                    <label class='control-label'>缩略图</label>
				                    <div class='controls'>
				                    	<input title='选择图片' id="image_upload" name="image_upload"  type='file' />
				                    	<a
									class="easyui-linkbutton"
									href="javascript:$('#image_upload').uploadify('upload', '*')">上传文件</a>
				                    </div>
				                    <div id="imageresult">
				                    <div id="imageDiv">
				                    	<a href='${m.imageUrl}' target="_blank"> 
													${m.imageUrl}
											</a> <a 
												onclick='del();'>删除</a>
				                    </div>
											
									</div>
							<div id="imagehiddenresult">
									<input type='hidden' id="imageUrl" name='imageUrl'
										value="${m.imageUrl}" />
							</div>
				                </div>
				                
				                <div class='control-group'>
				                    <label class='control-label'>软件上传</label>
				                    <div class='controls'>
								            <div>
								                <input title='选择软件' type='file' name="file_upload" id="file_upload"  />
								            </div>
								            <a
									class="easyui-linkbutton"
									href="javascript:$('#file_upload').uploadify('upload', '*')">上传文件</a>
				                    </div>
				                    <div id="showresult">
								<div id="filehiddenresult">
									<input type='hidden' id="thumbnailUrl" name='thumbnailUrl'
										value="${m.thumbnailUrl}" />
							</div>
							</div>
				                </div>
				                
                            	<div class='control-group'>
		                            <label class='control-label'>任务详情</label>
		                            <div class='controls'>
		                            	<div class="box-content">
		                            		<script type="text/plain" id="myEditor"  style="height:240px; max-height: 300px;width: 100%">
												${m.missionContent}
											</script>
		                            	</div>
		                            </div>
                            	</div>
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button class='btn btn-primary' type="button" onclick="saveMission()">
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
<script src='${pageContext.request.contextPath}/assets/js/mission.js' type='text/javascript'></script>
<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    
</script>
 