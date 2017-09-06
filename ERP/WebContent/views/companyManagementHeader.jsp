<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"></link>
	
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<link href="resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">

<link href="resources/assets/styles.css" rel="stylesheet" media="screen">

<link href="resources/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
	


<script src="resources/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>

<script src="resources/vendors/jquery-1.9.1.js"></script>

<script src="resources/bootstrap/js/bootstrap.min.js"></script>

<script src="resources/vendors/datatables/js/jquery.dataTables.min.js"></script>


<script src="resources/assets/scripts.js"></script>

<script src="resources/assets/DT_bootstrap.js"></script>

<script
	src="resources/vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>


<script
	src="resources/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>

<script src="resources/vendors/ckeditor/ckeditor.js"></script>

<script src="resources/vendors/ckeditor/adapters/jquery.js"></script>

<script type="text/javascript"
	src="resources/vendors/tinymce/js/tinymce/tinymce.min.js"></script>
	
	<link href="resources/vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
	<script src="resources/vendors/easypiechart/jquery.easy-pie-chart.js"></script>


<link href="css/common.css" rel="stylesheet" media="screen">

<script>
	$(function() {
		// Bootstrap
		$('#bootstrap-editor').wysihtml5();

		// Ckeditor standard
		$('textarea#ckeditor_standard').ckeditor(
				{
					width : '98%',
					height : '150px',
					toolbar : [
							{
								name : 'document',
								items : [ 'Source', '-', 'NewPage', 'Preview',
										'-', 'Templates' ]
							}, // Defines toolbar group with name (used to create voice label) and items in 3 subgroups.
							[ 'Cut', 'Copy', 'Paste', 'PasteText',
									'PasteFromWord', '-', 'Undo', 'Redo' ], // Defines toolbar group without name.
							{
								name : 'basicstyles',
								items : [ 'Bold', 'Italic' ]
							} ]
				});
		$('textarea#ckeditor_full').ckeditor({
			width : '98%',
			height : '150px'
		});
	});

	// Tiny MCE
	tinymce
			.init({
				selector : "#tinymce_basic",
				plugins : [
						"advlist autolink lists link image charmap print preview anchor",
						"searchreplace visualblocks code fullscreen",
						"insertdatetime media table contextmenu paste" ],
				toolbar : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
			});

	// Tiny MCE
	tinymce
			.init({
				selector : "#tinymce_full",
				plugins : [
						"advlist autolink lists link image charmap print preview hr anchor pagebreak",
						"searchreplace wordcount visualblocks visualchars code fullscreen",
						"insertdatetime media nonbreaking save table contextmenu directionality",
						"emoticons template paste textcolor" ],
				toolbar1 : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
				toolbar2 : "print preview media | forecolor backcolor emoticons",
				image_advtab : true,
				templates : [ {
					title : 'Test template 1',
					content : 'Test 1'
				}, {
					title : 'Test template 2',
					content : 'Test 2'
				} ]
			});
</script>

</head>
<body>

<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">Admin Panel</a>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="icon-user"></i> John <i class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="#">Profile</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="logout">Logout</a></li>
							</ul></li>
					</ul>
					<ul class="nav">
						<li><a href="companyManagementDashboard">Dashboard</a></li>
						<!-- <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle">Manage Company <b class="caret"></b>

                                </a>
                                <ul class="dropdown-menu" id="menu1">
                                    <li>
                                        <a href="addCompany">Add Company</a>
                                    </li>
                                    <li>
                                        <a href="companyManagementDashboard">Manage Branches</a>
                                    </li>
                                    <li>
                                        <a href="companyManagementDashboard">Create a New Branch</a>
                                    </li>
                                    
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                </ul>
                            </li> -->
						
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

</body>
</html>