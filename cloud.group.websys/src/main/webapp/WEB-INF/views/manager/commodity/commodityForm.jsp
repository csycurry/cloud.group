  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
    <c:if test="${m.id>0}">
		<%@ include file="../../common/commonjs.jsp"%>
	</c:if>
	<link href="${pageContext.request.contextPath}/assets/umeditor1_2_2/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/umeditor.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/umeditor.config.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/lang/zh-cn/zh-cn.js"></script>
    <script src='${pageContext.request.contextPath}/assets/js/file.js' type='text/javascript'></script>	
  <div class='container-fluid'>
        <div class='row-fluid' id='content-wrapper'>
            <div class='span12'>
                <div class='row-fluid'>
                    <div class='span12'>
                        <div class='page-header'>
                            <h1 class='pull-left'>
                                <i class='icon-ok'></i>
                                <span>添加任务</span>
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
                                        商品管理
                                    </li>
                                    <li class='separator'>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>添加商品</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-header blue-background'>
                            <div class='title'>商品信息</div>
                            <div class='actions'>
                                <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                </a>
                                <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                </a>
                            </div>
                        </div>
                       
                        <div class='box-content'>
                         <form id="groupBuyForm" class='form form-horizontal validate-form' style='margin-bottom: 0;'>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品编号</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='commodityId' name='commodityId'>${m.commodityId}</textarea>
                                   		<input type='hidden' name='id' id='id' value='${m.id==null?0:m.id}'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品名称</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='commodityName' name='commodityName'>${m.commodityName}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品图片地址</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='commodityPic' name='commodityPic'>${m.commodityPic}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品详情地址</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='commodityTbk' name='commodityTbk'>${m.commodityTbk}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品销售者id</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='sellerId' name='sellerId'>${m.sellerId}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品商铺名称</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='shopName' name='shopName'>${m.shopName}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品商铺名称</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='shopName' name='shopName'>${m.shopName}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品销售者名称</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='sellerName' name='sellerName'>${m.sellerName}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品详情地址</label>
                                    <div class='controls'>
                                    	<textarea rows="2"  class="form-control" id='commodityTbk' name='commodityTbk'>${m.commodityTbk}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_date'>任务开始时间</label>
                                    <div class='controls' >
                                     	<div class='datetimepicker input-append form_datetime' id='datetimepicker1'>
					                        <input id="beginDate" name="beginTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='任务开始时间' type="datetime" value='<fmt:formatDate value="${m.beginTm}" pattern="yyyy-MM-dd HH:mm:ss"/>'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>
					                    </div>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_date'>任务结束时间</label>
                                    <div class='controls'>
                                        <div class='datetimepicker input-append form_datetime' id='datetimepicker2'>
					                        <input id="endDate" name="endTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='任务结束时间' type="datetime" value='<fmt:formatDate value="${m.endTm}" pattern="yyyy-MM-dd HH:mm:ss"/>'  >
								            <span class='add-on'>
								              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
								            </span>
					                    </div>
                                    </div>
                                </div>
                   				
				                <div class='control-group' id="excel" style="display: none">
				                    <label class='control-label'>导入Excel</label>
				                    <div class='controls'>
				                    	<input title='选择文件' id="excel_upload" name="excel_upload"  type='file' />
				                    </div>
				                    <div id="excelresult">
				                    <div id="excelDiv">
				                    </div>
											
									</div>
				                </div>
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button id="saveBtn" class='btn btn-primary' type="button" onclick="saveMission()">
                                        <i class='icon-save'></i>
                                        保存
                                    </button>
                                    <button id="excel_save" class='btn btn-primary' style="display: none" type="button" onclick="javascript:$('#excel_upload').uploadify('upload', '*')">
                                        <i class='icon-save'></i>
                                        保存
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src='${pageContext.request.contextPath}/assets/js/mission.js' type='text/javascript'></script>
<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    um.addListener('keyup',function(){  
		$("#size").html("已输入字数："+um.getContentLength(true)); 
	});
  //实例化编辑器
    var recomment = UM.getEditor('recommentEditor');
	recomment.addListener('keyup',function(){  
		$("#size2").html("已输入字数："+recomment.getContentLength(true)); 
	});
    function codeChange() {
		var val=$("#code").val();
		if(val==1)
			{
				$("#excel").show();
				$("#excel_save").show();
				$("#saveBtn").hide();
			}
		if(val==0)
		{
			$("#excel").hide();
			$("#excel_save").hide();
			$("#saveBtn").show();
		}
	}
    
</script>
 