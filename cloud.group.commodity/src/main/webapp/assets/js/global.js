/**
 * 
 */
var getContextPath = function() {
	if(isEmpty($('#ContextPath').val()))
		return "/cloud.group.websys";
	return $('#ContextPath').val();
}

var getImageUrl=function()
{	
	$.ajax({
	url : getContextPath() +"/supplier/getImageUrlShow",
	data :'',
	type : 'get',
	dataType : 'json',
	async : false,
	cache : false,
	success : function(data) {
		alert(data);
		return data;
	},
	error : function() {}
});
}

var httpJsonPost = function(pUrl, pData, successCallback, errorCallback) {
	$.ajax({
		url :  pUrl,
		data : pData,
		type : 'POST',
		dataType : 'json',
		async : false,
		cache : false,
		success : function(data) {successCallback(data)},
		error : function() {}
	});
}

var isEmpty = function(content) {
	if (typeof(content) == 'undefined') {
		return true;
	}
	
	if (content == null || content == '') {
		return true;
	}
	
	return false;
}