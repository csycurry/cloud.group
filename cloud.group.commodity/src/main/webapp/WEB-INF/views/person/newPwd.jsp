<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<link href="/assets/index/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/common-user.css" type="text/css" rel="stylesheet" />
	<link href="/assets/main/css/main-user.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="assets/index/js/jquery-2.1.4.min.js"></script>
<link href="/assets/main/css/user.css" type="text/css" rel="stylesheet" />   
    <title>

</title>
</head>
<body>
	<%@include file="user-header.jsp"%>
    <div class="panel panel-default" style="padding: 20px">
        <div class="panel-body">
            <ul class="nav nav-tabs" id="myTab">
                <li class=""><a href="#edit-basic" data-toggle="tab">绑定手机号</a></li>
                <li class="active"><a href="#edit-password" data-toggle="tab">密码修改</a></li>
            </ul>
            <div class="tab-content profile-edit-tab-content editMail">
                <div id="edit-basic" class="tab-pane">
                <form id="userform">
                    <div class="form-group">
                        <label for="phone" class="col-sm-2 control-label">手机号码</label>
                        <div class="col-sm-10">
                            <input name="userMobile" type="text" value="${user.userMobile}" id="ctl00_ContentPlaceHolder1_txtphone" class="form-control" placeholder="请输入手机号码" />
                        </div>
                    </div>
                    <div id="ctl00_ContentPlaceHolder1_divVerify">
                        <div class="space-4"></div>
                        <div class="form-group">
                            <label id="ctl00_ContentPlaceHolder1_lbverify" class="col-sm-2 control-label">短信验证码</label>
                            <div class="col-sm-6">
                                <input name="code" type="text" id="ctl00_ContentPlaceHolder1_txtphoneverify" class="form-control" />
                            </div>
                            <div class="col-sm-4" style="padding-right: 0px; padding-left: 0px">
                                <input type="button" id="getting" value="发送验证码" class="btn btn-info" />
                            </div>
                        </div>
                    </div>                    
                    <div class="space-4"></div>
                    </form>
                </div>
                <div id="edit-password" class="tab-pane active">
                <form id="pwdForm">
                    <div class="form-group">
                        <label for="txtoldpsd1" class="col-sm-2 control-label">原密码</label>
                        <div class="col-sm-10">
                            <input name="userPwdOld" type="password" id="ctl00_ContentPlaceHolder1_txtoldpsd1" class="form-control" />
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="txtnewpsd1" class="col-sm-2 control-label">新密码</label>

                        <div class="col-sm-10">
                            <input name="userPwd" type="password" id="ctl00_ContentPlaceHolder1_txtnewpsd1" class="form-control" />
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label for="txtnewpsd2" class="col-sm-2 control-label">确认密码</label>
                        <div class="col-sm-10">
                            <input name="ctl00$ContentPlaceHolder1$txtnewpsd2" type="password" id="ctl00_ContentPlaceHolder1_txtnewpsd2" class="form-control" />
                        </div>
                    </div>
                    </form>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 text-center">
                    
                </div>
            </div>
            <div class="row" style="margin-top: 10px">
                <div class="col-md-12 text-center">
                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnUserInfoSave" value="保存" id="ctl00_ContentPlaceHolder1_btnUserInfoSave" class="btn btn-primary text-center" />
                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hidnowtabs" id="ctl00_ContentPlaceHolder1_hidnowtabs" value="1" />
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="assets/main/js/jquery.cookie.js"></script>
    <script type="text/javascript">
        var check = true;
        $(function () {

            function init() {
               /*   var index = $.getUrlParam('type');
                if (!index) index = $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val() - 1;
                $('#myTab a:eq(' + index + ')').tab('show');
                if (index == 1) {
                    $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').hide();
                    $('#' + 'ctl00_ContentPlaceHolder1_divalert').hide(); */ 
               /*  } */
            }
            init();

            function checkphone()
            {
                var phone = $('#ctl00_ContentPlaceHolder1_txtphone');
                var lbphone = phone.parent();
                lbphone.children('span').remove();
                if (phone != null && phone.val().length > 0) {
                    var reg = /^[1][0-9]{10}$/;
                    isok = reg.test(phone.val());
                    if (!isok) {
                        $("<span class=\"label label-warning\">请填写正确的手机格式！</span>").appendTo(lbphone);
                        check = false;
                        return false;
                    }
                    else return true;
                }
            }


            $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
                if ($(e.target).attr("href") == "#edit-setting") {
                    $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').hide(); $('#' + 'ctl00_ContentPlaceHolder1_divalert').hide();
                }
                else {
                    $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').show(); $('#' + 'ctl00_ContentPlaceHolder1_divalert').show();
                }
            });


            $('#ctl00_ContentPlaceHolder1_txtphone').blur(function () {
                return checkphone();
            });


            $('#' + 'ctl00_ContentPlaceHolder1_btnUserInfoSave').bind("click", function () {

                if ($("#edit-basic").hasClass("active")) {
                    if (!check) return false;         
                    if($("#ctl00_ContentPlaceHolder1_txtphoneverify").val()==null) {
                    	alert("请输入验证码!");
                    	return false;
                    }
                    $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val(1);
                    $.post("/user/modify.json",$('#userform').serialize(),function(data){
                    	if(data.status==0)
                    		{
                    		alert(data.msg);
                    		}
                    	else
                    		{
                    		alert("绑定成功!");
                    		}
      			  });
                }
                    else if ($("#edit-password").hasClass("active")) {
                    	if($("#ctl00_ContentPlaceHolder1_txtnewpsd1").val()!=$("#ctl00_ContentPlaceHolder1_txtnewpsd1").val())
                    		{
                    		alert("两次输入密码不符");
                    		return;
                    		}
                    	$.post("/user/pwd.json",$('#pwdForm').serialize(),function(data){
                        	if(data.status==0)
                        		{
                        		alert(data.msg);
                        		}
                        	else
                        		{
                        		alert("修改成功!");
                        		}
          			  });
                        $('#' + 'ctl00_ContentPlaceHolder1_hidnowtabs').val(3);
                        
                }
                return true;
            });

            /*点击改变按钮状态*/
            $('#getting').click(function () {
                /*防刷新：检测是否存在cookie*/
                var isright=checkphone();
                if (isright) {
                    if ($.cookie("captcha")) {
                        var count = $.cookie("captcha");
                        var btn = $('#getting');
                        btn.val(count + '秒后可重新获取').attr('disabled', true).css('cursor', 'not-allowed');
                        var resend = setInterval(function () {
                            count--;
                            if (count > 0) {
                                btn.val(count + '秒后可重新获取').attr('disabled', true).css('cursor', 'not-allowed');
                                $.cookie("captcha", count, { path: '/', expires: (1 / 86400) * count });
                            } else {
                                clearInterval(resend);
                                btn.val("获取验证码").removeClass('disabled').removeAttr('disabled style');
                            }
                        }, 1000);
                    }
                    $.post("/sms.json",{"mobile":$('#ctl00_ContentPlaceHolder1_txtphone').val()},function(data){
        			  });
                    var btn = $(this);
                    var count = 60;
                    var resend = setInterval(function () {
                        count--;
                        if (count > 0) {
                            btn.val(count + "秒后可重新获取");
                            $.cookie("captcha", count, { path: '/', expires: (1 / 86400) * count });
                        } else {
                            clearInterval(resend);
                            btn.val("获取验证码").removeAttr('disabled style');
                        }
                    }, 1000);
                    btn.attr('disabled', true).css('cursor', 'not-allowed');
                }
            });
        })

         

    </script>

                </div>
            </div>
        </section>
        
<%@include file="footer.jsp"%>
</body>
</html>
