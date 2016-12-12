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
				    	<h3>用户登陆<a href='javascript:void(0)' class='clos'>x</a></h3>\
				    	<div class='dialogCtn'>\
				    		<div class='form-group'>\
				    		<input type='text' class='form-control username' name='userCode' placeholder='用户名'>\
					    	</div>\
					    	<div class='form-group'>\
					    		<input type='password' name='userPwd' class='form-control password' placeholder='用户密码'>\
					    	</div>\
                            <div style='padding-left:10px' id='captcha'></div>\
					    	<div class='form-group'>\
					    		<div class='checkbox'>\
						    	    <label>\
						    	      	<input class='remember' type='checkbox' checked='checked'> 记住\
						    	      	<a href='Password.aspx' class='pull-right'>忘记密码？</a>\
						    	    </label>\
					    		</div>\
					    	</div>\
					    	<div class='tip'>\
								<div class='success'>登陆</div>\
								<div class='fail'>鐢ㄦ埛鍚嶆垨瀵嗙爜閿欒</div>\
					    	</div>\
					    	<div class='form-group'>\
					    		<a href='javascript:void(0)' class='btn btn-info btn-block login'>登<span></span>陆</a>\
					    	</div>\
					    	<p>还没有创建账户<a href='Register.aspx'>注册</a></p>\
				    	</div>\
				    </form>\
				    <div class='mask'></div>\
				</div>")
            $parent.append($dialog);
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
            $dialog.fadeIn();
            $wrap.addClass('active');
            $close.add($mask).click(function () {
                $dialog.fadeOut(500);
                $wrap.removeClass('active');
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
            	$.post("/user/login.json",$('#loginform').serialize(),function(data){
    				if(data.status==0)
	    				{
	    				alter(data.msg)
	    				}
	    				else
	    				{
		    				alert("登陆成功！");
		    				$fail.hide();
                            window.location.reload(true);
                            return;
	    				}
    			  });
            })
        }

        init();
    }
})(jQuery)