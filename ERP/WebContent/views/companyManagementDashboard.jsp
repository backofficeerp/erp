<!DOCTYPE html>
<html>

<head>
<title>Company Management</title>
<style>
img {
	border-radius: 50%;
}
</style>
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

				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">Manage Company</div>
						<div class="pull-right"><a href="packageUpgrade"><span class="badge badge-warning">Add a New Company &nbsp; &nbsp;<span
										class="icon-plus icon-white"></span></span></a>

                                </div>
					</div>
					<div class="block-content collapse in">
						<div class="span12">
							<div class="block-content collapse in">
								<div class="span3">
									<div class="chart" data-percent="73">73%</div>
									<div class="chart-bottom-heading">
										<a href="companyDetails"><span class="label label-info">Mega
												Infomatix Pvt. Ltd.</span></a>

									</div>
									<!-- <a href="#" class="btn btn-info btn-lg"> <span
										class="icon-plus icon-white"></span> Add New Company
									</a> -->
								</div>
							</div>

							<!-- <a href="companyDetails"><img src="img/3.png" alt="Avatar"
								style="width: 150px"></a> <a href="#"
								class="btn btn-info btn-lg"> <span
								class="icon-plus icon-white"></span> Add New Company
							</a> -->

							<!-- <div class="btn-group pull-right">
								<a href="#"><button class="btn btn-success">
										Add New Company <i class="icon-plus icon-white"></i>
									</button></a> -->


						</div>

					</div>
				</div>


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

	<script>
		$(function() {
			// Easy pie charts
			$('.chart').easyPieChart({
				animate : 1000
			});
		});
	</script>

</body>

</html>