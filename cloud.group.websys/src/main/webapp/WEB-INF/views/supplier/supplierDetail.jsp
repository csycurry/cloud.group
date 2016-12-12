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

	<%-- <table>
	<tr>
		<td>供应商名称：</td>
		<td colspan="5">${supplierEntity.supplierName}</td>
		<td>供应商电话：</td>
		<td>${supplierEntity.supplierPhone}</td>
	</tr>
	<tr>
		<td>合作开始日期：</td>
		<td colspan="5"><fmt:formatDate value="${supplierEntity.startTime}" pattern="yyyy-MM-dd"/></td>
		<td>合作结束日期：</td>
		<td><fmt:formatDate value="${supplierEntity.endTime}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<td>供应商等级：</td>
		<td colspan="5">${supplierEntity.supplierLevel}</td>
		<td>供应商状态：</td>
		<td>${supplierEntity.supplierStatus}</td>
	</tr>
	<tr>
		<td>添加时间：</td>
		<td colspan="5"><fmt:formatDate value="${supplierEntity.createTime}" pattern="yyyy-MM-dd"/></td>
		<td>添加人：</td>
		<td>${supplierEntity.createId}</td>
	</tr>
	<tr>
		<td>修改时间：</td>
		<td colspan="5"><fmt:formatDate value="${supplierEntity.updateTime}" pattern="yyyy-MM-dd"/></td>
		<td>修改人：</td>
		<td>${supplierEntity.updateId}</td>
	</tr>
	<tr>
		<td>供应商地址：</td>
		<td colspan="5">${supplierEntity.provinceName}${supplierEntity.cityName}${supplierEntity.districtName}${supplierEntity.street}</td>
		
	</tr>
	<tr>
		<td>备注：</td>
		<td colspan="4">${supplierEntity.supplierContent}</td>
		
	</tr>
</table> --%>


	<table class='table table-hover table-striped'
		style='margin-bottom: 0;'>

		<tbody>
			<tr>
				<td>供应商名称：</td>
				<td colspan="5">${supplierEntity.supplierName}</td>
				<td>供应商电话：</td>
				<td>${supplierEntity.supplierPhone}</td>
			</tr>
			<tr>
				<td>合作开始日期：</td>
				<td colspan="5"><fmt:formatDate
						value="${supplierEntity.startTime}" pattern="yyyy-MM-dd" /></td>
				<td>合作结束日期：</td>
				<td><fmt:formatDate value="${supplierEntity.endTime}"
						pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<td>供应商等级：</td>
				<td colspan="5">${supplierEntity.supplierLevel}</td>
				<td>供应商状态：</td>
				<td><c:if test="${supplierEntity.supplierStatus==1}">待审核</c:if>
					<c:if test="${supplierEntity.supplierStatus==2}">已审核</c:if> <c:if
						test="${supplierEntity.supplierStatus==9}">已停用 </c:if> <c:if
						test="${supplierEntity.supplierStatus==99}">已删除</c:if></td>

			</tr>
			<tr>
				<td>添加时间：</td>
				<td colspan="5"><fmt:formatDate
						value="${supplierEntity.createTime}" pattern="yyyy-MM-dd" /></td>
				<td>添加人：</td>
				<td>${supplierEntity.createId}</td>
			</tr>
			<tr>
				<td>修改时间：</td>
				<td colspan="5"><fmt:formatDate
						value="${supplierEntity.updateTime}" pattern="yyyy-MM-dd" /></td>
				<td>修改人：</td>
				<td>${supplierEntity.updateId}</td>
			</tr>
			<tr>
				<td>供应商地址：</td>
				<td colspan="5">${supplierEntity.provinceName}${supplierEntity.cityName}${supplierEntity.districtName}${supplierEntity.street}</td>

			</tr>
			<tr>
				<td>备注：</td>
				<td colspan="4">${supplierEntity.supplierContent}</td>

			</tr>
		</tbody>
	</table>


	<div style="margin-left: 4px;">
		<span> 附件：</span>
		<c:forEach var="item" items="${supplierEntity.fileNames}"
			varStatus="status">
			<c:forEach var="itemUrl" items="${supplierEntity.fileUrls}" varStatus="tstatus">
			<c:if test="${status.index==tstatus.index}"><a href="${itemUrl}" target="_blank"><span>${item}</span></a></c:if>
			</c:forEach>
			
		</c:forEach>
	</div>

</body>
</html>