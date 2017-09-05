<%@page import="com.mi.resource_util.HibernateUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="header.jsp" />
    <jsp:include page="HRMSideNavigation.jsp" />
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  <script>
  $(function(){
    $("#user").dataTable();
  })
  </script>

<title>HRM Dashboard</title>

<script>
$(document).ready(function(){
$("#aj").click(function(){
    $.post("reload", function(data, status){
    	
    	$("#nam").load("reload");
        console.log("Data: " + data + "\nStatus: " + status);
    });
});
});

function sendWithUserId(userId){
	
	var url = 'modifyEmployee';
	
	
	
	var form = $('<form id="modifyEmployeeForm" action="' + url + '" method="post"></form>');
	
	$('body').append(form);
	
	$('<input />').attr('type', 'hidden').attr(
			'name', "userId").attr(
			'value', userId)
			.appendTo(form);
		form.submit();
	
}

</script>


</head>
<body>

  



  <!-- <form action="/action_page.php">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search" name="search">
      <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      </div>
    </div>
  </form> -->

<%-- 
<input id="aj" type="button" value="reload" />

<p id="nam">nam: ${nam}</p> --%>


<div class="container-fluid">
          
  
           
  <table id="user" class="table table-condensed">
    <thead>
      <tr>
        <th>FirstName</th>
        <th>Mobile No.</th>
        <th>E-mail</th>
        <th>Designation</th>
        <th>Joining Date</th>
        <th>Branch</th>
        <th>Status</th>
        <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
      
      <c:forEach items="${userList}" var="list">
      <tr>
      	<td>${list.firstName} </td>
      	<td>${list.mobile}</td>
        <td>${list.email}</td>
        <td>${list.getDesignation().getDesignationName()}</td>
        <td>${list.getJoiningDate().toString()}</td>
        <td>${list.getBranch().getBranchName()}</td>
        <td style="color: blue;">${list.status}</td>
        
        <td><span onclick="sendWithUserId(${list.id})" style="cursor: pointer;">view/modify</span></td>
        
      	 </tr>
      </c:forEach>
        
    </tbody>
  </table>
  
  
  
  
</div>

<!-- <div class="container" align="center">
<ul class="pagination">
    <li><a href="#" class="active">1</a></li>
    <li ><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
  </ul>
</div> -->

 <%HibernateUtil.closeSession(); %> 
</body>
</html>