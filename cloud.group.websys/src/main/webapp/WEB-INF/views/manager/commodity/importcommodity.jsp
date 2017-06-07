  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
    <script src='${pageContext.request.contextPath}/assets/js/excel.js' type='text/javascript'></script>	
  <div class='container-fluid'>
        <div class='row-fluid' id='content-wrapper'>
            <div class='span12'>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-content'>
                         <form id="groupBuyForm" class='form form-horizontal validate-form' style='margin-bottom: 0;'>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品类型</label>
                                    <div class='controls'>
                                    	<select id="missionId" name="missionId">
                                    		<option value="0">返利</option>
                                    		<option value="1">优惠卷</option>
                                    	</select>
                                    </div>
                                </div>
                               
				                <div class='control-group'>
				                    <label class='control-label'>Excel文件</label>
				                    <div class='controls'>
				                    	<input title='选择Excel' id="commodity_upload" name="commodity_upload"  type='file' />
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
<script src='${pageContext.request.contextPath}/assets/js/file.js' type='text/javascript'></script>