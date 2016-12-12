<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
.left {
	width: 80px;
	float: left;
	text-align: right;
	line-height: 60px
}

.right {
	width: 600px;
	float: right;
	text-align: right;
	line-height: 60px
}
</style>
<div class='container-fluid'>
	<div class='row-fluid' id='content-wrapper'>
		<div class='span12'>
			<div class='row-fluid'>
				<div class='span12'>
					<div class='page-header'>
						<h1 class='pull-left'>
							<i class='icon-table'></i> <span>订单查询</span>
						</h1>
						<div class='pull-right'>
							<ul class='breadcrumb'>
								<li><a href="index.html"><i class='icon-bar-chart'></i>
								</a></li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li>订单管理</li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li class='active'>订单查询</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- begin搜索 -->
			<div class='box-content'>

				<form id="queryForm">

					<div>
						<span>团购名称 </span><input  type="text" name="groupBuyingTitle"
							style="margin-left: 15px; margin-right: 5px;" placeholder='团购名称'> <span>团购时间</span>
						<div class='datetimepicker input-append form_datetime'
							id='datetimepicker1'>
							<input id="orderTime" name="orderTime" data-format='yyyy-MM-dd'
								placeholder='团购开始时间' type='text'
								value=<fmt:formatDate value="${supplierEntity.startTime}" pattern="yyyy-MM-dd"/>>
							<span class='add-on'> <i data-date-icon='icon-calendar'
								data-time-icon='icon-time'></i>
							</span>
						</div>
						<span>至</span>
						<div class='datetimepicker input-append form_datetime'
							id='datetimepicker1'>
							<input id="endTime" name="sendTime" data-format='yyyy-MM-dd'
								placeholder='团购结束时间' type='text'
								value=<fmt:formatDate value="${supplierEntity.endTime}" pattern="yyyy-MM-dd"/>>
							<span class='add-on'> <i data-date-icon='icon-calendar'
								data-time-icon='icon-time'></i>
							</span>
						</div>
						<br/>
						<span>收货人姓名</span><input style="margin-left: 5px;" type="text"
							name="recipientName" placeholder='收货人姓名'>
							<span>订单编号</span><input style="margin-left: 5px;" type="text"
							name="orderCode" placeholder='订单编号'>
					</div>

					<div>
						<span style="margin-left: 9px;">订单状态：</span><input type="checkbox"
							value="1" name="dataStatus" />已取消<input type="checkbox"
							value="2" name="dataStatus" />临时订单<input type="checkbox"
							value="9" name="dataStatus" />待发货<input type="checkbox"
							value="99" name="dataStatus" />已发货 
							<input type="button" style="margin-left: 20px" value="查询" onclick="queryFunction();">
							<input type="button" id="exportExcel" name="exportExcel" value="导出Excel" onclick="download();">
					</div>

				</form>

			</div>
			<!-- end 搜索 -->
			<div class='row-fluid'>
				<div class='span12 box bordered-box green-border'
					style='margin-bottom: 0;'>
					<div class='box-header blue-background'>
						<div class='title'>信息列表</div>
						<div class='actions'>
							<a href="#" class="btn box-remove btn-mini btn-link"><i
								class='icon-remove'></i> </a> <a href="#"
								class="btn box-collapse btn-mini btn-link"><i></i> </a>
						</div>
					</div>
					<div class='box-content box-no-padding'>
						<div class='responsive-table'>
							<div class='scrollable-area'>
								<table class='table table-bordered table-hover table-striped'
									style='margin-bottom: 0;'>
									<thead>
										<tr>
											<th style='text-align: center;'>订单编号</th>
											<th style='text-align: center;'>团购名称</th>
											<th style='text-align: center;'>团购数</th>
											<th style='text-align: center;'>用户编号</th>
											<th style='text-align: center;'>收货人姓名</th>
											<th style='text-align: center;'>收货人电话</th>
											<th style='text-align: center;'>收货地址</th>
											<th style='text-align: center;'>下单时间</th>
											<th style='text-align: center;'>订单状态</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${orederlist}" var="s">
											<tr>
												<td><a class='belowLine' href="#" id='${s.orderId}' onclick="pageShow(this.id)">${s.orderCode}</a></td>
												<td>${s.groupBuyingTitle}</td>
												<td>${s.orderNumber}</td>
												<td>${s.userId}</td>
												<td>${s.recipientName}</td>
												<td>${s.mobile}</td>
												<td>${s.province}${s.city}${s.country}${s.street}</td>
												<td><fmt:formatDate value="${s.orderTime}"
														pattern="yyyy-MM-dd hh:mm:ss" /></td>
											
												<td>
												<c:if test="${s.orderStatus==1}">待付款</c:if>
												<c:if test="${s.orderStatus==2}">待发货 </c:if>
												<c:if test="${s.orderStatus==3}">待收货</c:if>
												<c:if test="${s.orderStatus==4}">待评价 </c:if>
												<c:if test="${s.orderStatus==5}">已完成 </c:if>
												<c:if test="${s.orderStatus==6}">临时订单</c:if>
												</td>
												
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- begin 分页 -->
			<div class="pagging">
				<div class="left">共${userNum}条记录</div>
				<div class="right">
					<c:if test="${currentPage == 1}">
						<span class="disabled"><< 前一页</span>
					</c:if>
					<c:if test="${currentPage != 1}">
						<a href="#" id="${currentPage-1}"
							onclick="supplierlistpage(this.id)"><< 前一页</a>
					</c:if>
					<c:if test="${currentPage == 1}">
						<span class="current">1</span>
					</c:if>
					<c:if test="${currentPage != 1}">

						<a href="#" id="1" onclick="supplierlistpage(this.id)">1</a>
					</c:if>
					<%
						int pageTimes = (Integer) session.getAttribute("pageTimes");
						for (int i = 1; i < pageTimes; i++) {
							request.setAttribute("page", i + 1);
					%>
					<c:if test="${currentPage == page}">
						<span class="current"><%=i + 1%></span>
					</c:if>
					<c:if test="${currentPage != page}">
						<a href="#" id="<%=i + 1%>" onclick="supplierlistpage(this.id)"><%=i + 1%></a>
					</c:if>
					<%
						}
					%>

					<c:if test="${currentPage == pageTimes}">
						<span class="disabled">后一页 >></span>
					</c:if>
					<c:if test="${currentPage != pageTimes}">
						<a href="#" id="${currentPage+1}"
							onclick="supplierlistpage(this.id)">后一页 >></a>
					</c:if>
				</div>
			</div>
			<!-- end 分页 -->


		</div>
	</div>
</div>
<script type="text/javascript">
	function modifi(id) {
		
		var pageUrl = "/cloud.group.websys/supplier/supplierForm?id=" + id + "";
		$('#content').load(pageUrl, function(r, s, xhr) {

		});
	}
	function supplierlistpage(id) {
		var pageUrl = "/cloud.group.websys/order/orderList?page=" + id
				+ "";

		$('#content').load(pageUrl, $("#queryForm").serialize(),
				function(r, s, xhr) {

				});
	}

	function queryFunction() {
		
		var pageUrl = "/cloud.group.websys/order/orderList";

		$('#content').load(pageUrl, $("#queryForm").serialize(),
				function(r, s, xhr) {

				});

	}
	
	function pageShow(id)
	{
		var pageUrl = "/cloud.group.websys/order/getOrderDetailById?id="+id+"";
		
		layer.open({
		    type: 2,
		    title: '订单详情',
		    shadeClose: true,
		    shade: 0.8,
		    area: ['50%', '50%'],
		    content: pageUrl //iframe的url
		}); 
	}
	
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
	
	 function download(){
		 var data= $("#queryForm").serialize();
// 		 alert(data);
		 var url="/cloud.group.websys/order/exportExcel?"+data+"";
	        window.open(url);
}
</script>




