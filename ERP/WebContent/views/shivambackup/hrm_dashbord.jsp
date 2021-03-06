<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DataTables | Gentelella</title>

    <!-- Bootstrap -->
    <link href="resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <!-- side navigation -->
        
        <jsp:include page="hrmSide.jsp"></jsp:include>
        
        <!-- /side navigation -->

        <!-- top navigation -->
        <jsp:include page="hrmTop.jsp"></jsp:include>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Human Resource Management <small></small></h3>
				 

<button class="btn warning">Create Employee</button>


              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Employee Table <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                   
                    <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Position</th>
                          <th>Office</th>
                          <th>Age</th>
                          <th>Start date</th>
                          <th>Salary</th>
                          <th>edit/view/delete</th>
                        </tr>
                      </thead>


                    
                     
                      <tbody>
                        <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>nexon suri</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>53</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td> Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>47</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
						 <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>2011/04/25</td>
                        
						 <td><a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"> 
                      <i class="fa fa-edit"></i>
                    </a>
					
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="view"> 
                      <i class="fa fa-edit"></i>
                    </a>
					<a href="manageSalesTeam/edit/20" class="btn btn-success deleteBtn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="delete"> 
                      <i class="fa fa-edit"></i>
                    </a></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

              

              

              

              

              
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <jsp:include page="hrmFooter.jsp"></jsp:include>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="resources/vendors/jquery/dist/jquery.min.js"></script>
    <script src="resources/vendors/jquery/dist/jquery.min.js"></script>
    <script src="resources/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="resources/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="resources/vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="resources/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="resources/vendors/jszip/dist/jszip.min.js"></script>
    <script src="resources/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="resources/vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="resources/build/js/custom.min.js"></script>

  </body>
</html>