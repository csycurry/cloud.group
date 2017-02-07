/**
 * 
 */



var saveGroup = function()
{
	var groupBuyingTitle = $('#groupBuyingTitle').val();
	if (isEmpty(groupBuyingTitle)) {
		alert('请输入团购标题');
		return;
	}
	var supplierId = $('#supplierId').val();
	if(isEmpty(supplierId))
		{
		alert("请选择已存在的供应商!")
		return ;
		}
	var buyingStartTime = $('#buyingStartTime').val();
	if (isEmpty(buyingStartTime)) {
		alert('请选择团购开始时间');
		return;
	}
	var buyingEndTime = $('#buyingEndTime').val();
	if (isEmpty(buyingEndTime)) {
		alert('请选择团购结束时间');
		return;
	}
	var groupBuyingPrice = $('#groupBuyingPrice').val();
	if (isEmpty(groupBuyingPrice)) {
		alert('请填写团购价');
		return;
	}
	var quotaMin = $('#quotaMin').val();
	if (isEmpty(quotaMin)) {
		alert('请填写团购下限');
		return;
	}
	var data =  $.param({"detail":UM.getEditor('myEditor').getContent()}) + '&' +$('#groupBuyForm').serialize();
	httpJsonPost("/group/save",data,successFunc,null);
}

var successList=function(data)
{
	layer.msg('成功', {
		icon : 1,
		time : 1000
	//2秒关闭（如果不配置，默认是3秒）
	});
	$('#content').load(
			'/cloud.group.websys/group/groupList?page=1',
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
			'/cloud.group.websys/groupFrom',
			function(r, s, xhr) {

			});
	
}

var refresh = function()
{
	$('#content').load('/cloud.group.websys/group/groupList?page=1',
			function(r, s, xhr) {

			});
}

var openFrame = function()
{
	layer.open({
	    type: 2,
	    title: '区域选择',
	    shadeClose: true,
	    shade: 0.8,
	    area: ['380px', '90%'],
	    content: getContextPath()+ '/group/areaFrame' 
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

var buyView = function(buyingId)
{
	layer.open({
	    type: 2,
	    title: '购买',
	    shadeClose: false,
	    shade: 0.8,
	    area: ['40%', '50%'],
	    content: getContextPath() +'/group/buy/'+buyingId 
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


function listpage(id) {
	
	var pageUrl = "/backstage/user/userList.json?page="+id;

	$('#content').load(pageUrl, $("#queryForm").serialize(),
			function(r, s, xhr) {

			});
}