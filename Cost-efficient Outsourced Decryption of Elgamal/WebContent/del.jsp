<%@page import="com.sun.rmi.rmid.ExecOptionPermission"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Green Cloud Computing</title>
</head>
<body>


<%String id=request.getParameter("fid"); %>
<%@page import="java.sql.*"%>

<%

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes", "root", "");

//PreparedStatement pp=con.prepareStatement("DELETE FROM upload, req USING upload INNER JOIN req ON upload.fid=req.fid where upload.fid='"+id+"' or req.fid='"+id+"'");
PreparedStatement pp=con.prepareStatement("delete from upload where fid='"+id+"' ");
pp.executeUpdate();


PreparedStatement pp1=con.prepareStatement("delete from req where fid='"+id+"'");
pp1.executeUpdate();





response.sendRedirect("viewfile.jsp?msg=File Deleted");




%>

</body>
</html>