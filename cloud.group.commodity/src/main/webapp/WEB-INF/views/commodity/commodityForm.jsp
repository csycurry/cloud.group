<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/demo.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/javascripts/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/global.js"></script>
<script src='${pageContext.request.contextPath}/assets/layer/layer.js'
	type='text/javascript'></script>
<style type="text/css">
body {
	TEXT-ALIGN: center;
}
</style>

<script type="text/javascript">
	function addCommodity() {
		$.ajax({
			url : getContextPath() + '/commodity/addOrUpdate',
			data : $('#commodity').serialize(),
			type : 'post',
			dataType : 'json',
			success : function(data) {
				if (data) {
					layer.msg('添加成功', {
						icon : 1,
						time : 1000
					//2秒关闭（如果不配置，默认是3秒）
					}, function() {

						cancel();
					});

				} else {
					layer.msg('添加失败', {
						icon : 1,
						time : 3000
					//2秒关闭（如果不配置，默认是3秒）
					}, function() {

					});

				}
			}
		})
	};

	function cancel() {
		parent.closePage();
	}
</script>
</head>
<body>
	<form id="commodity">
		<div style="width: 100%">
			<input type="hidden" name="commodityId" id="commodityId"
				value="${commodity.commodityId}" />
			<div style="margin-top: 30px; margin-bottom: 30px; width: 90%">
				<span>类别名称</span><input class="easyui-textbox" type="text"
					name="commodityName" value="${commodity.commodityName}"
					data-options="required:true">
			</div>
			<div style="width: 97%">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					style="width: 90px" onclick="addCommodity();">确定</a> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					style="width: 90px" onclick="cancel()()">取消</a>

			</div>
			<!-- <div style="width: 97%">
				<input type="button" style="width: 80px;" id="btnCancel" onclick="cancel();" value="取消" />
				<input type="button" style="width: 80px;" id="btnSave" onclick="addCommodity();" value="保存" />
			</div> -->
		</div>
	</form>
</body>

</html>