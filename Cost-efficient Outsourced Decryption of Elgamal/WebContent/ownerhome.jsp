<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Green Cloud Computing </title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     < <style>
 body  {
  background-image: url("img/cloud9.jpg");
  background-color: #cccccc;
  background-size:cover;
} 
h2{
text-transform:capitalize;
color:white;
}
</style> 
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <h1 style="color:white">Attribute based Encryption and Outsourced Decryption for Both Users and Cloud Server in Cloud Computing</h1></br>
      <ul class="nav navbar-nav">
         <li class="active" align="left"> <a href="ownerhome.jsp">Home</a> </li>                                               
           <li> <a href="upload.jsp">Upload</a> </li>
           <li><a href="viewfile.jsp">View Files</a></li> 
           <li><a href="viewreq.jsp">View Request</a></li>
           <li><a href="index.html">Logout</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>
<!-- Header -->
<header id="header">
  <!-- <div class="intro"> -->
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="intro-text">
             
                        
               
                   
                
                
	<div align="center">
<h2 style="color: red"><b >Profile</b></h2>
<br>
<table cellspacing="8" border="2" width="60%" style="background-color: black"> 
			<tr>
				<th style="color: #cA6d68"><center>Name</th>
				<th style="color: #cA6d68"><center>Email</th>
				<th style="color: #cA6d68"><center>Phone</th>
				<th style="color: #cA6d68"><center>Gender</th>
				<th style="color: #cA6d68"><center>Address</th>
				<th style="color: #cA6d68"><center>Update</th>
				
				<%@page import="java.sql.*" %>
				
				<%
				String s11=(String)session.getAttribute("un").toString();
				System.out.println(s11);
				
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes", "root", "");
				PreparedStatement pstmt = con.prepareStatement("select * from owner  where uid=? ");/* where uid=? */
				pstmt.setString(1,s11);
			    ResultSet rs=pstmt.executeQuery();
			    while(rs.next()){
			    	%>
	<tr>
				<td align="center"><font color="White"required><%=rs.getString(2)%></font></td>
				<td align="center"><font color="White"><%=rs.getString(4)%></font></td>
				<td align="center"><font color="White"><%=rs.getString(5)%></font></td>
				<td align="center"><font color="White"><%=rs.getString(6)%></font></td>
				<td align="center"><font color="White"><%=rs.getString(7)%></font></td>
				<td align="center"><font color="white"><a href="ownerupdate.jsp" style="font-weight: bold;color: #0bf40a">Update</a></font></td>


			 
						
		</tr>
		<% 
			    }
			}catch(Exception e){
			    	e.printStackTrace();
			    }
				%>
				
			
		</table>
	
                        
               
                   
                
                
	<div>
    


          </div>
          </br>
        </div>
      </div>
    </div>
  </div>
</header>

<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>