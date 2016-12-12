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
							<i class='icon-table'></i> <span>用户查询</span>
						</h1>
						<div class='pull-right'>
							<ul class='breadcrumb'>
								<li><a href="index.html"><i class='icon-bar-chart'></i>
								</a></li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li>系统管理</li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li class='active'>用户查询</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- begin搜索 -->
			<div class='box-content'>

				<form id="queryForm">

					<div>
						<span>用户昵称</span><input type="text" name="nickname"
							style="margin-left: 5px; margin-right: 5px;"> <span>收货人名称</span><input
							type="text" name="recipientName"
							style="margin-left: 5px; margin-right: 5px;"> <span>收货人电话</span><input
							type="text" name="mobile"
							style="margin-left: 5px; margin-right: 5px;"> <br />

					</div>

					<div>
						<span style="margin-left: 9px;">是否烟店：</span><input type="checkbox"
							value="1" name="isShopStr" />是<input type="checkbox" value="0"
							name="isShopStr" />否<span style="margin-left: 9px;">是否关注：</span> <input
							type="checkbox" value="0" name="subscribeStr" />否<input
							type="checkbox" value="1" name="subscribeStr" />是 <span
							style="margin-left: 15px;">是否禁用：</span> <input type="checkbox"
							value="2" name="userStatusStr" />否<input type="checkbox" value="99"
							name="userStatusStr" />是 <input type="button"
							style="margin-left: 20px" value="查询" onclick="queryFunction();">
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
											<th style='text-align: center;'>用户编号</th>
											<th style='text-align: center;'>用户昵称</th>
											<th style='text-align: center;'>用户类型</th>
											<th style='text-align: center;'>收货人名称</th>
											<th style='text-align: center;'>收货人电话</th>
											<th style='text-align: center;'>性别</th>
											<th style='text-align: center;'>所属烟店名称</th>
											<th style='text-align: center;'>地址信息</th>
											<th style='text-align: center;'>状态</th>
											<th style='text-align: center;'>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${userList}" var="s">
											<tr>
												<td><a class='belowLine' href="#"
													onclick="pageShow(${s.userId})">${s.userId}</a></td>
												<td>${s.nickname}</td>
												<td><c:if test="${s.isShop==0}">非法</c:if> <c:if
														test="${s.isShop==1}">烟店</c:if>
														 <c:if
														test="${s.isShop==2}">合法</c:if></td>
												<td>${s.recipientName}</td>
												<td>${s.mobile}</td>
												<td><c:if test="${s.sex==1}">男</c:if> <c:if
														test="${s.sex==2}">女</c:if></td>
												<td>${s.shopName}</td>
												<td>${s.province}${s.city}${s.country}</td>
												<td><c:if test="${s.subscribe==0}">未关注</c:if> <c:if
														test="${s.subscribe==1}">关注</c:if></td>
												<td style='text-align: center;'><c:if
														test="${s.userStatus==2}">
														<span class='label'>启用</span>
														<a href="#"><span class='label label-success'
															onclick="change(${s.userId},99)"
															style='background-color: #00acec;'>禁用</span></a>
													</c:if> <c:if test="${s.userStatus==99}">
														<a href="#"><span class='label label-success'
															onclick="change(${s.userId},2)"
															style='background-color: #00acec;'>启用</span></a>
														<span class='label'>禁用</span>
													</c:if> <c:if test="${s.isShop==0}">
														<a href="#"><span class='label label-important'
															onclick="bindShop(${s.userId})">绑定烟店</span></a>
														<span class='label '>解除绑定</span>
													</c:if>
													<c:if test="${s.isShop==2}">
														<a href="#"><span class='label label-important'
															onclick="bindShop(${s.userId})">绑定烟店</span></a>
														<span class='label '>解除绑定</span>
													</c:if>
													 <c:if test="${s.isShop==1}">
														<span class='label'>绑定烟店</span>
														<a href="#"><span class='label label-important'
															onclick="cancelbind(${s.userId},${s.shopId})">解除绑定</span></a>
													</c:if></td>

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
		/* alert(id) */
		var pageUrl = "/cloud.group.websys/supplier/supplierForm?id=" + id + "";
		$('#content').load(pageUrl, function(r, s, xhr) {

		});
	}
	function supplierlistpage(id) {
		var pageUrl = "/cloud.group.websys/user/userList?page=" + id
				+ "";

		$('#content').load(pageUrl, $("#queryForm").serialize(),
				function(r, s, xhr) {

				});
	}

	function queryFunction() {
		var pageUrl = "/cloud.group.websys/user/userList";

		$('#content').load(pageUrl, $("#queryForm").serialize(),
				function(r, s, xhr) {

				});
	}
	
	function cancelbind(id,shopId)
	{
		$.ajax({
			url : '/cloud.group.websys/user/updateStatus',
			data : {
				id : id,
				isShop:0,
				shopId:shopId
			},
			type : 'post',
			dataType : 'json',
			success : function(data) {
				if (data) {

					layer.msg('成功', {
						icon : 1,
						time : 1000
					//2秒关闭（如果不配置，默认是3秒）
					}, function() {
						queryFunction();
					});

				}

			},
			error : function() {

				layer.msg('失败', {
					icon : 1,
					time : 3000
				//2秒关闭（如果不配置，默认是3秒）
				}, function() {

				});
			},

		});
	}
	
	function change(id, statuscode) {
		$.ajax({
			url : '/cloud.group.websys/user/updateStatus',
			data : {
				id : id,
				statusCode : statuscode
			},
			type : 'post',
			dataType : 'json',
			success : function(data) {
				if (data) {

					layer.msg('成功', {
						icon : 1,
						time : 1000
					//2秒关闭（如果不配置，默认是3秒）
					}, function() {
						queryFunction();
					});

				}

			},
			error : function() {

				layer.msg('失败', {
					icon : 1,
					time : 3000
				//2秒关闭（如果不配置，默认是3秒）
				}, function() {

				});
			},

		});
	}
	function closePage()
	{queryFunction();
		layer.closeAll();
		}
	function bindShop(id) {
		/* alert(id); */
		var pageUrl = "/cloud.group.websys/shop/bindShop?userId="+id+"";

		layer.open({
			type : 2,
			title : '绑定烟店',
			shadeClose : true,
			shade : 0.8,
			area : [ '50%', '50%' ],
			content : pageUrl
		//iframe的url
		});
	}
	
	function pageShow(id) {
		/* alert(id); */
		var pageUrl = "/cloud.group.websys/user/getUserDetailById?id="
				+ id + "";

		layer.open({
			type : 2,
			title : '用户详情',
			shadeClose : true,
			shade : 0.8,
			area : [ '50%', '50%' ],
			content : pageUrl
		//iframe的url
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
</script>




