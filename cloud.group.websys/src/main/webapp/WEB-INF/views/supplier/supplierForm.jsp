
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${supplierEntity.supplierId>0}">
	<%@ include file="../common/commonjs.jsp"%>
</c:if>
<div class='container-fluid'>
	<div class='row-fluid' id='content-wrapper'>
		<div class='span12'>
			<div class='row-fluid'>
				<div class='span12'>
					<div class='page-header'>
						<h1 class='pull-left'>
							<c:choose>
								<c:when test="${supplierEntity.supplierId>0}">
									<i class='icon-ok'></i>
									<span>修改供应商</span>
								</c:when>
								<c:when test="${supplierEntity.supplierId==null}">
									<i class='icon-ok'></i>
									<span>添加供应商</span>
								</c:when>
							</c:choose>


						</h1>
						<div class='pull-right'>
							<ul class='breadcrumb'>
								<li><a href="index.html"><i class='icon-bar-chart'></i>
								</a></li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li>供应商管理</li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<c:choose>
									<c:when test="${supplierEntity.supplierId>0}">
										<li class='active'>修改供应商</li>
									</c:when>
									<c:when test="${supplierEntity.supplierId==null}">
										<li class='active'>添加供应商</li>
									</c:when>
								</c:choose>


							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class='row-fluid'>
				<div class='span12 box'>
					<div class='box-header blue-background'>
						<div class='title'>供应商信息</div>
						<div class='actions'>
							<a href="#" class="btn box-remove btn-mini btn-link"><i
								class='icon-remove'></i> </a> <a href="#"
								class="btn box-collapse btn-mini btn-link"><i></i> </a>
						</div>
					</div>
					<div class='box-content'>
						<form class='form form-horizontal validate-form'
							style='margin-bottom: 0;' id='supplier'>
							<div class='control-group'>
								<label class='control-label' for='validation_name'>供应商名称</label>
								<div class='controls'>
									<input data-rule-minlength='2' data-rule-required='true'
										id='supplierName' name='supplierName' placeholder='供应商名称'
										type='text' value="${supplierEntity.supplierName}" />
								</div>
							</div>
							<div class='control-group'>
								<label class='control-label' for='validation_email'>供应商电话</label>
								<div class='controls'>
									<input data-rule-email='true' data-rule-required='true'
										id='supplierPhone' name='supplierPhone' placeholder='供应商电话'
										type='text' value="${supplierEntity.supplierPhone}" />
								</div>
							</div>
							<div class='control-group'>
								<label class='control-label' for='inputSelect'>所在区域</label>
								<div class='controls'>
									<input type="hidden" id="provinceName" name="provinceName"
										value='${supplierEntity.provinceName}' /> <input
										type="hidden" id="cityName" name="cityName"
										value='${supplierEntity.cityName}' /> <input type="hidden"
										id="districtName" name="districtName"
										value='${supplierEntity.districtName}' /> <select
										id='provinceSelect' name='provinceId'>

									</select> <select id='citySelect' name='cityId'>
										<option value=请选择>请选择</option>
									</select> <select id='districtSelect' name='districtId'>
										<option value=请选择>请选择</option>

									</select>
								</div>
							</div>
							<div class='control-group'>
								<label class='control-label'>详细地址</label>
								<div class='controls'>
									<input class='span5' id='street' name='street' type='text'
										value="${supplierEntity.street}" />
									<p class='help-block' />
								</div>
							</div>

							<div class='control-group'>
								<label class='control-label'>供应商等级</label>
								<div class='controls'>
									<input type="radio" class="radio" name="supplierLevel"
										value="A" checked="checked" /> A类 <input type="radio"
										class="radio" name="supplierLevel" value="B" /> B类 <input
										type="radio" class="radio" name="supplierLevel" value="C" />
									C类
								</div>
							</div>


							<div class='control-group'>
								<label class='control-label' for='validation_date'>合作开始日期</label>
								<div class='controls'>
									<div class='datetimepicker input-append form_datetime'
										id='datetimepicker1'>
										<input id="startTime" name="startTime"
											data-format='yyyy-MM-dd' placeholder='合作开始日期' type='text'
											value=<fmt:formatDate value="${supplierEntity.startTime}" pattern="yyyy-MM-dd"/>>
										<span class='add-on'> <i data-date-icon='icon-calendar'
											data-time-icon='icon-time'></i>
										</span>
									</div>
								</div>
							</div>


							<div class='control-group'>
								<label class='control-label' for='validation_date'>合作结束日期</label>
								<div class='controls'>
									<div class='datetimepicker input-append form_datetime'
										id='datetimepicker1'>
										<input id="endTime" name="endTime" data-format='yyyy-MM-dd'
											placeholder='合作结束日期' type='text'
											value=<fmt:formatDate value="${supplierEntity.endTime}" pattern="yyyy-MM-dd"/>>
										<span class='add-on'> <i data-date-icon='icon-calendar'
											data-time-icon='icon-time'></i>
										</span>
									</div>
								</div>
							</div>

							<div class='control-group'>
								<label class='control-label' for='validation_name'>联系人</label>
								<div class='controls'>
									<input data-rule-minlength='2' data-rule-required='true'
										id='supplierContact' name='supplierContact'
										placeholder='联系人' type='text'
										value="${supplierEntity.supplierContact}" />
								</div>
							</div>

							<div class='control-group'>
							<input type="hidden" id="supplierCategoryid" name="supplierCategoryid" value="${supplierEntity.supplierCategoryid}"/>
								<label class='control-label' for='inputSelect'>商品类别</label>
								<div class='controls'>
									 <select id='supplierCategoryidSelect' name='supplierCategoryidSelect'>
										<option value=请选择>请选择</option>
									</select>
								</div>
							</div>

							<div class='control-group'>
								<label class='control-label' for='validation_select'>备注</label>
								<div class='controls'>
									<textarea style='width: 500px;' id='supplierContent'
										name='supplierContent' placeholder='备注' rows='3'>${supplierEntity.supplierContent}</textarea>
								</div>
							</div>
							<div style="width: 500px; margin-left: 180px;">
								<input type="file" name="file_upload" id="file_upload" /> <a
									class="easyui-linkbutton"
									href="javascript:$('#file_upload').uploadify('upload', '*')">上传文件</a>
							</div>
							<div id="showresult">
								<c:forEach items="${supplierEntity.fileUrls}" var="s"
									varStatus="status">
									<div id="${status.index}">
										<a href='${s}' target="_blank"> <c:forEach
												items="${supplierEntity.fileNames}" var="t"
												varStatus="tstatus" step='1'>

												<c:if test="${status.index==tstatus.index}">${t}</c:if>



											</c:forEach>

										</a> <a href='#' id="${status.index}"
											onclick='deloperate(this.id);'>删除</a>
									</div>
								</c:forEach>
							</div>
							<div id="hiddenresult">
								<c:forEach items="${supplierEntity.fileNames}" var="s"
									varStatus="status">

									<input type='hidden' id="${status.index}" name='fileName'
										value="${s}" />
								</c:forEach>
								<c:forEach items="${supplierEntity.fileUrls}" var="t"
									varStatus="status">
									<input type='hidden' id="${status.index}" name='fileUrl'
										value="${t}" />
								</c:forEach>

							</div>
							<div class='form-actions' style='margin-bottom: 0'>
								<button class='btn btn-primary' type='button'
									onclick='addOrUpdate();'>
									<i class='icon-save'></i> 保存
								</button>
								<!-- <input type="button" value="添加" id="btnSupplierSubmit"> -->
							</div>
							<input type='hidden' name='updateId' id='update_id'
								value='${supplierEntity.updateId}' /> <input type='hidden'
								name='primaryKey' id='primaryKey'
								value='${supplierEntity.supplierId}' />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<style type="text/css">
