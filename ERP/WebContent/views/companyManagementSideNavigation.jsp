<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
		
		<li ${uri == 'companyManagementDashboard' ? 'class="active"' : '' } ><a href="companyManagementDashboard"><i class="icon-chevron-right"></i>
				Dashboard</a></li>
		<li ${uri == 'manageBranches' ? 'class="active"' : '' } ><a href="manageBranches"><i class="icon-chevron-right"></i>
				Manage Branches</a></li>		
		
	</ul>
	
</body>
</html>