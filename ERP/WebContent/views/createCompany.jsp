<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>Create a New Company</title>
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->


<link href="css/common.css" rel="stylesheet" media="screen">

<script>


</script>

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
			<div class="span5">

				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class=" pull-left">
								<b>Create a New Company</b>
							</div>
						</div>
						<div class="block-content collapse in">
							<div class="span12">
								<form id="createCompanyForm" class="form-horizontal" data-parsley-validate data-parsley-ui-enabled="true">

									<div class="control-group">
										<label class="control-label " for="focusedInput">First
											Name: </label>
										<div class="controls">
											<input class="input-xlarge focused" id="focusedInput"
												type="text" name="firstname" required>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label " for="focusedInput">Middle
											Name: </label>
										<div class="controls">
											<input class="input-xlarge focused" id="focusedInput"
												type="text" >
										</div>
									</div>
									<div class="control-group">
										<label class="control-label " for="focusedInput">Last
											Name: </label>
										<div class="controls">
											<input class="input-xlarge focused" id="focusedInput"
												type="text" >
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="focusedInput">Company
											Name: </label>
										<div class="controls">
											<input class="input-xlarge focused" id="focusedInput"
												type="text" name="companyName" required>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label " for="selectError">Company
											Type: </label>
										<div class="controls">
											<select class="input-xlarge focused" id="selectError" name="companyType" data-parsley-min="1">
												<option>Select</option>
												<c:forEach items="${companyTypeList}" var="list">
													<option value="${list.uuid}">${list.companyType}</option>
												</c:forEach>

											</select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label " for="focusedInput">Mobile
											No: </label>
										<div class="controls">
											<input class="input-xlarge focused" id="focusedInput"
												type="text" name="mobileNo" data-parsley-pattern="^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$" required>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label " for="focusedInput">E-mail
											Address: </label>
										<div class="controls">
											<input class="input-xlarge focused" id="focusedInput"
												type="email" name="email" required>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label " for="focusedInput">Password:
										</label>
										<div class="controls">
											<input class="input-xlarge focused" id="focusedInput"
												type="password" name="upass" required>
										</div>
									</div>


									<div class="control-group">
										<label class="control-label " for="selectError">Country:
										</label>
										<div class="controls">
											<select class="input-xlarge focused" id="selectError" name="country" data-parsley-min="1" >
											
												<option>Select</option>
												<c:forEach items="${countryList}" var="list">
													<option value="${list.uuid}">${list.name}</option>
												</c:forEach>
												
											</select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="selectError">Company
											Size: </label>
										<div class="controls">
											<select class="input-xlarge focused" id="selectError" name="companySize" data-parsley-min="1">
												<option>Select</option>
												<c:forEach items="${companySizeList}" var="list">
													<option value="${list.uuid}">${list.companySize}</option>
												</c:forEach>
											</select>
										</div>
									</div>



									<div class="form-actions">
										<button id="createCompanySubmit" type="submit" class="btn btn-primary">Save</button>
										<a href="createCompany" type="reset" class="btn">Cancel</a>
									</div>



								</form>

							</div>
						</div>
					</div>
					<!-- /block -->
				</div>

			</div>

			<!--  <div class="span5" >

                    <div class="row-fluid">
                        block
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class=" pull-left"><b>Super Admin</b></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                     <form class="form-horizontal">
                                      

                                        <div class="control-group">
                                          <label class="control-label " for="focusedInput">First Name</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                          </div>    
                                        </div>
                                       <div class="control-group">
                                          <label class="control-label " for="focusedInput" >Middle Name</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                          </div>    
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label " for="focusedInput" >Last Name</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                          </div>    
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label " for="focusedInput" >Mobile No.</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                          </div>    
                                        </div>
                                       <div class="control-group">
                                          <label class="control-label " for="focusedInput" >E-mail</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                          </div>    
                                        </div>
                                        
                                    </form>

                                </div>
                            </div>
                        </div>
                        /block
                    </div>

                    </div> -->
			<!-- /span 10 -->
		</div>

		<!-- /row fluid -->
		<!-- footer  -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /footer  -->

	</div>
	<!-- end of container fluid -->

</body>

</html>