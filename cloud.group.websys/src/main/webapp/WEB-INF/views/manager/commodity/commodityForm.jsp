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
                                <span>添加商品</span>
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
                                    	<input  class="form-control" id='commodityId' name='commodityId' value="${m.commodityId}"></input>
                                   		<input type='hidden' name='id' id='id' value='${m.id==null?0:m.id}'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品名称</label>
                                    <div class='controls'>
                                    	<input class="form-control" id='commodityName' name='commodityName' value="${m.commodityName}"></input>
                                    </div>
                                </div>
                                 <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品分类</label>
                                    	<div class='controls'>
				                        <select name="commodityCategory">
				                        <c:if test="${m.id==null}">
				                        	<option value="0" selected="selected">请选择</option>
				                        </c:if>
				                        <c:if test="${m.id>0}">
				                        	<option value="${m.commodityCategory}" selected="selected">${m.commodityCategoryMean}</option>
				                        </c:if>
				                        	<option value="1"s>食品</option>
				                        	<option value="2">女装</option>
				                        	<option value="3">居家</option>
				                        	<option value="4">母婴童装</option>
				                        	<option value="5">男装</option>
				                        	<option value="6">内衣</option>
				                        	<option value="7">数码家电</option>
				                        	<option value="8">美妆个护</option>
				                        	<option value="9">鞋包配饰</option>
				                        	<option value="10">运动</option>
				                        </select>
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
                                    	<textarea rows="2"  class="form-control" id='commodityDetail' name='commodityDetail'>${m.commodityDetail}</textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品销售者id</label>
                                    <div class='controls'>
                                    	<input  class="form-control" id='sellerId' name='sellerId' value="${m.sellerId}"></input>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品销售者名称</label>
                                    <div class='controls'>
                                    	<input  class="form-control" id='sellerName' name='sellerName' value="${m.sellerName}"></input>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>商品商铺名称</label>
                                    <div class='controls'>
                                    	<input   class="form-control" id='shopName' name='shopName' value="${m.shopName}"></input>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>平台类型</label>
                                    	<div class='controls'>
				                        <select name="shopType">
				                        <c:if test="${m.shopType==2 }">
				                        	<option value="2" selected="selected">天猫</option>
				                        </c:if>
				                        <c:if test="${m.shopType!=2 }">
				                        	<option value="2">天猫</option>
				                        </c:if>
				                        <c:if test="${m.shopType==1 }">
				                        	<option value="1" selected="selected">淘宝</option>
				                        </c:if>
				                        <c:if test="${m.shopType!=1 }">
				                        	<option value="1">淘宝</option>
				                        </c:if>
				                        </select>
                                    </div>
                                </div>
                                 <div class='control-group'>
                                    <label class='control-label'>商品类型</label>
                                    	<div class='controls'>
				                        <select id="commodityType" name="commodityType" onchange="codeChange()">
				                        <c:if test="${m.commodityType==1 }">
				                        	<option value="1" selected="selected">返利</option>
				                        </c:if>
				                        <c:if test="${m.commodityType!=1 }">
				                        	<option value="1">返利</option>
				                        </c:if>
				                        <c:if test="${m.commodityType==2 }">
				                        	<option value="2" selected="selected">优惠卷</option>
				                        </c:if>
				                        <c:if test="${m.commodityType!=2 }">
				                        	<option value="2">优惠卷</option>
				                        </c:if>
				                        </select>
				                    </div>
                                </div>
                                <div id="reback">
                                	<div class='control-group'>
	                                    <label class='control-label' for='validation_name'>商品推广链接</label>
	                                    <div class='controls'>
	                                    	<textarea rows="2"  class="form-control" id='commodityTbk' name='commodityTbk' >${m.commodityTbk}</textarea>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_name'>返利比例</label>
	                                    <div class='controls'>
	                                    	<input  class="form-control" id='commodityRate' name='commodityRate' value="${m.commodityRate}" placeholder="整数"></input>
	                                    </div>
	                                </div>
                                </div>
                                <div id="coupon" style="display: none;">
                                	<div class='control-group'>
	                                    <label class='control-label' for='validation_name'>优惠卷id</label>
	                                    <div class='controls'>
	                                    	<input  class="form-control" id='couponId' name='couponId' value="${m.couponId}"></input>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_name'>优惠卷面额</label>
	                                    <div class='controls'>
	                                    	<input  class="form-control" id='couponDetail' name='couponDetail'  value="${m.couponDetail}"></input>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_name'>优惠卷推广链接</label>
	                                    <div class='controls'>
	                                    	<textarea rows="2"  class="form-control" id='couponLink' name='couponLink'> ${m.couponLink}</textarea>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_name'>优惠卷剩余量</label>
	                                    <div class='controls'>
	                                    	<input  class="form-control" id='couponResidue' name='couponResidue' value="${m.couponResidue}"></input>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_name'>优惠卷总量</label>
	                                    <div class='controls'>
	                                    	<input  class="form-control" id='couponNum' name='couponNum' value="${m.couponNum}"></input>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_name'>卷后价</label>
	                                    <div class='controls'>
	                                    	<input  class="form-control" id='couponPay' name='couponPay' value="${m.couponPay}"></input>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_date'>优惠卷开始时间</label>
	                                    <div class='controls' >
	                                     	<div class='datetimepicker input-append form_datetime' id='datetimepicker1'>
						                        <input id="beginDate" name="beginTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='优惠卷开始时间' type="datetime" value='<fmt:formatDate value="${m.beginTm}" pattern="yyyy-MM-dd HH:mm:ss"/>'  >
									            <span class='add-on'>
									              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
									            </span>
						                    </div>
	                                    </div>
	                                </div>
	                                <div class='control-group'>
	                                    <label class='control-label' for='validation_date'>优惠卷结束时间</label>
	                                    <div class='controls'>
	                                        <div class='datetimepicker input-append form_datetime' id='datetimepicker2'>
						                        <input id="endDate" name="endTm"  data-format='yyyy-MM-dd hh:mm:ss' placeholder='优惠卷结束时间' type="datetime" value='<fmt:formatDate value="${m.endTm}" pattern="yyyy-MM-dd HH:mm:ss"/>'  >
									            <span class='add-on'>
									              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
									            </span>
						                    </div>
	                                    </div>
	                                </div>
                                </div>
                                
                   				
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button id="saveBtn" class='btn btn-primary' type="button" onclick="saveComodity()">
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
<script src='${pageContext.request.contextPath}/assets/js/commodity.js' type='text/javascript'></script>
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
		var val=$("#commodityType").val();
		if(val==2)
			{
				$("#coupon").show();
				$("#reback").hide();
				
			}
		if(val==1)
		{
			$("#reback").show();
			$("#coupon").hide();
		}
	}
    
</script>
 