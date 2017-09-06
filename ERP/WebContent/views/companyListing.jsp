<%@page import="java.util.TimeZone"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="org.hibernate.Session"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


<head>
<title>Manage Companies</title>
<link href="css/common.css" rel="stylesheet" media="screen">
<!-- <script src="resources/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <link href="resources/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
        
        <script src="resources/assets/DT_bootstrap.js"></script> -->



<!-- <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="resources/assets/styles.css" rel="stylesheet" media="screen">
        
        <link href="resources/assets/DT_bootstrap.css" rel="stylesheet" media="screen"> -->
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->


<!-- <script src="resources/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        
        
        
        <script src="resources/vendors/jquery-1.9.1.js"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/vendors/datatables/js/jquery.dataTables.min.js"></script>


        <script src="resources/assets/scripts.js"></script>
        <script src="resources/assets/DT_bootstrap.js"></script>
        -->



</head>

<body>
	<!-- header -->

	<jsp:include page="header.jsp"></jsp:include>

	<!-- /header -->

	<!-- start of container fluid -->
	<div class="container-fluid">
		<!-- row fluid -->
		<div class="row-fluid">
			<!-- span 2-->
			<div class="span2" id="sidebar">

				<!-- side Navigation -->

				<jsp:include page="sideNavigation.jsp"></jsp:include>

				<!-- /side navigation -->
			</div>
			<!-- /span 2-->

			<!-- span 10 -->
			<div class="span10">
				<!-- content -->

				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">Manage Companies</div>
						<div class="pull-right">
							<a href="createCompany" data-toggle="tooltip"
								data-placement="top" title="Create a New Company"><span
								class="badge badge-warning"><span
									class="icon-plus icon-white"></span></span></a>

						</div>
						<!-- <div class="btn-group pull-right" style="margin-bottom: 10px;">
                                        <button data-toggle="dropdown" class="btn dropdown-toggle"><i class="icon-cog" ></i>&nbsp;<span class="caret"></span></button>
                                         <ul class="dropdown-menu">
                                            <li><a href="#">Print</a></li>
                                            <li><a href="#">Save as PDF</a></li>
                                            <li><a href="#">Export to Excel</a></li>
                                         </ul>
                                      </div> -->
					</div>
					<div class="block-content collapse in">
						<div class="span12">
							<div class="table-toolbar">

								<!-- <div class="btn-group pull-right" style="margin-bottom: 10px;">
									<a href="createCompany"><button class="btn btn-success">
											Add New <i class="icon-plus icon-white"></i>
										</button></a>


								</div> -->
							</div>



							<table cellpadding="0" cellspacing="0" border="0"
								class="table table-striped table-bordered" id="example2">
								<thead>
									<tr>
										<th>S/No.</th>
										<th>Added Date</th>
										<th>Company Name</th>
										<th>Company Type</th>
										<th>Country</th>
										<th>Status</th>
										<th>Actions</th>
									</tr>
								</thead>
								<%
									Calendar calendar = new GregorianCalendar();
									TimeZone timeZoneIndia = TimeZone.getTimeZone("Asia/Calcutta");
									calendar.setTimeZone(timeZoneIndia);
								%>
								<tbody class="td12">
									<c:forEach items="${CompanyMasterList}" var="list">
										<tr>
											<td>${CompanyMasterList.indexOf(list)+1}</td>
											<td><c:set var="addDate" scope="request"
													value="${list.addDate}" /> <%
 	calendar.setTimeInMillis((Long) request.getAttribute("addDate"));
 %> <%=calendar.get(Calendar.DAY_OF_MONTH) + "/"
						+ (calendar.get(Calendar.MONTH) + 1) + "/"
						+ calendar.get(Calendar.YEAR)%></td>
											<td>${list.companyName}</td>
											<td>${list.getCompanyTypeMaster().getCompanyType()}</td>
											<td>${list.getCountryMaster().getName()}</td>
											<td>${list.status == '1' ? 'active' : ''}${list.status == '2' ? 'inactive' : ''}
												${list.status == '3' ? 'deleted' : ''}</td>
											<td style="text-align: center !important;"><span
												 data-toggle="tooltip"
												data-placement="top" title="Modify this record"><i
													onclick="modifyCompany('${list.uuid}')" style="cursor: pointer;" class="icon-edit"></i></span></td>
										</tr>
									</c:forEach>

								</tbody>

							</table>
						</div>
					</div>
				</div>


				<!-- /content -->


			</div>
			<!-- /span 10 -->
		</div>

		<!-- /row fluid -->
		<!-- footer  -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /footer  -->

	</div>
	<!-- end of container fluid -->

</body>

<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
		
		
		
		
		
		
	});
	
	function test(){
		alert("test");
	}
	
	function modifyCompany(companyUuid){
		console.log("here");
		var url = 'modifyCompany';
		var form = $('<form action="' + url + '" method="post"></form>');
		$('body').append(form);
		$('<input />').attr('type', 'hidden').attr(
				'name', "companyUuid").attr(
				'value', companyUuid)
				.appendTo(form);
			form.submit();
	}
	
</script>


<%
	Session hibSession = (Session) request
			.getAttribute("companyMasterListSession");
	hibSession.close();
%>

</html>