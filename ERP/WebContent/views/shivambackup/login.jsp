<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Login</title>
<!-- Bootstrap -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link href="resources/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen">
<link href="resources/assets/styles.css" rel="stylesheet" media="screen">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<script src="resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

<link href="css/common.css" rel="stylesheet" media="screen">

<link href="css/login.css" rel="stylesheet" media="screen">

<script src="js/login.js"></script>

</head>
<body id="login">
	<div class="container">

		<form class="form-signin ">
			<h2 class="form-signin-heading">
				<img src="img/joys.png" id="loginLogo" height="70" width="70" />&nbsp;Please
				sign in
			</h2>
			<input type="text" class="input-block-level" id="uname" name="uname"
				placeholder="Username"> <input type="password"
				class="input-block-level" id="upass" name="upass"
				placeholder="Password">

			<div class="controls">
				<select class="input-x focused" id="userType">
					<option value="userType">User Type</option>
					<option value="superAdmin">Super Admin</option>
					<option value="company">Company</option>
					<option>Branch</option>
				</select> <label id="error" class="errorAlert"
					style="color: #E74C3C; font-weight: bold;">&nbsp;&nbsp;</label>

			</div>

			<label class="checkbox"> <input type="checkbox"
				value="remember-me"> Remember me
			</label> <a onclick="getUrl()" id="logInButton"
				class="btn btn-large btn-primary">Sign in</a>
			<!-- id="logInSubmit" -->
		</form>

	</div>
	<!-- /container -->
	<!--  <script src="resources/vendors/jquery-1.9.1.min.js"></script> -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>

	<script>
		function getUrl() {
			if (userType.value == 'superAdmin') {

				if (uname.value == 'superadmin' & upass.value == 'password') {
					$("#error").html("");
					logInButton.setAttribute('href', 'crustAdministration');
				} else {
					$("#error").html(
							"Please enter the correct username and password");
					/* alert("Please enter the correct username and password"); */
				}

			} else if (userType.value == 'company') {
				if (uname.value == 'company' & upass.value == 'password') {
					$("#error").html("");
					logInButton.setAttribute('href',
							'companyManagementDashboard');
				} else {
					$("#error").html(
							"Please enter the correct username and password");
					/* alert("Please enter the correct username and password"); */
				}

			} else if (userType.value == 'userType') {

				$("#error").html("Please select the User Type");
				/* alert("Please select the User Type"); */
			}

			else {
				$("#error").html(
						"Please enter the correct username and password");
				/* alert("Please enter the correct username and password"); */
				/* logInButton.setAttribute('href', 'login'); */
			}

		}
	</script>

</body>
</html>