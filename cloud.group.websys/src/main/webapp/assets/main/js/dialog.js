/**
 * 
 */
(function ($) {
    $.fn.dialog = function (option) {
        var defaults = {};
        var obj = $.extend(defaults, option);
        var $parent = this;
        var $dialog, $username, $password, $success, $fail, captchaItem; var code = { isverfiy: false };
        function init() {
            create();
            events();
            iajax();
        }
        function create() {
        	var $dialog = $("<div class='dialog'>\
  					 <form class='wrap form-horizontal' id='loginform'>\
  				    	<h3>用户登录<a href='javascript:void(0)' class='clos'>x</a></h3>\
  				    	<div class='dialogCtn'>\
  				    		<div class='form-group'>\
  				    		<input id='codeuser' type='text' class='form-control username' name='userCode' placeholder='用户名/手机号码/邮箱'>\
  					    	</div>\
  					    	<div class='form-group'>\
  					    		<input type='password' id='pwduser' name='userPwd' class='form-control password' placeholder='请输入密码'>\
  					    	</div>\
                              <div style='padding-left:10px' id='captcha'></div>\
  					    	<div class='form-group'>\
  					    		<div class='checkbox'>\
  						    	    <label>\
  						    	      	<input class='remember' type='checkbox' checked='checked'> 记住密码\
  						    	      	<a href='password.html' class='pull-right'>忘记密码？</a>\
  						    	    </label>\
  					    		</div>\
  					    	</div>\
  					    	<div class='tip'>\
  								<div class='success'>登录</div>\
  					    	</div>\
  					    	<div class='form-group'>\
  					    		<a href='javascript:void(0)' class='btn btn-info btn-block login'>登<span></span>录</a>\
  					    	</div>\
  					    	<p>还没有创建账户<a href='Register.aspx'>注册</a></p>\
  				    	</div>\
  				    </form>\
  				    <div class='mask'></div>\
  				</div>")
              $parent.append($dialog);
        	$.post("/user/cookie.json", {}, function (data) {
        		$("#pwduser").val(data.data.userPwd);
        		$("#codeuser").val(data.data.userCode);
            });
        	
            
        }        
        function events() {
            $dialog = $parent.find('.dialog');
            var $close = $dialog.find('.clos');
            var $mask = $dialog.find('.mask');
            var $wrap = $dialog.find('.wrap');
            $username = $dialog.find('.username');
            $password = $dialog.find('.password');
            $remember = $dialog.find('.remember');
            $success = $parent.find('.tip .success');
            $captcha = $parent.find('#captcha');
            $login = $parent.find('.login');
            $fail = $parent.find('.tip .fail');
            $dialog.fadeIn(0);
            $close.add($mask).click(function () {
                $dialog.fadeOut(500);
                $(window).off(".dialog");
                $dialog.remove();
            })
            $username.add($password).focus(function () {
                $success.add($fail).hide();
            })
            $(window).on("keydown.dialog", function (e) {
                var keyValue = e.charCode || e.which || e.keyCode;
                if (keyValue == 13) {
                    $login.trigger("click");
                }
            })            
            Geetcaptcha('#captcha', code);
        }
        function iajax() {
            var $btn = $dialog.find('.btn');
            $btn.click(function () {
            	if (code.isverfiy) {
            	$.post("/user/login.json",$('#loginform').serialize(),function(data){
    				if(data.status==0)
	    				{
    					alert(data.msg);
    					return;
	    				}
	    				else
	    				{
	    	            	if($(".remember").attr("checked")=="checked")
	    					{
	    						$.post("/user/rememberpwd.json",$('#loginform').serialize(),function(data){
	    							
	    						});
	    					}
		    				alert("登录成功！");
		    				$fail.hide();
                            window.location.reload(true);
                            return;
	    				}
    			  });
            	
            	}else
            		{
            		alert("请先验证！");
            		}
            })
        }

        init();
    }
})(jQuery)