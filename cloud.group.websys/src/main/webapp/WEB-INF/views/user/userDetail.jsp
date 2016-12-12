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

		<tbody>
			<tr>
				<td>用户编号：</td>
				<td>${userEntity.userId}</td>
				<td>性别：</td>
				<td>${userEntity.sex}</td>
			</tr>
			<tr>
				<td>收货人姓名：</td>
				<td>${userEntity.recipientName}</td>
				<td>收货人电话：</td>
				<td>${userEntity.mobile}</td>
			</tr>
			<tr>
				<td>是否合作烟店：</td>
				<td><c:if test="${userEntity.isShop==0}">非烟</c:if> <c:if
						test="${userEntity.isShop==1}">烟店</c:if></td>
				<td>所属烟店：</td>
				

			</tr>
			<tr>
				<td>是否烟店：</td>
				<td><c:if test="${userEntity.isShop==0}">非烟</c:if> <c:if
						test="${userEntity.isShop==1}">烟店</c:if></td>
				
			</tr>
			<tr>
				<td>是否关注：</td>
				<td><c:if test="${userEntity.subscribe==0}">未关注</c:if> <c:if
						test="${userEntity.subscribe==1}">关注</c:if></td>
				
			</tr>
			<tr>
				<td>添加时间：</td>
				<td><fmt:formatDate
						value="${userEntity.subscribeTime}" pattern="yyyy-MM-dd" /></td>
				<td>所属分组：</td>
				

			</tr>
			<tr>
				<td>提货地址：</td>
				<td>${userEntity.province}${userEntity.city}${userEntity.country}</td>

			</tr>
		</tbody>
	</table>


	

</body>
</html>