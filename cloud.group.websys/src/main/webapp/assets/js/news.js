/**
 * 
 */



var saveNews = function()
{
	var title = $('#title').val();
	if (isEmpty(title)) {
		alert('请输入新闻标题');
		return;
	}

	var data =  $.param({"content":UM.getEditor('myEditor').getContent()}) + '&' +$('#groupBuyForm').serialize();
	httpJsonPost("/backstage/news/add.json",data,successFunc,null);
}

var successList=function(data)
{
	layer.msg('成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/backstage/mission/page?page=1',
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
			'/backstage/news/form.json',
			function(r, s, xhr) {

			});
	
}

var refresh = function()
{
	$('#content').load('/backstage/news/page.json?page=1',
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

var change = function(buyingId,status)
{
	var data = {"buyingId":buyingId,"status":status};
	httpJsonPost("/group/change",data,successList,null);
}


function listpage(id) {
	var pageUrl = "/backstage/news/page.json?page="+id;

	$('#content').load(pageUrl, $("#queryForm").serialize(),
			function(r, s, xhr) {

			});
}