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
			'/backstage/message/page.json?page=1',
			function(r, s, xhr) {

			});
}



var refresh = function()
{
	$('#content').load('/backstage/message/page.json?page=1',
			function(r, s, xhr) {

			});
}


var closeFrame = function()
{
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}

var openDetail = function(buyingId)
{
	layer.open({
	    type: 2,
	    title: '任务详情',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['80%', '90%'],
	    content: '/backstage/mission/detail.json?id='+buyingId 
	}); 
//	$('#content').load(getContextPath() +'/group/detail?buyingId='+buyingId,
//			function(r, s, xhr) {
//
//			});
}

var openView = function(buyingId)
{
	layer.open({
	    type: 2,
	    title: '预览',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['80%', '90%'],
	    content: getContextPath() +'/group/preview?buyingId='+buyingId 
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
	var startTime = $('#startTime').val();
	var endTime = $('#endTime').val();
	if(!isEmpty(startTime)&&isEmpty(endTime))
	{
		alert('请选择结束时间');
		endTime.focus();
		return;
	}
	var pageUrl = "/backstage/message/page.json?page="+id;

	$('#content').load(pageUrl, $("#queryForm").serialize(),
			function(r, s, xhr) {

			});
}