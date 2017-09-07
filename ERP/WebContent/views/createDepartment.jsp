<!DOCTYPE html>
<html>

<head>
<title>Manage Department</title>
<link href="css/common.css" rel="stylesheet" media="screen">
<!-- <script src="resources/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <link href="resources/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
        
        <script src="resources/assets/DT_bootstrap.js"></script> -->



<!-- <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="resources/assets/styles.css" rel="stylesheet" media="screen">
        
        <link href="resources/assets/DT_bootstrap.css" rel="stylesheet" media="screen"> -->
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->


<!-- <script src="resources/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        
        
        
        <script src="resources/vendors/jquery-1.9.1.js"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/vendors/datatables/js/jquery.dataTables.min.js"></script>


        <script src="resources/assets/scripts.js"></script>
        <script src="resources/assets/DT_bootstrap.js"></script>
        -->



</head>

<body>
	<!-- header -->

	<jsp:include page="header.jsp"></jsp:include>

	<!-- /header -->

	<!-- start of container fluid -->
	<div class="container-fluid">
		<!-- row fluid -->
		<div class="row-fluid">
			<!-- span 2-->
			<div class="span2" id="sidebar">

				<!-- side Navigation -->

				<jsp:include page="sideNavigation.jsp"></jsp:include>

				<!-- /side navigation -->
			</div>
			<!-- /span 2-->

			<!-- span 10 -->
			<div class="span10">
				<!-- content -->
				
				

				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">Manage Department</div>
						
						<div class="pull-right"><a href="createCompany"><span class="badge badge-warning">Create a New Company&nbsp; &nbsp;<span
										class="icon-plus icon-white"></span></span></a>
                         </div>
					</div>
					
					<div class="paddingTop paddingLeft">
                                                        <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" name="designationName" placeholder="Department Name">
                                                      </div>
                             </div>
					
										<div class="centerBack centerButton" >
                                        	<button type="submit" class="btn btn-primary">Save</button>
                                            <button type="submit" class="btn" >Cancel </button>
                                        </div>
					<div class="block-content collapse in">
						<div class="span12">
							<div class="table-toolbar">

								<!-- <div class="btn-group pull-right" style="margin-bottom: 10px;">
									<a href="createCompany"><button class="btn btn-success">
											Add New <i class="icon-plus icon-white"></i>
										</button></a>


								</div> -->
							</div>



							<table cellpadding="0" cellspacing="0" border="0"
								class="table table-striped table-bordered" id="example2">
								<thead>
									<tr>
										<th>S/No.</th>
										<th>Department Name</th>
										
										
										<th>Status</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody class="td12">
									<tr>
									
										<td>1</td>
										<td>I.T</td>
										
										<td>active</td>
										<td align="center"><a href=""><i class="icon-edit"></i></a>
										</td>
										
										
																				
									</tr>
								</tbody>

							</table>
						</div>
					</div>
				</div>


				<!-- /content -->


			</div>
			<!-- /span 10 -->
		</div>

		<!-- /row fluid -->
		<!-- footer  -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /footer  -->

	</div>
	<!-- end of container fluid -->

</body>

<style>
.td12{
font-size: 12px;
}
</style>

</html>