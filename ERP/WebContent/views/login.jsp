<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.mi.resource_util.HibernateUtil"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Login</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/login.css" rel="stylesheet" media="screen">
<link href="css/common.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="css/myresponsive.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/parsley.min.js"></script>
<script src="js/login.js"></script>

</head>
<body>
	<div class="col-xs-12 col-sm-12 premove bgImg">
		<div class="container">
			<div
				class="col-xs-12 col-sm-offset-3 col-sm-6 col-md-offset-4 col-md-4 premove">

				<div class="col-xs-12 col-sm-12 whiteBox">
					<div class="col-xs-12 innerpads">
						<h2>Please Sign In</h2>
					</div>
					<form id="loginForm">
						<div class="col-xs-12 pmin innerpads">
							<div class="col-xs-12 premove mbottom15">
								<input type="text" class="form-control custombox" id="uname"
									name="uname" placeholder="Username" required=""> <img
									src="img/user.png" class="icon">
							</div>
							<div class="col-xs-12 premove mbottom15">
								<input type="password" class="form-control custombox"
									name="upass" id="upass" placeholder="Password" required="">
								<img src="img/password_icon.png" class="icon">
							</div>

							<div class="col-xs-12 premove mbottom15">
								<select class="typeSelect" id="userType" name="usertype">
									<option value="0">User Type</option>
									<c:forEach items="${userTypeSet}" var="list">
										<option value="${list.uuid}">${list.userType}</option>
									</c:forEach>
								</select> <img src="img/user_checked.png" class="icon">
							</div>
						</div>

						<div class="col-xs-12 premove" align="center">
							<label id="errorLabel" class="errorAlert"></label>
						</div>

						<div class="col-xs-12 premove footer">
							<center>
								<a id="logInSubmit" class="btn btn-info btn-custom">Sign In</a>
							</center>
						</div>
						<!--footer close-->
					</form>
				</div>
				<!--WhiteBox close-->


			</div>
		</div>
	</div>


	<%
		HibernateUtil.closeSession();
	%>

</body>
</html>