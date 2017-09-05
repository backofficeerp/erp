<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:include page="header.jsp" />
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Dashboard</title>
</head>
<body>
<div class="container-fluid">
<div class="row">

<div class="col-sm-12" >
<h3><b>Dashboard</b></h3>
</div>

</div>
<jsp:include page="sideNav.jsp" />

<%-- <div class="row">

<div class="col-sm-12" >
<h4><b>Your Modules</b></h4>

<c:forEach items="${loggedUserRoleModuleRelations}" var="element">
 
<div><a href="module${element.getModules().getId()}">${element.getModules().getModuleName()}</a></div>
  
</c:forEach>

</div>

</div> --%>

</div>
</body>
</html>