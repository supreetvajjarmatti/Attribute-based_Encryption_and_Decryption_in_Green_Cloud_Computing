<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.sql.*"%>
<%
String uname=request.getParameter("uname");
String password=request.getParameter("pwd");
String email=(String)request.getParameter("email");
String phone=(String)request.getParameter("phone");
String gen=(String)request.getParameter("gen");

String aname=(String)request.getParameter("aname");



int count=0;
try


{
	
	
	
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes", "root", "");
Statement st=conn.createStatement();


String sql1="select count(*) from owner where email='"+email+"' ";
PreparedStatement ps1 = conn.prepareStatement(sql1);
ResultSet rs1 =ps1.executeQuery();

System.out.println("rs1"+rs1);
System.out.println("count"+count);
while(rs1.next())
{
	count=rs1.getInt(1);
}

if(count>0)   
{
	
	response.sendRedirect("ownerreg.jsp?msg=Email Id aleady Exists");
	out.println("<br><center>Email Id aleady Exists!</center>");
}

else{

String sql="insert into owner(uname,pwd,email,phone,gen,aname)values('"+ uname+ "','"+ password+ "','"+ email+ "','"+ phone+ "','"+gen+ "','"+ aname+ "')";


PreparedStatement ps = conn.prepareStatement(sql);


ps.executeUpdate();

response.sendRedirect("ownerreg.jsp?msg=Details successfully Registered!");

out.println("<br><center>Details successfully Registered!</center>");
}

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}


%>