/**
 * 
 */



var saveGroup = function()
{
	var data = $('#userForm').serialize();
	httpJsonPost("/backstage/user/modify.json",data,successFunc,null);
}

var successList=function(data)
{
	layer.msg('成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/backstage/user/userList.json?page=1',
			function(r, s, xhr) {

			});
}

var successFunc = function(data)
{
	layer.msg('保存成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	refresh();
}

var refresh = function()
{
	$('#content').load('/backstage/user/userList.json?page=1',
			function(r, s, xhr) {

			});
}

var closeFrame = function()
{
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}

var openDetail = function(userId)
{
	layer.open({
	    type: 2,
	    title: '用户修改',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['80%', '90%'],
	    content:'/backstage/user/detail.json?userId='+userId 
	}); 
}


$('.form_datetime').datetimepicker({
    //language:  'fr',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	forceParse: 0,
    showMeridian: 1,
    initialDate:null
}).on("changeDate",function(ev){
	var i = ev.target.getElementsByTagName("input")[0];
	if(i.id=="buyingStartTime")
		{
		var time = $("#showTime").val();
		if(isEmpty(time))
			{
			$("#showTime").val($("#buyingStartTime").val());
			}
		}
});


function listpage(id) {
	
	var pageUrl = "/backstage/user/userList.json?page="+id;

	$('#content').load(pageUrl, $("#queryForm").serialize(),
			function(r, s, xhr) {

			});
}