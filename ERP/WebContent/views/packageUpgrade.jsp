<!DOCTYPE html>
<html>

<head>
<title>Package Upgrade</title>

<style>
* {
	box-sizing: border-box;
}

.columns {
	float: left;
	width: 25%;
	padding: 10px;
}

.price {
	list-style-type: none;
	border: 1px solid #eee;
	margin: 0;
	padding: 0;
	-webkit-transition: 0.3s;
	transition: 0.3s;
}

.price:hover {
	box-shadow: 0 8px 12px 0 rgba(0, 0, 0, 0.2)
}

.price .header {
	background-color: #111;
	color: white;
	font-size: 16px;
}

.price li {
	border-bottom: 1px solid #eee;
	padding: 15px;
	text-align: center;
}

.price .grey {
	background-color: #eee;
	font-size: 15px;
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 10px 25px;
	text-align: center;
	text-decoration: none;
	font-size: 14px;
}

@media only screen and (max-width: 600px) {
	.columns {
		width: 100%;
	}
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

				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">Packages</div>

						</div>
						<div class="block-content collapse in">



							<!-- <h2 style="text-align: center">Responsive Pricing Tables</h2>
							<p style="text-align: center">Resize the browser window to
								see the effect.</p> -->



							<div class="columns">
								<ul class="price">
									<li class="header" style="background-color: #4CAF50">Basic</li>
									<li class="grey">Free</li>
									<li>1 Company</li>
									<li>1 branch</li>
									<li>1 month trail usage</li>
									<li>HRM module</li>
									<!-- <li class="grey"><a href="#" class="button">Current Package</a></li> -->
								</ul>
							</div>

							<div class="columns">
								<ul class="price">
									<li class="header">Bronze</li>
									<li class="grey">$ 9.99 / year</li>
									<li>2 Company</li>
									<li>5 Branch</li>
									<li>Unlimited User</li>
									<li>All modules</li>
									<li class="grey"><button type="submit"
											class="btn btn-primary">Upgrade</button></li>
									
								</ul>
							</div>

							<div class="columns">
								<ul class="price">
									<li class="header">Silver</li>
									<li class="grey">$ 24.99 / year</li>
									<li>5 Company</li>
									<li>10 Branch</li>
									<li>Unlimited User</li>
									<li>All modules</li>
									<li class="grey"><button type="submit"
											class="btn btn-primary">Upgrade</button></li>
								</ul>
							</div>

							<div class="columns">
								<ul class="price">
									<li class="header">Gold</li>
									<li class="grey">$ 49.99 / year</li>
									<li>Unlimited Company</li>
									<li>Unlimited Branch</li>
									<li>Unlimited User</li>
									<li>All modules</li>
									<li class="grey"><button type="submit"
											class="btn btn-primary">Upgrade</button></li>
								</ul>
							</div>



						</div>
					</div>
					<!-- /block -->
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

</body>

</html>