.radio {
	vertical-align: middle;
	margin-top: -2px;
	margin-bottom: 1px;
}
</style>
<script type="text/javascript">
	$(function() {
		var result = 20;
		$('#file_upload')
				.uploadify(
						{
							'swf' : getContextPath()
									+ '/assets/uploadify/uploadify.swf',
							'uploader' : getContextPath()
									+ '/supplier/uploadFile',
							'height' : 25,
							'whith' : 120,
							'auto' : false,
							'fileDataName' : 'file',
							'buttonText' : '选择文件...',
							'fileTypeExts' : '*.*',
							'multi' : false,
							'method' : 'post',
							'debug' : false,
							'onUploadStart' : function(file) {
								var param = {};
								param.picHref = $('#file_upload_href').val();
								$("#file_upload").uploadify("settings",
										"formData", param);
							},
							'onUploadSuccess' : function(file, data, response) {

								result += 1;
								var vv = data.split('|');
								console.log(vv[0]);
								console.log(vv[1]);
								var ss = "<div id="+result+"><a href="+vv[2]+vv[0]+" target='_blank'>"
										+ vv[1]
										+ "</a> <a href='#' id="
										+ result
										+ " onclick='deloperate(this.id);'>删除</a></div>"
								var ddd = "<input type='hidden' id="+result+" name='fileUrl' value="+vv[0]+"/><input type='hidden' id="+result+" name='fileName' value="+vv[1]+"/>";
								$("#showresult").append(ss);
								$("#hiddenresult").append(ddd);

							},
							'onUploadError' : function(file, errorCode,
									errorMsg, errorString) {
								alert('文件： ' + file.name + ' 上传失败 '
										+ errorString);
							}

						});
		/*
		商品类别
		*/
		var commodityStr=null;
		$.ajax({
			url : getContextPath() + '/commodity/getCommodityLists',
			data : {},// 你的formid
			type : 'post',
			dataType : 'json',
			success : function(data) {
				debugger;
				for (var i = 0; i < data.length; i++) {
				    commodityStr += "<option value='"+data[i].commodityId+"'>"
							+ data[i].commodityName + "</option>"

				}
				$("#supplierCategoryidSelect").append(commodityStr);
				
				if ($("#supplierCategoryid").val().length > 0) {
					debugger;
					$("#supplierCategoryidSelect").val($("#supplierCategoryid").val());
				}
				
			
			}
				
		

		});
		
		$("#supplierCategoryidSelect").change(function(){
			
			$("#supplierCategoryid").val(
					$("#supplierCategoryidSelect")
							.find("option:selected").val())
		});
		
		
		
		/*
		区域
		*/
		var provinceStr = "<option value=''>请选择</option>";
		$.ajax({
			url : getContextPath() + '/supplier/getProvince',
			data : {},// 你的formid
			type : 'post',
			dataType : 'json',
			success : function(data) {
				debugger;
				for (var i = 0; i < data.length; i++) {
					provinceStr += "<option value='"+data[i].provinceId+"'>"
							+ data[i].provinceName + "</option>"

				}

				$("#provinceSelect").append(provinceStr);
				console.log($("#provinceName").val());
				console.log($("#provinceSelect option:contains("
						+ $("#provinceName").val() + ")"));
				if ($("#provinceName").val().length > 0) {
					$(
							"#provinceSelect option:contains("
									+ $("#provinceName").val() + ")").attr(
							"selected", "selected");
					$("#provinceSelect").trigger('change');
				}

			}

		});

		$("#provinceSelect")
				.change(
						function() {
							$("#citySelect").empty();
							var provinceId = $("#provinceSelect").val();
							$
									.ajax({
										url : getContextPath()
												+ '/supplier/getCity',
										data : {
											provinceId : provinceId
										},//
										type : 'post',
										dataType : 'json',
										success : function(data) {
											var cityStr = "<option value=''>请选择</option>";
											for (var i = 0; i < data.length; i++) {
												cityStr += "<option value='"+data[i].cityId+"'>"
														+ data[i].cityName
														+ "</option>"

											}

											$("#citySelect").append(cityStr);

											if ($("#cityName").val().length > 0) {
												$(
														"#citySelect option:contains("
																+ $("#cityName")
																		.val()
																+ ")").attr(
														"selected", "selected");
												$("#citySelect").trigger(
														'change');
											}

										}

									});

							$("#provinceName").val(
									$("#provinceSelect")
											.find("option:selected").text());

						});

		$("#citySelect")
				.change(
						function() {
							$("#districtSelect").empty();
							var cityId = $("#citySelect").val();

							$
									.ajax({
										url : getContextPath()
												+ '/supplier/getDistrict',
										data : {
											cityId : cityId
										},//
										type : 'post',
										dataType : 'json',
										success : function(data) {
											var districtStr = "<option value=''>请选择</option>";
											for (var i = 0; i < data.length; i++) {
												districtStr += "<option value='"+data[i].districtId+"'>"
														+ data[i].districtName
														+ "</option>"

											}

											$("#districtSelect").append(
													districtStr);

											if ($("#districtName").val().length > 0) {
												$(
														"#districtSelect option:contains("
																+ $(
																		"#districtName")
																		.val()
																+ ")").attr(
														"selected", "selected");

											}

										}

									});

							$("#cityName").val(
									$("#citySelect").find("option:selected")
											.text());

						});
		$("#districtSelect").change(
				function() {
					$("#districtName")
							.val(
									$("#districtSelect")
											.find("option:selected").text());
				});
		/* $(".radio").click(function(){
			alert("您是..." + $(this).val());
		}); */

	})
	$('.form_datetime').datetimepicker({
		//language:  'fr',
		weekStart : 1,
		todayBtn : 1,
		autoclose : 1,
		todayHighlight : 1,
		startView : 2,
		forceParse : 0,
		showMeridian : 1
	});

	function addOrUpdate() {
		/* alert($('#supplier').serialize()); */
		$.ajax({
			url : getContextPath() + '/supplier/addOrUpdate',
			data : $('#supplier').serialize(),
			type : 'post',
			dataType : 'json',
			success : function(data) {
				if (data) {

					layer.msg('添加成功', {
						icon : 1,
						time : 1000
					//2秒关闭（如果不配置，默认是3秒）
					}, function() {
						$('#content').load(
								getContextPath() + '/supplier/supplierForm',
								function(r, s, xhr) {

								});
					});

				} else {
					layer.msg('添加失败', {
						icon : 1,
						time : 3000
					//2秒关闭（如果不配置，默认是3秒）
					}, function() {

					});

				}

			},
			error : function() {

				alert("添加失败");
			},

		});

	}
	function deloperate(id) {
		alert(id);
		$("#" + id).remove();
		$("#" + id).remove();
		$("#" + id).remove();
	}
</script>