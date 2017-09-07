<!DOCTYPE html>
<html>

<head>
<title>Manage Designation</title>
<link href="css/common.css" rel="stylesheet" media="screen">
<!-- <script src="resources/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <link href="resources/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
        
        <script src="resources/assets/DT_bootstrap.js"></script> -->

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
						<div class="muted pull-left">Manage Designation
						</div>
						
					</div>
					
					<form action="createDesignationProcess" method="post">
							<div class="paddingTop paddingLeft">
                                         <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" name="designationName" placeholder="Designation Name">
                                          </div>
                             </div>
										
							<div class="centerBack centerButton" >
                                        	<button type="submit" class="btn btn-primary">Save</button>
                                            <button type="submit" class="btn" >Cancel </button>
                                            
                            </div>
                            </form>
                            
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
										<th>Designation Name</th>
										<th>Status</th>
										<th>Actions</th>
										
									</tr>
								</thead>
								
								<tbody class="td12">
									<tr>
										<td>1</td>
										<td>H.R</td>
										<td>active</td>
										<td ><a href=""><i class="icon-edit"></i></a>
										</td>
										
									</tr>
									
									
									<tr>
										<td>2</td>
										<td>H.R</td>
										<td>active</td>
										<td ><a href=""><i class="icon-edit"></i></a>
										</td>
										
									</tr>
									
									<tr>
										<td>3</td>
										<td>H.R</td>
										<td>active</td>
										<td ><a href=""><i class="icon-edit"></i></a>
										</td>
										
									</tr>
									
									
									<tr>
										<td>4</td>
										<td>H.R</td>
										<td>active</td>
										<td ><a href=""><i class="icon-edit"></i></a>
										</td>
										
									</tr>
									
									
									<tr>
										<td>5</td>
										<td>H.R</td>
										<td>active</td>
										<td ><a href=""><i class="icon-edit"></i></a>
										</td>
										
									</tr>
									
									
									<tr>
										<td>6</td>
										<td>H.R</td>
										<td>active</td>
										<td ><a href=""><i class="icon-edit"></i></a>
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