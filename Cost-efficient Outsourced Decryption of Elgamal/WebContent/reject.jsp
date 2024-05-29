
<%@page import="java.sql.*"%>

<%
String id=request.getParameter("reqid");
System.out.println(id);

String pkey=request.getParameter("pkey");
System.out.println(id);

	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes","root","");
	PreparedStatement pst =con.prepareStatement("update req set status='Rejected' where reqid='"+id+"'");	
	int k=pst.executeUpdate();
	if(k!=0)
	{
	response.sendRedirect("viewreq.jsp?msg=Request Rejected");
	}
	else
	{
	response.sendRedirect("viewreq.jsp?msg=failed");
	}
	
	
	
	%>