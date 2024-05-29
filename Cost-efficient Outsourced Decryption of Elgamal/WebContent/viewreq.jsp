<%@page import="java.sql.*"%>
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
color:;
}
ul{
margin: 10px 50px 20px;}
table,tr,td,th {
	padding: 3px;
	text-alignment: center;
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
         <li  align="left"> <a href="ownerhome.jsp">Home</a> </li>                                               
   <li> <a href="upload.jsp">Upload</a> </li>
           <li><a href="viewfile.jsp">View Files</a></li> 
           <li class="active"><a href="viewreq.jsp">View Request</a></li>
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
           <br><div align="center">
<h2><b>View Request</b></h2>
<br>
<table cellspacing="8" border="2" width="60%"  style="background-color: black">
			<tr>
				<th style="color:  #FCAE1E"><center>Reqid</th>
				<th style="color:  #FCAE1E"><center>File Name</th>
				<th style="color:  #FCAE1E"><center>User email-Id</th>
				<th style="color:  #FCAE1E"><center>Status</th>
				<th style="color:  #FCAE1E"><center>Response</th>
				<%
				 /* String id = request.getParameter("uid"); 
				session.setAttribute("uid",id); */ 
				 String qemail= session.getAttribute("pemail").toString();
				 System.out.println(qemail);
				
				
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes", "root", "");
				
				PreparedStatement pstmt = con.prepareStatement("select * from req,upload,user where req.uid=user.uid and req.oid='"+session.getAttribute("un")+"' and upload.fid=req.fid and status='pending'");
				System.out.println("select * from req,upload,user where req.uid=user.uid and req.oid='"+session.getAttribute("un")+"' and upload.fid=req.fid and status='pending'");
			    ResultSet rs=pstmt.executeQuery();//select * from req,upload  where req.uid=? and upload.fid=req.fid
			    while(rs.next()){
			    	%>
	<tr>
				<td align="center"><font color="White"required><%=rs.getString(1)%></font></td>
				<td align="center"><font color="White"><%=rs.getString(8)%></font></td>
				 <td align="center"><font color="White"><%=rs.getString(22)%></font></td> 
				<td align="center"><font color="White"><%=rs.getString(4)%></font></td>

				
				<td align="center">
				<form action="accept2.jsp">
				<input name="reqid" value="<%=rs.getString(1)%>" type="hidden">
				<input name="pkey" value="<%=rs.getString(15)%>" type="hidden">
				<input type="submit" value="Accept" style="color:green;">
				</form>
								<form action="reject.jsp">
								<input name="reqid" value="<%=rs.getString(1)%>" type="hidden">
				
				<input type="submit" value="Reject" style="color:red;">
								</form>
				
				</td>
					    	
						
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