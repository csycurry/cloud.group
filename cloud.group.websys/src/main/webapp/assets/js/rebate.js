/**
 * 
 */


var modify = function()
{
	var earnings = $('#earnings').val();
	if (isEmpty(earnings)) {
		alert('请输入佣金金额');
		return;
	}

	var data = $('#groupBuyForm').serialize();
	httpJsonPost("/backstage/rebate/modify.json",data,successFunc,null);
}

var successList=function(data)
{
	layer.msg('成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/backstage/rebate/page.json?page=1',
			function(r, s, xhr) {

			});
}


var refresh = function()
{
	$('#content').load('/backstage/mission/page?page=1',
			function(r, s, xhr) {

			});
}


var closeFrame = function()
{
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}

var detail = function(buyingId)
{
	layer.open({
	    type: 2,
	    title: '佣金详情',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['80%', '90%'],
	    content: '/backstage/rebate/detail.json?id='+buyingId 
	}); 
//	$('#content').load(getContextPath() +'/group/detail?buyingId='+buyingId,
//			function(r, s, xhr) {
//
//			});
}

var openView = function()
{
	layer.open({
	    type: 2,
	    title: '导入',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['50%', '50%'],
	    content: '/backstage/rebate/import.json' 
	}); 
}


var change = function(buyingId,status)
{
	var data = {"buyingId":buyingId,"status":status};
	httpJsonPost("/group/change",data,successList,null);
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

var up = function(buyingId)
{
	var data = {"id":buyingId};
	httpJsonPost("/backstage/rebate/settle.json",data,successList,null);
}

var up_batch = function()
{
	var data = $("#queryForm").serialize();
	httpJsonPost("/backstage/rebate/settlesearch.json",data,successList,null);
}

function listpage(id) {
	var startTime = $('#startTime').val();
	var endTime = $('#endTime').val();
	if(!isEmpty(startTime)&&isEmpty(endTime))
	{
		alert('请选择结束时间');
		endTime.focus();
		return;
	}
	var pageUrl = "/backstage/rebate/page.json?page="+id;

	$('#content').load(pageUrl, $("#queryForm").serialize(),
			function(r, s, xhr) {

			});
}