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
							<i class='icon-table'></i> <span>用户反馈</span>
						</h1>
						<div class='pull-right'>
							<ul class='breadcrumb'>
								<li><a href="index.html"><i class='icon-bar-chart'></i>
								</a></li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li>系统管理</li>
								<li class='separator'><i class='icon-angle-right'></i></li>
								<li class='active'>用户反馈查询</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		
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
											<th style='text-align: center;'>反馈时间</th>
											<th style='text-align: center;'>反馈内容</th>
											<th style='text-align: center;'>用户ID</th>
											<th style='text-align: center;'>用户名称</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${feedBackList}" var="s">
											<tr>
												<td style="min-width:140px;'"><fmt:formatDate value="${s.createTime}"
														pattern="yyyy-MM-dd HH:mm:ss" /></td>
												<td style="white-space:normal;">${s.feedbackContent}</td>
												<td style="min-width:60px;">${s.createId}</td>
												<td style="min-width:80px;"></td>

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
							onclick="feedbacklistpage(this.id)"><< 前一页</a>
					</c:if>
					<c:if test="${currentPage == 1}">
						<span class="current">1</span>
					</c:if>
					<c:if test="${currentPage != 1}">

						<a href="#" id="1" onclick="feedbacklistpage(this.id)">1</a>
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
						<a href="#" id="<%=i + 1%>" onclick="feedbacklistpage(this.id)"><%=i + 1%></a>
					</c:if>
					<%
						}
					%>

					<c:if test="${currentPage == pageTimes}">
						<span class="disabled">后一页 >></span>
					</c:if>
					<c:if test="${currentPage != pageTimes}">
						<a href="#" id="${currentPage+1}"
							onclick="feedbacklistpage(this.id)">后一页 >></a>
					</c:if>
				</div>
			</div>
			<!-- end 分页 -->


		</div>
	</div>
</div>
<script type="text/javascript">
	
	function supplierlistpage(id) {
		var pageUrl = "/cloud.group.websys/user/feedBack?page=" + id
				+ "";

		$('#content').load(pageUrl,function(r, s, xhr) {

				});
	}
	
	function feedbacklistpage(id) {
		var pageUrl = "/cloud.group.websys/user/feedBack?page=" + id
				+ "";

		$('#content').load(pageUrl, $("#queryForm").serialize(),
				function(r, s, xhr) {

				});
	}

</script>




