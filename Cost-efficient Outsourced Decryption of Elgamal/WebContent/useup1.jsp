<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%
String uname=request.getParameter("uname");
String password=request.getParameter("pwd");
String email=(String)request.getParameter("email");
String phone=(String)request.getParameter("phone");
String gen=(String)request.getParameter("gen");

String aname=(String)request.getParameter("aname");




	
	
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes", "root", "");

String sql="update user set uname='"+ uname+ "',email='"+ email+ "',phone='"+ phone+ "',gen='"+gen+ "', aname='"+ aname+ "' where uid='"+session.getAttribute("un")+"'";


PreparedStatement ps = conn.prepareStatement(sql);


ps.executeUpdate();

response.sendRedirect("userhome.jsp");

%>


</body>
</html>