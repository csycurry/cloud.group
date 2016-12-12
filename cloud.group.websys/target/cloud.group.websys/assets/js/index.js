/**
 * 
 */
$(function() {

	$('.groupsend').click(
			function() {

				$('#content').load('/cloud.group.websys/groupFrom',
						function(r, s, xhr) {

						});
			});
	$('.missonForm').click(
			function() {

				$('#content').load('/backstage/mission/missionForm.json',
						function(r, s, xhr) {

						});
			});

	$('.userList').click(
			function() {

				$('#content').load('/backstage/user/userList.json?page=1',
						function(r, s, xhr) {

						});
			});
	$('#missionList').click(
			function() {
				$('#content').load('/backstage/mission/page.json?page=1',
						function(r, s, xhr) {

						});
			});

	$('#signList').click(
					function() {
						$('#content').load('/backstage/sign/page.json?page=1',
								function(r, s, xhr) {

								});
					});
	$('.feedback').click(
			function() {
				$('#content').load('/cloud.group.websys/user/feedBack',
						function(r, s, xhr) {

						});
			});

	$('.meaasgeList').click(
			function() {
				$('#content').load('/backstage/message/page.json?page=1',
						function(r, s, xhr) {

						});
			});

	$('#rebatelist').click(
			function() {
				$('#content').load('/backstage/rebate/page.json?page=1',
						function(r, s, xhr) {

						});
			});

	$('#newslist').click(
			function() {
				$('#content').load('/backstage/news/page.json?page=1',
						function(r, s, xhr) {

						});
			});

	$('.newsForm').click(
			function() {

				$('#content').load('/backstage/news/form.json',
						function(r, s, xhr) {

						});
			});
	
	$('#bannerlist').click(
			function() {
				$('#content').load('/backstage/banner/view_list.json',
						function(r, s, xhr) {

						});
			});
			
			$('#cashList').click(
					function() {

						$('#content').load('/backstage/account/page.json?page=1',
								function(r, s, xhr) {

								});
					});
			
			$('.blog').click(
					function() {

						$('#content').load('/backstage/bolgroll/blogList.json',
								function(r, s, xhr) {

								});
					});

});