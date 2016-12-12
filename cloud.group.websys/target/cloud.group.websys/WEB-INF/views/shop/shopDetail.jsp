<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../common/commonjs.jsp"%>
</head>
<body>

	<table class='table table-hover table-striped'
		style='margin-bottom: 0;'>
		<tr>
			<td>烟店名称：</td>
			<td colspan="5">${shopEntity.shopName}</td>
			<td>许可证编号：</td>
			<td>${shopEntity.shopCode}</td>
		</tr>
		<tr>
			<td>店长名称：</td>
			<td colspan="5">${shopEntity.contactPeople}</td>
			<td>联系电话：</td>
			<td>${shopEntity.mobile}</td>
		</tr>
		<tr>
			<td>烟店等级：</td>
			<td colspan="5">${shopEntity.shopLevel}</td>
			<td>烟店状态：</td>
			<td><c:if test="${shopEntity.userStatus==1}">待审核</c:if> <c:if
					test="${shopEntity.userStatus==2}">已审核</c:if> <c:if
					test="${shopEntity.userStatus==9}">已拒绝 </c:if> <c:if
					test="${shopEntity.userStatus==99}">已删除</c:if></td>

		</tr>
		<tr>
			<td>添加时间：</td>
			<td colspan="5"></td>
			<td>添加人：</td>
			<td></td>
		</tr>
		<tr>
			<td>修改时间：</td>
			<td colspan="5"></td>
			<td>修改人：</td>
			<td></td>
		</tr>
		<tr>
			<td>烟店地址：</td>
			<td colspan="5">${shopEntity.provinceName}${shopEntity.cityName}${shopEntity.districtName}${shopEntity.street}</td>

		</tr>
		<tr>
			<td>备注：</td>
			<td colspan="4">${shopEntity.shopcontent}</td>

		</tr>
	</table>

	<div style="margin-left: 4px;">
		<span> 附件：</span>
		<c:forEach var="item" items="${shopEntity.fileNames}"
			varStatus="status">
			<c:forEach var="itemUrl" items="${shopEntity.fileUrls}" varStatus="tstatus">
			<c:if test="${status.index==tstatus.index}"><a href="${itemUrl}" target="_blank"><span>${item}</span></a></c:if>
			</c:forEach>
		</c:forEach>
	</div>

</body>
</html>