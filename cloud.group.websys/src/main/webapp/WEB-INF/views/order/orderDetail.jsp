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
				<td>订单编号：</td>
				<td>${orderEntity.orderCode}</td>
				<td>团购名称：</td>
				<td>${orderEntity.groupBuyingTitle}</td>
			</tr>
			<tr>
				<td>团购数：</td>
				<td>${orderEntity.orderNumber}</td>
				<td>用户编号：</td>
				<td>${orderEntity.userId}</td>
			</tr>
			<tr>
				<td>收货人姓名：</td>
				<td>${orderEntity.recipientName}</td>
				<td>收货人电话：</td>
				<td>${orderEntity.mobile}</td>

			</tr>
			<tr>
				<td>收货地址：</td>
				<td>${orderEntity.province}${orderEntity.city}${orderEntity.country}${orderEntity.street}</td>
				<td>下单时间：</td>
				<td><fmt:formatDate
						value="${orderEntity.orderTime}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
			</tr>
		</tbody>
	</table>
</body>
</html>