  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ include file="../../common/commonjs.jsp"%>
    <script src='${pageContext.request.contextPath}/assets/js/excel.js' type='text/javascript'></script>	
  <div class='container-fluid'>
        <div class='row-fluid' id='content-wrapper'>
            <div class='span12'>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-content'>
                         <form id="groupBuyForm" class='form form-horizontal validate-form' style='margin-bottom: 0;'>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>任务名称</label>
                                    <div class='controls'>
                                    	<select id="missionId" name="missionId">
                                    		<c:forEach items="${list}" var="m">
                                    			<option value="${m.id}">${m.missionTitle}</option>
                                    		</c:forEach>
                                    		
                                    	</select>
                                    </div>
                                </div>
                               
				                <div class='control-group'>
				                    <label class='control-label'>Excel文件</label>
				                    <div class='controls'>
				                    	<input title='选择Excel' id="image_upload" name="image_upload"  type='file' />
				                    	<a
									class="easyui-linkbutton"
									href="javascript:$('#image_upload').uploadify('upload', '*')">上传文件</a>
				                    </div>
				                </div>
				                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <script src='${pageContext.request.contextPath}/assets/js/rebate.js' type='text/javascript'></script>