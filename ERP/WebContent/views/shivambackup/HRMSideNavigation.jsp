<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 10px 8px 10px;
    text-decoration: none;
    font-size: 17px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>

</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <c:if test="${assignedModule.humanResourceManagement}">
  <a href="HRMDashboard">Human Resource Management</a>
  </c:if>

  <c:if test="${assignedModule.inventoryManagement}">
  <a href="#">Inventory Management</a>
  </c:if>
  
  <c:if test="${assignedModule.salesManagement}">
  <a href="#">Sales Management</a>
  </c:if>
  
  <c:if test="${assignedModule.customerRelationshipManagement}">
  <a href="#">Costumer Relationship Management</a>
  </c:if>
</div>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span></a>
    </div>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Define Masters<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Define Designation</a></li>
          <li><a href="#">Define Leave</a></li>
          <li><a href="#">Define Working Hour</a></li>
          <li><a href="#">Define Reporting Time</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Employee<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="createEmployee">Create Employee</a></li>
          <li><a href="HRMDashboard">View Employee</a></li>
          <li><a href="#">Leave Requests</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Reports<span class="caret"></span></a>
        <ul class="dropdown-menu">
         
        </ul>
      </li>
    </ul>
  </div>
</nav>


<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>

</body>
</html>