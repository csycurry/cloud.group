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
							<i class='icon-table'></i> <span>烟店查询</span>
						</h1>
						<div class='pull-right'>
							<ul class='breadcrumb'>
								<li><a href="index.html"><i class='icon-bar-chart'></i>
								</a></li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li>烟店管理</li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li class='active'>烟店查询</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- begin搜索 -->
			<div class='box-content'>

				<form id="queryForm">

					<div>
						<span>烟店名称 </span><input type="text" name="shopName"
							style="margin-left: 5px; margin-right: 5px;"> <span>店长名称</span><input
							type="text" name="contactPeople"
							style="margin-left: 5px; margin-right: 5px;"> <span>许可证号</span><input
							type="text" name="shopCode"
							style="margin-left: 5px; margin-right: 5px;">
					</div>

					<div>
						<span style="margin-left: 9px;">审核状态：</span><input type="checkbox"
							value="1" name="dataStatus" />待审核<input type="checkbox"
							value="2" name="dataStatus" />已审核<input type="checkbox"
							value="9" name="dataStatus" />已拒绝 <input type="checkbox"
							value="99" name="dataStatus" />已删除 <span
							style="margin-left: 15px;">供应商等级：</span><input type="checkbox"
							value="A" name="shopLevel" />A类<input type="checkbox" value="B"
							name="shopLevel" />B类<input type="checkbox" value="C"
							name="shopLevel" />C类 <input type="button"
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
											<th style='text-align: center;'>烟店编号</th>
											<th style='text-align: center;'>烟店名称</th>
											<th style='text-align: center;'>许可证号</th>
											<th style='text-align: center;'>店长名称</th>
											<th style='text-align: center;'>联系电话</th>
											<th style='text-align: center;'>详细地址</th>
											<th style='text-align: center;'>状态</th>

											<th style='text-align: center;'>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${shopList}" var="s">
											<tr>
												<td><a class='belowLine' href="#" id='${s.shopId}'
													onclick="pageShow(this.id)"> <c:if
															test="${s.updateId==null}">${s.shopId}</c:if> <c:if
															test="${s.updateId!=null}">${s.updateId}</c:if>
												</a></td>
												<td>${s.shopName}</td>
												<td>${s.shopCode}</td>
												<td>${s.contactPeople}</td>
												<td>${s.mobile}</td>
												<td>${s.provinceName}${s.cityName}${s.districtName}${s.street}</td>
												<td><c:if test="${s.userStatus==1}">待审核</c:if> <c:if
														test="${s.userStatus==2}">已审核</c:if> <c:if
														test="${s.userStatus==9}">已拒绝 </c:if> <c:if
														test="${s.userStatus==99}">已删除</c:if></td>
												<td style='text-align: center;'>
												<a href="#"><span class='label label-success' id="${s.shopId}" onclick="modifi(this.id)"style='background-color: #00acec;'>修改</span></a> 
												<c:if test="${s.userStatus==1}">
														<a href="#"><span class='label label-warning'
															onclick="change(${s.shopId},2)">通过</span></a>
														<a href="#"><span class='label label-warning'
															onclick="change(${s.shopId},9)">拒绝</span></a>
													</c:if> 
													<c:if test="${s.userStatus==2}">
														<span class='label'>通过</span>
														<a href="#"><span class='label label-warning' onclick="change(${s.shopId},9)">拒绝</span></a>
													</c:if> 
													<c:if test="${s.userStatus==9}">
														<a href="#"><span class='label label-warning'
															onclick="change(${s.shopId},2)">通过</span></a>
													<span class='label'>拒绝</span>
													</c:if> 
													<c:if test="${s.userStatus==99}">
													<span class='label'>通过</span>
													<span class='label'>拒绝</span>
													</c:if> 
													<a href="#"><span class='label label-important'
														onclick="change(${s.shopId},99)">删除</span></a>
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
		
		/* var pageUrl = getContextPath()+"/shop/shopForm?id=" + id + "";
		$('#content').load(pageUrl, function(r, s, xhr) {

		}); */
		
		var pageUrl = getContextPath()+"/shop/shopForm?id=" + id + "";
		layer.open({
		    type: 2,
		    title: '烟店修改',
		    shadeClose: true,
		    shade: 0.8,
		    area: ['80%', '90%'],
		    content:pageUrl
		});
	}
	function supplierlistpage(id) {
		var pageUrl = getContextPath()+"/shop/shopList?page=" + id
				+ "";

		$('#content').load(pageUrl, $("#queryForm").serialize(),
				function(r, s, xhr) {

				});
	}

	function queryFunction() {
		
		var pageUrl = getContextPath()+"/shop/shopList";

		$('#content').load(pageUrl, $("#queryForm").serialize(),
				function(r, s, xhr) {

				});

	}
	
	function pageShow(id)
	{
		
		var pageUrl = getContextPath()+"/shop/getshopDetailById?id="+id+"";
		
		layer.open({
		    type: 2,
		    title: '烟店详情',
		    shadeClose: true,
		    shade: 0.8,
		    area: ['50%', '50%'],
		    content: pageUrl //iframe的url
		}); 
	}
	
	function change(id,statuscode)
	{
		$.ajax({
			url : getContextPath()+'/shop/updateStatus',
			data : {id:id,statusCode:statuscode},
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
				else
					{

					layer.msg('失败', {
						icon : 1,
						time : 2000
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




