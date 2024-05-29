<%@page import="java.sql.*"%>
<%
	String msg = request.getParameter("msg");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/orphanage","root", "");
		PreparedStatement ps1 = con
				.prepareStatement("select * from events");
		ResultSet rs = ps1.executeQuery();
%>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Made Three</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Font link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">


<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/slick-theme.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/bootsnav.css">



<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td,th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>

<body data-spy="scroll" data-target=".navbar-collapse" data-offset="100">


	<!-- Preloader -->
	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
			</div>
		</div>
	</div>
	<!--End off Preloader -->


	<div class="culmn">
		<!--Home page style-->


		<nav
			class="navbar navbar-default bootsnav navbar-fixed no-background white">

			<!-- Start Top Search -->
			<div class="top-search">
				<div class="container">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-search"></i></span>
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-addon close-search"><i
							class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->


			<div class="container">


				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<center>
						<h3>ORPHANAGE HELPING MANAGEMENT SYSTEM</h3>
					</center>

					<!--  <a class="navbar-brand" href="#brand">
                            <img src="assets/images/logo.png" class="logo" alt="">
                            <img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">
                        </a>
 -->
				</div>
				<!-- End Header Navigation -->

				<!-- navbar menu -->
<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="adminhome.jsp">Admin Home</a></li>

						<li><a href="addchilddetails.jsp">Add child details</a></li>
						<li><a href="viewrecords.jsp">View records</a></li>
						<li><a href="addediting.jsp">Edit Child </a></li>
						<li><a href="adddeleting.jsp">Delete Child </a></li>
						<li><a href="addevents.jsp">Add Events</a></li>
						<li><a href="viewrequests.jsp">View Requests</a></li>

						<li class="dropdown menu__item"><a href="#" class="dropdown"
							data-toggle="dropdown">View Volenteers<b class="caret"></b>
						</a>
							<ul class="dropdown-menu agile_short_dropdown">



								<li><a href="viewpainting.jsp">View Painting</a></li>
								<li><a href="viewdrawing.jsp"> View Drawing</a></li>
								<li><a href="viewdancing.jsp">View Dancing</a></li>
								<li><a href="viewsinging.jsp">View singing</a></li>



							</ul>
							<li class="dropdown"><a href="#" class="dropdown"
							data-toggle="dropdown"> Reports<b class="caret"></b>
						</a>
							<ul class="dropdown-menu agile_short_dropdown">




								<li><a href="viewdonar1.jsp">View Donars</a></li>
								<li><a href="viewado1.jsp">View Adoption</a></li>
								<li><a href="viewvole1.jsp">View Volenteers</a></li>



							</ul></li>
							      <li><a href="index.html">Logout</a></li>
				</div>

				<!-- /.navbar-collapse -->
			</div>

		</nav>

		<!--Home Sections-->

		<section id="home" class="home bg-black fix">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="main_home text-center">
						<div class="col-md-12">
							<div class="hello">
								<div class="slid_item">
									<table>
										<tr>
											<th>Event Name</th>
											<th>Organizer Name</th>
											<th>Date</th>
											<th>Time</th>
											<th>Update</th>
											<th>Delete</th>
										</tr>
										<%while(rs.next()){ %>
										<tr>
											<td><%=rs.getString(1) %></td>
											<td><%=rs.getString(2) %></td>
											<td><%=rs.getString(3) %></td>
											<td><%=rs.getString(4) %></td>
											<td><a href="addevent2.jsp?id=<%=rs.getString(5) %>">Update</a></td>
											<td><a href="addevent3.jsp?id=<%=rs.getString(5) %>">Delete</a></td>
										</tr>
										<%} %>
									</table>

								</div>

							</div>
						</div>

					</div>



				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Home Sections-->

		<%
			}

			catch (Exception e) {
				e.printStackTrace();
			}
		%>



		<footer id="contact" class="footer action-lage bg-black p-top-80">

			<div
				class="main_footer fix bg-mega text-center p-top-40 p-bottom-30 m-top-80">
				<div class="col-md-12">
					<p class="wow fadeInRight" data-wow-duration="1s">2021
						</p>
				</div>
			</div>
		</footer>




	</div>

	<!-- JS includes -->

	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<script src="assets/js/jquery.magnific-popup.js"></script>
	<!--<script src="assets/js/jquery.easypiechart.min.js"></script>-->
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<!--<script src="assets/js/slick.js"></script>-->
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/js.isotope.js"></script>
	<script src="assets/js/jquery.collapse.js"></script>
	<script src="assets/js/bootsnav.js"></script>

	<script
		src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>



</body>
</html>
