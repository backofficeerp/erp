<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid" style="background-color: #F5B041;">
<div class="row">

<div class="col-sm-12">

<span style="float: right;">Logged in as: <b>${loggedUser}</b></span><br/>

<c:choose>
    <c:when test="${loggedUser == '' || empty loggedUser}">
    	<span style="float: right;">&nbsp;|&nbsp;</span>
        <a href="login" style="float: right;" ><b>Log In</b></a>
        <span style="float: right;">&nbsp;|&nbsp;</span>
    </c:when>
    <c:otherwise>
    	<span style="float: right;">&nbsp;|&nbsp;</span>
        <a href="logout" style="float: right;" ><b>Log Out</b></a>
        <span style="float: right;">&nbsp;|&nbsp;</span>
    </c:otherwise>
</c:choose>

 <a href="dashboard" style="float: right;" ><b>Dashboard </b></a>
<span style="float: right;">&nbsp;|&nbsp;</span>
<!-- <a href="admin" style="float: right;" ><b>Module Page </b></a>  -->



<h2><b>CRUST RESOURCES ERP</b></h2>

</div>
</div>
</div>

</body>
</html>