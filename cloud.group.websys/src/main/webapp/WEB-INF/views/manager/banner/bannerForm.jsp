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
                                <span>banner管理</span>
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
                                        banner管理
                                    </li>
                                    <li class='separator'>
                                        <i class='icon-angle-right'></i>
                                    </li>
                                    <li class='active'>banner管理</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-header blue-background'>
                            <div class='title'>banner信息</div>
                            <div class='actions'>
                                <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                </a>
                                <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                </a>
                            </div>
                        </div>
                       
                        <div class='box-content'>
                         		<div id="group">
				                <c:forEach items="${list}" var="l" varStatus="status">
				                	<div class='control-group'>
					                    <label class='control-label'>轮播图</label>
					                     <div class='controls'>
					                     		<input class="idTxt"	type="hidden" value="${l.id}"/>
					                     		<img class="imgUrl" alt="" src="${l.url}">
					                     		<input class="col-md-12 linkTxt"  name='url' value="${l.url}" type="text" />
                                        		<input class="col-md-12 link"  type="file" />
                                        		<input type="button" value="上传" onclick="uploadFunction(${status.index})">
                                    	 </div>
									</div>
									<div class='control-group'>
	                                    <label class='control-label' for='validation_name'>链接地址</label>
	                                    <div class='controls'>
	                                        <input class="missionLink"   name='missionLink' value="${l.link}" placeholder='链接地址' type='text' />
	                                    </div>
	                                </div>
				                </c:forEach>
				                </div>
				                <input type="button" value="add" onclick="addItem()">
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button class='btn btn-primary' type="button" onclick="save()">
                                        <i class='icon-save'></i>
                                        保存
                                    </button>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <script type="text/javascript">
//文件上传
 function uploadFunction(index) {
     var uploadFile = $(".link").get(index).files[0]; //获取文件对象

     // FormData 对象
     var form = new FormData();
     form.append("file", uploadFile); // 文件对象
     var uploadUrl ="/common/kindeditor/apis/image/upload.json";
     $.ajax({
         cache: false,
         type: "POST",
         url: uploadUrl,
         contentType: false, 
         processData: false, 
         data: form,
         error: function(request) {
             alert("Connection error");
         },
         success: function(data) {
        	 $(".linkTxt").eq(index).val(data.data);
        	 $(".imgUrl").eq(index).attr('src',data.data);
         }
     });
 }
 
 function addItem() {
	var l = $(".imgUrl").length;
	if(l>5)
		{
		alert("轮播图最多不能超过5张！");
		return;
		}
	$("#group").append("<div class='control-group'><label class='control-label'>轮播图</label><div class='controls'><img class='imgUrl' alt='' src=''><input class='col-md-12 linkTxt' name='url'  type='text' />"+		
	"<input class='col-md-12 link'   type='file' /><input type='button' value='上传' onclick='uploadFunction("+l+")'></div></div>");
	$("#group").append("<div class='control-group'> <label class='control-label' for='validation_name'>地址</label>"+
    "<div class='controls'><input class='missionLink' data-rule-minlength='2' data-rule-required='true' name='missionLink' value='' placeholder='链接地址' type='text' /></div></div>");
}
 
 function save() {
	 var jsonArr = new Array();             
     for ( var j = 0; j < $(".imgUrl").length; j++) {                 
       var jsonObj = {};
       if($(".idTxt").eq(j)!=null)
    	   {
    	   jsonObj["id"]=$(".idTxt").eq(j).val();
    	   }
        
       jsonObj["title"]="xxxx";                 
       jsonObj["url"]=$(".linkTxt").eq(j).val();                 
       jsonObj["link"]=$(".missionLink").eq(j).val();                 
       jsonObj["type"]=1;                 
       jsonObj["status"]=1; 
       jsonArr.push(jsonObj)             
     }
     $.ajax({
         type:"POST", //请求方式  
         url:"/backstage/banner/save.json", //请求路径  
         cache: false,   
         contentType: "application/json",
         dataType: 'json',   //返回值类型 
         data:JSON.stringify(jsonArr),    
         success:function(data){        
			alert("保存成功");
			$('#content').load(
					'/backstage/banner/view_list.json',
					function(r, s, xhr) {

					});
         }  
     });
     
}
 </script>