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
      <style>
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


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
           <li class="active"><a href="viewfile.jsp">View Files</a></li> 
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
<h2 style="color: red"><b >Graph</b></h2>
<br>
<%@page import="java.sql.*" %>
	<%@page import="java.io.*"%>
	<%@page import="java.util.*"%>
	<%@page import="java.lang.*"%>
	<%@page import="Elgamal.*"%>
	<%@page import="java.math.BigInteger"%>
	<%@page import="java.math.BigDecimal"%>

<%String id=request.getParameter("fid"); %>
<%@page import="java.sql.*"%>
<% Blob b = null;
String buff=null;
byte[] decrypted = null;

String keey1="";double kkk1;BigInteger dkey1;String sq1="";

String dkeyyyy="";
String listString1 = "";
int ensize = 0;


try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *,cHAR_LENGTH(encryptedfilename) from upload where fid='"+id+"'");
	while(rs.next())
	{
		keey1=rs.getString(1);
		kkk1=rs.getDouble(1);
		sq1=rs.getString(4);
		dkeyyyy=rs.getString(9);
		buff=rs.getString(3);
		ensize=rs.getInt(13);
		
	}
	dkey1=new BigInteger(dkeyyyy);
	
	String ss1=sq1.substring(1, sq1.length()-1);
		System.out.println(ss1);
		String str1[] = ss1.split(",");
		List<String> al1 = new ArrayList<String>();
		al1 = Arrays.asList(str1);
		for(String s: al1){
		//   System.out.println(s);
		}
		
		List<String> decmsg1 = new ArrayList<String>();
  		for (int i = 0; i < al1.size(); i++) {
		String decstr = al1.get(i);
		//out.println(decstr + "<br>");
		double decstringtoint = Double.parseDouble(decstr);
		BigInteger dd=BigDecimal.valueOf(decstringtoint).toBigInteger();
		BigInteger divv=dd.divide(dkey1);
		int finalint = divv.intValue();
		char c = (char) finalint;
		String finalchartostr = Character.toString(c);
		decmsg1.add(finalchartostr); 

	}
  		
  		System.out.println(decmsg1);

		for (String strr : decmsg1) {
			listString1 += strr;
		}
  	//	System.out.println(listString1);
  	  decrypted= listString1.getBytes();


	}
catch(Exception e)
{
	out.println(e);
}

	%>



<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%
int listString1si=listString1.length();


Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Actual Size"); map.put("y", listString1si); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Encrypted size"); map.put("y", ensize); list.add(map);
 
String dataPoints = gsonObj.toJson(list);
%>
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Plain and Encrypted Data"
	},
	axisY: {
		suffix: "",
		includeZero: true
	},
	axisX: {
		title: "File Type"
	},
	data: [{
		type: "column",
		yValueFormatString: "#,##0\" bytes\"",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
              
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                
	

</div>        </div>
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