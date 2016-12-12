/**
 * 
 */



var saveBlog = function()
{
	var title = $('#title').val();
	if (isEmpty(title)) {
		alert('请输入友情链接名称');
		return;
	}
	var link = $('#link').val();
	if(isEmpty(link))
		{
		alert("请输入友情链接!")
		return ;
		}
	
	var data = $('#groupBuyForm').serialize();
	httpJsonPost("/backstage/blog/save.json",data,successFunc,null);
}

var successList=function(data)
{
	layer.msg('成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/backstage/bolgroll/blogList.json',
			function(r, s, xhr) {

			});
}

var successFunc = function(data)
{
	layer.msg('添加成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/backstage/bolgroll/blogList.json',
			function(r, s, xhr) {

			});
	
}

var refresh = function()
{
	$('#content').load('/backstage/bolgroll/blogList.json',
			function(r, s, xhr) {

			});
}

var openFrame = function()
{
	layer.open({
	    type: 2,
	    title: '添加友情链接',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['500px', '90%'],
	    content: '/backstage/blog/form.json' 
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
	    title: '团购选择',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['80%', '90%'],
	    content: getContextPath() +'/group/detail?buyingId='+buyingId 
	}); 
//	$('#content').load(getContextPath() +'/group/detail?buyingId='+buyingId,
//			function(r, s, xhr) {
//
//			});
}


var up = function(buyingId)
{
	var data = {"id":buyingId};
	httpJsonPost("/backstage/blog/up.json",data,successList,null);
}

var down = function(buyingId)
{
	var data = {"id":buyingId};
	httpJsonPost("/backstage/blog/down.json",data,successList,null);
}

var move = function(buyingId)
{
	var data = {"id":buyingId};
	httpJsonPost("/backstage/blog/sort.json",data,successList,null);
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

