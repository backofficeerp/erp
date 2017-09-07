<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
		
				<li ${uri == 'crustAdministration' ? 'class="active"' : '' } ><a href="crustAdministration"><i class="icon-chevron-right"></i>
				Dashboard</a></li>
				<li ${uri == 'companyListing' ? 'class="active"' : '' }><a href="companyListing"><i class="icon-chevron-right"></i>
				Manage Companies</a></li>
				<li ${uri == 'createDesignation' ? 'class="active"' : '' }><a href="createDesignation"><i class="icon-chevron-right"></i>
				Manage Designation</a></li>
				<li ${uri == 'createDepartment' ? 'class="active"' : '' }><a href="createDepartment"><i class="icon-chevron-right"></i>
				Manage Department</a></li>
		
		
		
	</ul>

</body>
</html>