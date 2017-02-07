/**
 * 
 */



var successList=function(data)
{
	layer.msg('成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/backstage/account/page.json?page=1',
			function(r, s, xhr) {

			});
}

var successFunc = function(data)
{
	if(data.staus==0)
		{
		layer.msg(data.msg, {
			icon : 1,
			time : 1000
		//2秒关闭（如果不配置，默认是3秒）
		});
		}
	else{
		layer.msg('提现完成', {
			icon : 1,
			time : 1000
		//2秒关闭（如果不配置，默认是3秒）
		});
	}
	
	$('#content').load(
			'/backstage/account/page.json?page=1',
			function(r, s, xhr) {

			});
	
}

var refresh = function()
{
	$('#content').load('/backstage/account/page.json?page=1',
			function(r, s, xhr) {

			});
}


var closeFrame = function()
{
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}

var pay = function(accountId)
{
	var data = {"id":accountId};
	httpJsonPost("/backstage/account/pay.json",data,successFunc,null);
	
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
})


function listpage(id) {
	var startTime = $('#startTime').val();
	var endTime = $('#endTime').val();
	if(!isEmpty(startTime)&&isEmpty(endTime))
	{
		alert('请选择结束时间');
		endTime.focus();
		return;
	}
	var pageUrl = "/backstage/account/page.json?page="+id;

	$('#content').load(pageUrl, $("#queryForm").serialize(),
			function(r, s, xhr) {

			});
}

var pay_batch = function()
{
	var data = $("#queryForm").serialize();
	httpJsonPost("/backstage/account/paysearch.json",data,successList,null);
}