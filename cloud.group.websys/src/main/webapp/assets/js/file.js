/**
 * 
 */
var result = 20;
$(function() {
		$('#file_upload')
		.uploadify(
		{
			'swf' : '/assets/uploadify/uploadify.swf',
			'uploader' : '/common/kindeditor/apis/image/upload.json',
			'height' : 25,
			'whith' : 120,
			'auto' : false,
			'fileObjName' : 'file',
			'buttonText' : '选择文件...',
			'fileTypeExts' : '*.*',
			'multi' : false,
			'method' : 'post',
			'debug' : false,
			'onUploadStart' : function(file) {
				var param = {};
				param.picHref = $('#file_upload_href').val();
				$("#file_upload").uploadify("settings",
						"formData", param);
			},
			'onUploadSuccess' : function(file, data, response) {
				result += 1;
				var ss = "<div id="+result+"><a href='"+data+"'>"
						+ data
						+ "</a> <a href='#' id="
						+ result
						+ " onclick='deloperate(this.id);'>删除</a></div>"
				$("#filehiddenresult").append(ss);
				$("#thumbnailUrl").val(data);


			},
			'onUploadError' : function(file, errorCode,
					errorMsg, errorString) {
				alert('文件： ' + file.name + ' 上传失败 '
						+ errorString + errorMsg);
			}

		});
		
		
		$('#image_upload')
			.uploadify(
			{
				'swf' : '/assets/uploadify/uploadify.swf',
				'uploader' : '/common/kindeditor/apis/image/upload.json',
				'height' : 25,
				'whith' : 120,
				'auto' : false,
				'fileObjName' : 'file',
				'buttonText' : '选择文件...',
				'fileTypeExts' : '*.*',
				'multi' : false,
				'method' : 'post',
				'debug' : false,
				'onUploadStart' : function(file) {
					var param = {};
					param.picHref = $('#file_upload_href').val();
					$("#file_upload").uploadify("settings",
							"formData", param);
				},
				'onUploadSuccess' : function(file, data, response) {
					result += 1;
					var ss = "<div id="+result+"><a href='"+data+"'>"
							+ data
							+ "</a> <a href='#' id="
							+ result
							+ " onclick='deloperate(this.id);'>删除</a></div>"
					$("#imagehiddenresult").append(ss);
					$("#imageUrl").val(data);

				},
				'onUploadError' : function(file, errorCode,
						errorMsg, errorString) {
					alert('文件： ' + file.name + ' 上传失败 '
							+ errorString + errorMsg);
				}

			});
		
		 $('#excel_upload')
			.uploadify(
			{
				'swf' : '/assets/uploadify/uploadify.swf',
				'uploader' : '/backstage/mission/importExcel.json',
				'height' : 25,
				'whith' : 120,
				'auto' : false,
				'fileObjName' : 'file',
				'buttonText' : '选择文件...',
				'fileTypeExts' : '*.*',
				'multi' : false,
				'method' : 'post',
				'debug' : false,
				'onUploadStart' : function(file) {
					var params = $('#groupBuyForm').serializeArray();
					for(var i=0;i<params.length;i++){
						this.addPostParam(params[i].name,params[i].value);
					}
					this.addPostParam("missionContent",UM.getEditor('myEditor').getContent());
//					param.picHref = $('#file_upload_href').val();
					$("#file_upload").uploadify("settings",
							"formData", params);
				},
				'onUploadSuccess' : function(file, data, response) {
					successFunc(data)
					},
				'onUploadError' : function(file, errorCode,
						errorMsg, errorString) {
					alert('文件： ' + file.name + ' 上传失败 '
							+ errorString + errorMsg);
				}

			});		
});

function deloperate(id) {
	$("#" + id).remove();
	$("#" + id).remove();
	$("#" + id).remove();
}

function del() {
	$("#imageDiv").remove();
}