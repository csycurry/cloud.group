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
<script src='${pageContext.request.contextPath}/assets/layer/layer.js' type='text/javascript'></script>
<script type="text/javascript">
	function setvalue() {
		$.messager.prompt('SetValue', 'Please input the value(CO,NV,UT,etc):',
				function(v) {
					if (v) {
						$('#state').combobox('setValue', v);
					}
				});
	}
</script>
</head>
<body style="width: 90%; TEXT-ALIGN: center;">
	<input type="hidden" id="user_id" name="user_id" value="${userId}">
	<div style="width: 50%; MARGIN-RIGHT: auto; MARGIN-LEFT: auto;">
		<select id="state" class="easyui-combobox" name="state"
			style="width: 200px;">
			<c:forEach items="${shopList}" var="s">
				<option value='${s.shopId}'>${s.shopName}</option>
			</c:forEach>
		</select>
		<div style="margin: 20px 0;">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				style="width: 90px" onclick="bind();">确定</a> <a
				href="javascript:void(0)" class="easyui-linkbutton"
				style="width: 90px" onclick="cancel()">取消</a>

		</div>

	</div>
	<script type="text/javascript">
		function bind() {
			var shopId = $('#state').combobox('getValue');

			var userId = $("#user_id").val();

		

			$.ajax({
				url : getContextPath() + '/user/bindShop',
				data : {
					userId : userId,
					shopId : shopId
				},// 你的formid
				type : 'post',
				dataType : 'json',
				success : function(data) {
					
					if (data) {
						parent.closePage();
					}
					
				}
			});
		}
		function cancel()
		{
			parent.closePage();
		}
		function queryFunction() {

			var pageUrl = getContextPath() + "/user/userList";

			$('#content').load(pageUrl, function(r, s, xhr) {

			});

		}
	</script>


</body>
</html>
