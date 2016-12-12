  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ include file="../../common/commonjs.jsp"%>
	<link href="${pageContext.request.contextPath}/assets/umeditor1_2_2/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/umeditor.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/umeditor.config.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/umeditor1_2_2/lang/zh-cn/zh-cn.js"></script>
    <script src='${pageContext.request.contextPath}/assets/js/file.js' type='text/javascript'></script>	
  <div class='container-fluid'>
        <div class='row-fluid' id='content-wrapper'>
            <div class='span12'>
                <div class='row-fluid'>
                    <div class='span12 box'>
                        <div class='box-header blue-background'>
                            <div class='title'>友情链接信息</div>
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
                                    <label class='control-label' for='validation_name'>友情链接标题</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='2' data-rule-required='true' id='title' name='title' value="${m.title}" placeholder='友情链接' type='text' />
                                   		<input type='hidden' name='id' id='id' value='${m.id==null?0:m.id}'/>
                                    </div>
                                </div>
                                
                                <div class='control-group'>
		                            <label class='control-label'>链接</label>
		                            <div class='controls'>
		                                <div class='input-prepend input-append'>
		                                    <input id='link' name="link" value="${m.link}" type='text' />
		                                </div>
		                            </div>
                            	</div>
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button class='btn btn-primary' type="button" onclick="saveBlog()">
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
<script src='${pageContext.request.contextPath}/assets/js/blogroll.js' type='text/javascript'></script>
<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    
</script>
 