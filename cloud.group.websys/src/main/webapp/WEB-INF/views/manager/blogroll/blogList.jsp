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
                <span>友情链接</span>
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
                                        友情链接
                                    </li>
                                    <li>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>友情链接</li>
                                </ul>
                            </div>
        </div>
    </div>
</div>
<div class='row-fluid'>
    <div class='span12 box bordered-box blue-border' style='margin-bottom:0;'>
        <div class='box-header blue-background'>
            <div class='title'>友情链接列表</div>
            <div class='actions'>
                <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                </a>
                <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                </a>
            </div>
        </div>
         <div class='box-content'>

					<div>
					 <input type="button"
							style="margin-left: 20px" value="新增" onclick="openFrame();">
					</div>

			</div>
        
        <div class='box-content box-no-padding'>
            <div class='responsive-table'>
                <div class='scrollable-area'>
                    <table class='table table-bordered table-hover table-striped' style='margin-bottom:0;'>
                        <thead>
                        <tr>
                            <th>
                                链接Id
                            </th>
                            <th>
                                链接名称
                            </th>
                            <th>
         	 链接地址                  
                            </th>
                            <th>
                                链接状态
                            </th>
                             <th>
                                链接排序
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
	                            <td>${u.title}</td>
	                            <td>${u.link}</td>
	                            <td>${u.statusCn}</td>
	                            <td>${u.sort}</td>
	                            <td>
	                            <c:if test="${u.status==0}">
	                                <a href="#"><span class='label label-success' onclick="up(${u.id})">上架</span></a>
	                            </c:if>
	                            <c:if test="${u.status==1}">
	                                <a href="#"><span class='label label-success' onclick="down(${u.id})">下架</span></a>
	                            </c:if>
	                            <c:if test="${u.sort>1}">
	                                <a href="#"><span class='label label-success' onclick="move(${u.id})">上移</span></a>
	                            </c:if>
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

</div>
</div>
</div>
<script src='assets/js/blogroll.js' type='text/javascript'></script>
