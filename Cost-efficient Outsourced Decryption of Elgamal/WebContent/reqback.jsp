<%@page import="java.util.Random"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.*"%>


<%
	int count=0;

String userid=session.getAttribute("un").toString();
System.out.println(userid); 

 String ownerid=request.getParameter("oid");
System.out.println(ownerid);  


String fileid=request.getParameter("fid");
System.out.println(fileid);

	try
		{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes","root","");
	PreparedStatement pst =con.prepareStatement("insert into req (fid,oid,uid) values(?,?,?)");
	pst.setString(1, fileid);
	pst.setString(2, ownerid);
	pst.setString(3,userid);

	
	
	
	
	
	int k=pst.executeUpdate();
	if(k==1)
	{
	response.sendRedirect("searchback.jsp?msg=Request sended");
	}
	else
	{
	response.sendRedirect("searchback.jsp?msg=Request sending failed");
	}
	
	
		} catch (Exception e2) {
			out.println(e2);
		}
	%></html>