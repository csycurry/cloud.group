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
	layer.msg('操作成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/backstage/news/page.json?page=1',
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
	    content: '/backstage/news/detail.json?newsId='+buyingId 
	}); 
}

var remove = function(id)
{
	layer.open({
		  content: '是否确定删除',
		btn: ['是', '否'],
		  yes: function(index, layero){
			  var data = {"newsId":id};
			  httpJsonPost("/backstage/news/remove.json",data,successList,null);
		  },
		no: function(index, layero){
		    layer.close(index); 
		  },
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
	var pageUrl = "/backstage/news/page.json?page="+id;

	$('#content').load(pageUrl, $("#queryForm").serialize(),
			function(r, s, xhr) {

			});
}