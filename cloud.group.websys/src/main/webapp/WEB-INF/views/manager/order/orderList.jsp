<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                <i class='icon-table'></i>
                <span>订单查询</span>
            </h1>
             <div class='pull-right'>
                                <ul class='breadcrumb'>
                                    <li>
                                        <a href="index.html"><i class='icon-bar-chart'></i>
                                        </a>
                                    </li>
                                    <li class='separator'>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li>
                                        订单管理
                                    </li>
                                    <li>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>订单查询</li>
                                </ul>
                            </div>
        </div>
    </div>
</div>
<div class='row-fluid'>
    <div class='span12 box bordered-box blue-border' style='margin-bottom:0;'>
        <div class='box-header blue-background'>
            <div class='title'>订单列表</div>
            <div class='actions'>
                <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                </a>
                <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                </a>
            </div>
        </div>
        
        <div class='box-content'>

				<form id="queryForm">

					<div>
						<span>用户Id </span>
						<input type="text" name="userId" value="${u.userId}" style="margin-left: 5px; margin-right: 5px;">
						
						<span>商品Id </span>
						<input type="text" name="missionId" value="${u.missionId}" style="margin-left: 5px; margin-right: 5px;">
						
						<span>收益来源</span>
						<select name="comeFrom">
				                        <c:if test="${u.comeFrom==null}">
				                        	<option value="0" selected="selected">请选择</option>
				                        </c:if>
				                        <c:if test="${u.comeFrom!=null}">
				                        	<option value="${u.comeFrom}" selected="selected">${u.comeFromMean}</option>
				                        </c:if>
				                        	<option value="1">订单</option>
				                        	<option value="2">推广</option>
				                        </select>
						
						<br/>
                        <span>创建时间</span>
                                     	<div class='datetimepicker input-append form_datetime' id='datetimepicker1'>
					                        <input id="startTime" name="beginTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='起始时间' type="datetime" value='${u.beginTm}'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>
					                    </div>
                                	<span>至</span>
                                        <div class='datetimepicker input-append form_datetime' id='datetimepicker2'>
					                        <input id="endTime" name="endTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='截止时间' type="datetime" value='${u.endTm}'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>

					</div>

					<div>
					 <input type="button"
							style="margin-left: 20px" value="查询" onclick="listpage(1);">
					<input type="button"
							style="margin-left: 20px" value="按条件批量审核" onclick="up_batch();">
					</div>

				</form>

			</div>
			<!-- end 搜索 -->
        
        <div class='box-content box-no-padding'>
            <div class='responsive-table'>
                <div class='scrollable-area'>
                    <table class='table table-bordered table-hover table-striped' style='margin-bottom:0;' data-click-to-select="true">
                        <thead>
                        <tr>
                            <th>
                                用户Id
                            </th>
                            <th>
                                用户名
                            </th>
                            <th>
         	 					 推荐用户Id                   
                            </th>
                            <th>
         	 					商品Id                   
                            </th>
                            <th>
         	 					商品名称                    
                            </th>
                            <th>
                                金额
                            </th>
                            <th>
                                状态
                            </th>
                             <th>
                                导入时间
                            </th>
                            <th>审核人</th>
                            <th>审核时间</th>
                            <th>
                            操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        <c:forEach items="${list}" var="u">
	                        <tr>
	                            <td>${u.userId}</td>
	                            <td>${u.userCode}</td>
	                            <td>${u.earningsFrom}</td>
	                            <td>${u.missionId}</td>
	                            <td style="max-width: 100px">${u.missionName}</td>
	                            <td>${u.earnings}</td>
	                            <td>${u.statusCn}</td>
	                            <td><fmt:formatDate value="${u.createTm}" pattern="yyyy-MM-dd HH:mm"/></td>
	                            <td>${u.settleMan}</td>
	                            <td><fmt:formatDate value="${u.settleTm}" pattern="yyyy-MM-dd HH:mm"/></td>
	                            <td>
	                             <c:if test="${u.status==0}">
	                             	<a href="#"><span class='label label-success' onclick="up(${u.id})">审核</span></a>
	                             	<a href="#"><span class='label label-success' onclick="detail(${u.id})">修改</span></a>
	                             </c:if>
	                             <c:if test="${u.status!=9}">
	                             	<a href="#"><span class='label label-warning' onclick="callback(${u.id})">撤回</span></a>
	                           	</c:if>
	                            </td>
	                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                   
                </div>
	              <div class="pagging">
					<div class="left">共${userNum}条记录</div>
					<div class="right">
						<c:if test="${currentPage == 1}">
							<span class="disabled"><< 前一页</span>
						</c:if>
						<c:if test="${currentPage != 1}">
							<a href="#" id="${currentPage-1}"
								onclick="listpage(this.id)"><< 前一页</a>
						</c:if>
						
						<c:forEach begin="1" end="${pageNum}" varStatus="status">
							<c:if test="${currentPage == status.index}">
								<a href="#" class="current" id="${status.index}" onclick="listpage(this.id)">${status.index}</a>
							</c:if>
							<c:if test="${currentPage != status.index}">
								<a href="#" id="${status.index}" onclick="listpage(this.id)">${status.index}</a>
							</c:if>
						</c:forEach>
	
						<c:if test="${currentPage == pageNum}">
							<span class="disabled">后一页 >></span>
						</c:if>
						<c:if test="${currentPage != pageNum}">
							<a href="#" id="${currentPage+1}"
								onclick="listpage(this.id)">后一页 >></a>
						</c:if>
					</div>
				</div>
            </div>
        </div>
    </div>
</div>

</div>
</div>
</div>

<script src='assets/js/order.js' type='text/javascript'></script>
