<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Board detail</title>
        <link href="<%=request.getContextPath()%>/resources/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <!-- jquery  --> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
		<!-- reply.js -->
		<script src = "<%=request.getContextPath()%>/resources/js/reply.js"></script>
    </head>
    <body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="<%=request.getContextPath()%>/home">BLOG</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#!" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                </li>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#!">Settings</a>
                    <a class="dropdown-item" href="#!">Activity Log</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="login.html">Logout</a>
                </div>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
               <br><br>
                       
		 
	 		 <div class="box box-primary">
	            <div class="box-header with-border">
	              <h3 class="box-title">READ BOARD</h3>
	            </div>
	            <!-- /.box-header -->
	            <!-- form read start -->
	            <c:forEach items="${detail}" var="det">
	            <form role="form" method="post">    
	              	<input th:field="*{det.bno}" type="hidden">
	                <div class="form-group">
	                	<label for="title">Title</label>
	                	<textarea th:inline="text" class="form-control" rows="1" id="exampleInputBoardTitle"  readonly="readonly">${det.title}</textarea>
	                </div>
	                <div class="form-group">
	                	<label>Content</label>
	                	<textarea th:inline="text" class="form-control" rows="3" readonly="readonly">${det.contents}</textarea>
	                </div>   
	              	<div class="form-group">
	                  	<label for="writer">Writer</label>
	                  	<textarea th:inline="text" class="form-control" rows="1" id="exampleInputBoardTitle"  readonly="readonly">${det.id}</textarea>
	                </div>
	                </c:forEach> 
	             <!-- /.box-body -->
				 <!-- button -->	
	                <div class="box-footer">
	                	<button type="button" class="btn btn-warning">Modify</button>
	                	<button type="button" class="btn btn-danger">Remove</button>
	                	<button type="button" class="btn btn-primary" onclick = "location.href = '<%=request.getContextPath()%>/boardlist' ">ListAll</button>
	                </div>
	            </form>
	            <br><br>
				<!-- reply list -->
				<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
					<h6 class="border-bottom pb-2 mb-0">Reply list</h6>
					<div id="replyList"></div>
					<c:forEach items="${replyList}" var="reply">
						<input th:field="*{det.bno}" type="hidden" id = "bno">
						<p class="id_are">id: ${reply.id}</p>
						<p class="text-primary" rows="2" readonly="readonly">${reply.contents}</p>
						<p class="text-right mb-2 mt-5">${reply.w_date}</p>
					</c:forEach>
				</div> 
	            <!-- reply form -->
	            <div class="card mb-2">
					<div class="card-header bg-light">
					        <i class="fa fa-comment fa"></i> REPLY
					</div>
					<div class="card-body">
						<ul class="list-group list-group-flush">
							<form role="replyform" method="post">
							    <li class="list-group-item">
								<div class="form-inline mb-2">
									<label for="replyId"><i class="fa fa-user-circle-o fa-2x"></i></label>
									<input type="text" class="form-control ml-2" placeholder="Enter yourId" id="replyId">
									<label for="replyPassword" class="ml-4"><i class="fa fa-unlock-alt fa-2x"></i></label>
									<input type="password" class="form-control ml-2" placeholder="Enter password" id="replyPassword">
								</div>
								<textarea class="form-control" id="replycontent" rows="3"></textarea>
								<button id="replybutton" type="button" class="btn btn-dark mt-3">post reply</button>
							    </li>
						    </form>
						</ul>
					</div>
			
				</div>
          	</div>        
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>