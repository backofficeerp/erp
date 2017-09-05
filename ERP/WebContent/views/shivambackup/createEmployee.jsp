<%@page import="com.mi.resource_util.HibernateUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<jsp:include page="HRMSideNavigation.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/parsley.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="js/createEmployee.js"></script>

<style>
body {
	font-family: "Lato", sans-serif;
}

/* Style the tab */
div.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
div.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Employee</title>
</head>
<body>


	<div class="container">

		<div class="bs-callout bs-callout-warning hidden">
			<h4>Oh snap!</h4>
			<p>This form seems to be invalid :(</p>
		</div>

		<div class="bs-callout bs-callout-info hidden">
			<h4>Yay!</h4>
			<p>Everything seems to be ok :)</p>
		</div>


		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'personalDetails')"
				id="defaultOpen">Personal Details</button>
			<button class="tablinks" onclick="openCity(event, 'familyDetails')">Family
				Details</button>
			<button class="tablinks"
				onclick="openCity(event, 'professionalDetails')">Educational/Professional
				Details</button>
			<button class="tablinks" onclick="openCity(event, 'officialDetails')">Official
				Details</button>
		</div>

		<form id="createEmployeeForm"
			action="${formType == 'create' ? 'createEmployeeProcess' : 'modifyEmployeeProcess'}"
			method="POST" data-parsley-validate data-parsley-ui-enabled="true">
			<div id="personalDetails" class="tabcontent">
				<h3>
					<b>Personal Details</b>
				</h3>

				<div class="form-group">
					<label for="firstName">First Name:</label> <input
						value="${user.firstName}" type="text" class="form-control"
						name="firstName" id="firstName" data-parsley-trigger="input"
						required>
					<!-- data-parsley-required-message="incorrect" -->
				</div>
				
				<div class="form-group">
					<label for="middleName">Middle Name:</label> <input
						value="${user.middleName}" type="text" class="form-control"
						name="middleName" id="middleName">
				</div>
				<div class="form-group">
					<label for="LastName">Last Name:</label> <input
						value="${user.lastName}" type="text" class="form-control"
						name="lastName" id="LastName">
				</div>
				<div class="form-group">
					<label for="dob">DOB</label> <input type="date" value="${user.dob}"
						class="form-control" name="dob" id="dob"
						data-parsley-trigger="input" required>
				</div>
				<div class="form-group">
					<label for="gender">Gender</label> <select class="form-control"
						name="gender" id="gender" data-parsley-pattern="^male$|^female$"
						data-parsley-required-message="This value of required"
						data-parsley-trigger="input">
						<option ${user.gender == '' ? 'selected' : ''}>select</option>
						<option ${user.gender == 'male' ? 'selected' : ''}>male</option>
						<option ${user.gender == 'female' ? 'selected' : ''}>female</option>
					</select>

				</div>
				<div class="form-group">
					<label for="mobile">Mobile No</label> <input value="${user.mobile}"
						type="text" class="form-control" name="mobile" id="mobile"
						data-parsley-trigger="input"
						data-parsley-pattern="^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$">
				</div>
				<div class="form-group">
					<label for="email">E-mail</label> <input value="${user.email}"
						type="email" data-parsley-trigger="input" class="form-control"
						name="email" id="email" required>
				</div>
				<div class="form-group">
					<label for="address">Address:</label>
					<textarea class="form-control" rows="5" name="address" id="address"
						data-parsley-trigger="input" required>${user.address}</textarea>
				</div>


			</div>



			<div id="familyDetails" class="tabcontent">
				<h3>
					<b>Family Details</b>
				</h3>
				<h4>Father's Details</h4>
				<div class="form-group">
					<label for="fatherFirstName">First Name</label> <input
						value="${user.fatherFirstName}" type="text" class="form-control"
						name="fatherFirstName" id="fatherFirstName">
				</div>
				<div class="form-group">
					<label for="fatherMiddleName">Middle Name</label> <input
						value="${user.fatherMiddleName}" type="text" class="form-control"
						name="fatherMiddleName" id="fatherMiddleName">
				</div>
				<div class="form-group">
					<label for="fatherLastName">Last Name</label> <input
						value="${user.fatherMiddleName}" type="text" class="form-control"
						name="fatherLastName" id="fatherLastName">
				</div>
				<div class="form-group">
					<label for="occupation">Occupation</label> <input
						value="${user.fatherOccupation}" type="text" class="form-control"
						name="fatherOccupation" id="occupation">
				</div>
				<div class="form-group">
					<label for="fatherMobile">Mobile</label> <input
						value="${user.fatherMobileNo}" type="text" class="form-control"
						name="fatherMobile" id="fatherMobile">
				</div>
				<div class="form-group">
					<label for="fatherAddress">Address</label>
					<textarea value="${user.fatherAddress}" class="form-control"
						rows="5" name="fatherAddress" id="fatherAddress"></textarea>
				</div>


				<h4>Mother's Details</h4>
				<div class="form-group">
					<label for="motherFirstName">First Name</label> <input
						value="${user.motherFirstName}" type="text" class="form-control"
						name="motherFirstName" id="motherFirstName">
				</div>
				<div class="form-group">
					<label for="motherMiddleName">Middle Name</label> <input
						value="${user.motherMiddleName}" type="text" class="form-control"
						name="motherMiddleName" id="motherMiddleName">
				</div>
				<div class="form-group">
					<label for="motherLastName">Last Name</label> <input
						value="${user.motherLastName}" type="text" class="form-control"
						name="motherLastName" id="motherLastName">
				</div>
				<div class="form-group">
					<label for="occupation">Occupation</label> <input
						value="${user.motherOccupation}" type="text" class="form-control"
						name="motherOccupation" id="occupation">
				</div>
				<div class="form-group">
					<label for="motherMobile">Mobile</label> <input
						value="${user.motherMobile}" type="text" class="form-control"
						name="motherMobile" id="motherMobile">
				</div>
				<div class="form-group">
					<label for="motherAddress">Address</label>
					<textarea value="${user.motherAddress}" class="form-control"
						rows="5" name="motherAddress" id="motherAddress"></textarea>
				</div>

			</div>

			<div id="professionalDetails" class="tabcontent">
				<h3>Professional Details</h3>
				<h4>Educational Details</h4>

				<input style="margin: 5px 5px 15px 5px;" id="addEducationRow"
					type="button" value="add row" /> <input
					style="margin: 5px 5px 15px 5px;" id="deleteEducationRow"
					type="button" value="delete row" />

				<table id="educationTable">
					<thead>
						<tr>
							<th>Degree</th>
							<th>Institution</th>
							<th>Percentage</th>
							<th>Year</th>
						</tr>

					</thead>

					<tbody>
						<%-- <c:set var = "salary" scope = "session" value = "${2000*2}"/> --%>
						
						<%
						int educationCount = 0;
						%>
						<c:forEach items="${user.getUserEducationDetailses()}" var="list">
							<tr>
								<%
										educationCount++;
										request.setAttribute("educationCount", String.valueOf(educationCount));
								%>
								<td><input name="degree_${educationCount}" type="text" class="form-control"
									value="${list.degree}"></td>
								<td><input name="percentage_${educationCount}" type="text" class="form-control"
									value="${list.percentage}"></td>
								<td><input name="year_${educationCount}" type="text" class="form-control"
									value="${list.year}"></td>
								<td><input name="institution_${educationCount}" type="text" class="form-control"
									value="${list.institution}"></td>
							</tr>
						</c:forEach>

					</tbody>


				</table>



				<h4>Professional Details</h4>

				<input style="margin: 5px 5px 15px 5px;" id="addExperienceRow"
					type="button" value="add row" /> <input
					style="margin: 5px 5px 15px 5px;" id="deleteExperienceRow"
					type="button" value="delete row" />

				<table id="experienceTable">
					<thead>
						<tr>
							<th>Over All Experience</th>
							<th>Company Name</th>
							<th>Reference Name</th>
							<th>Mobile No</th>
						</tr>
					</thead>

				</table>

				<!-- 
      <label for="degree">Over all Experience</label><br/>
      <div class="input-group">
      <span class="input-group-addon">Year</span>
       <select class="form-control" name="experienceYear" id="experienceYear">
        <option>0</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
      </select>
      
      <span class="input-group-addon">Month</span>
       <select class="form-control" name="experienceMonth" id="experienceMonth">
        <option>0</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
        <option>11</option>
      </select>
      
      </div> -->

			</div>

			<div id="officialDetails" class="tabcontent">
				<h3>Official Details</h3>
				<div class="form-group">
					<label for="designation">Designation</label> <select
						class="form-control" name="designation" id="designation">

						<c:if test="${formType == 'create'}">
							<c:forEach items="${designationList}" var="list">

								<option value="${list.getId()}">${list.getDesignationName()}</option>

							</c:forEach>
						</c:if>

						<c:if test="${formType == 'modify'}">

							<option value="${user.getDesignation().getId()}">${user.getDesignation().getDesignationName()}</option>

						</c:if>

					</select>
				</div>
				<div class="form-group">
					<label for="joiningDate">Joining date</label> <input
						value="${user.joiningDate }" type="date" class="form-control"
						name="joiningDate" id="joiningDate">
				</div>

				<input type="hidden" name="userId" value="${user.id}" />

			</div>

			<div align="center" style="margin: 10px 0 20px 0;">
				<input type="submit"
					value="${formType == 'modify' ? 'Modify' : 'Submit'}"
					class="btn btn-success btn-lg" />
			</div>

		</form>

	</div>




	<script>
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
</body>
</html>