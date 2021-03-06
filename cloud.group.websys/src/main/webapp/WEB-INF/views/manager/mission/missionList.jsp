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
                <span>任务查询</span>
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
                                        任务管理
                                    </li>
                                    <li>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>任务查询</li>
                                </ul>
                            </div>
        </div>
    </div>
</div>
<div class='row-fluid'>
    <div class='span12 box bordered-box blue-border' style='margin-bottom:0;'>
        <div class='box-header blue-background'>
            <div class='title'>任务列表</div>
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
						<span>项目名称 </span>
						<input type="text" name="missionTitle" value="${u.missionTitle}" style="margin-left: 5px; margin-right: 5px;">
						<br/>
                                    <span>任务时间</span>
                                     	<div class='datetimepicker input-append form_datetime' id='datetimepicker1'>
					                        <input id="startTime" name="beginTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='任务开始时间' type="datetime" value='${u.beginTm}'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>
					                    </div>
                                	<span>至</span>
                                        <div class='datetimepicker input-append form_datetime' id='datetimepicker2'>
					                        <input id="endTime" name="endTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='任务结束时间' type="datetime" value='${u.endTm}'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>
					                    </div>
						

					</div>

					<div>
					 <input type="button"
							style="margin-left: 20px" value="查询" onclick="listpage(1);">
					</div>

				</form>

			</div>
			<!-- end 搜索 -->
        
        <div class='box-content box-no-padding'>
            <div class='responsive-table'>
                <div class='scrollable-area'>
                    <table class='table table-bordered table-hover table-striped' style='margin-bottom:0;'>
                        <thead>
                        <tr>
                            <th>
                                项目Id
                            </th>
                            <th>
                                项目名称
                            </th>
                            <th>
         	 单价                    
                            </th>
                            <th>
                                开始时间
                            </th>
                             <th>
                                结束时间
                            </th>
                            <th>
                                工号生成
                            </th>
                            <th>
                                参加人数
                            </th>
                            <th>
                            操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="u">
	                        <tr>
	                            <td>${u.id}</td>
	                            <td>${u.missionTitle}</td>
	                            <td>${u.price}</td>
	                            <td><fmt:formatDate value="${u.beginTm}" pattern="yyyy-MM-dd HH:mm"/></td>
	                            <td><fmt:formatDate value="${u.endTm}" pattern="yyyy-MM-dd HH:mm"/></td>
	                            <td>${u.codeTypeCn}</td>
	                            <td>${u.signNum}</td>
	                            <td>
	                            	<a href="#"><span class='label label-success' onclick="openDetail(${u.id})">查看</span></a>
	                            	<a href="#"><span class='label label-fault' onclick="remove(${u.id})">删除</span></a>
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
<script src='assets/js/mission.js' type='text/javascript'></script>
