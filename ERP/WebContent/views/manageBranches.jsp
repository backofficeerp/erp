<!DOCTYPE html>
<html>

<head>
<title>Manage Branches</title>

</head>

<body>
	<!-- header -->

	<jsp:include page="companyManagementHeader.jsp"></jsp:include>

	<!-- /header -->

	<!-- start of container fluid -->
	<div class="container-fluid">
		<!-- row fluid -->
		<div class="row-fluid">
			<!-- span 2-->
			<div class="span2" id="sidebar">

				<!-- side Navigation -->

				<jsp:include page="companyManagementSideNavigation.jsp"></jsp:include>

				<!-- /side navigation -->
			</div>
			<!-- /span 2-->

			<!-- span 10 -->
			<div class="span10">
				<!-- content -->


				<!-- content -->

				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">Manage Branches</div>
						<div class="pull-right">
							<a href="createBranch"><span class="badge badge-warning">Create
									a New Branch&nbsp; &nbsp;<span class="icon-plus icon-white"></span>
							</span></a>

						</div>
						<!-- <div class="btn-group pull-right" style="margin-bottom: 10px;">
                                        <button data-toggle="dropdown" class="btn dropdown-toggle"><i class="icon-cog" ></i>&nbsp;<span class="caret"></span></button>
                                         <ul class="dropdown-menu">
                                            <li><a href="#">Print</a></li>
                                            <li><a href="#">Save as PDF</a></li>
                                            <li><a href="#">Export to Excel</a></li>
                                         </ul>
                                      </div> -->
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
										<th>Added Date</th>
										<th>Company Name</th>
										<th>Branch Name</th>

										<th>Mobile No.</th>
										<th>Address</th>
										<th>Status</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody class="td12">
									<tr>
										<td>1</td>
										<td>08-01-2017</td>
										<td>M.I. Soft Pvt. ltd.</td>
										<td>M.I. Soft Pvt. ltd., Hazratganj Branch</td>

										<td>8565867717</td>
										<td>Lucknow, India</td>
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


				<!-- /content -->


			</div>
			<!-- /span 10 -->
		</div>

		<!-- /row fluid -->
		<!-- footer  -->
		<jsp:include page="companyManagementFooter.jsp"></jsp:include>
		<!-- /footer  -->

	</div>
	<!-- end of container fluid -->

</body>

</html>