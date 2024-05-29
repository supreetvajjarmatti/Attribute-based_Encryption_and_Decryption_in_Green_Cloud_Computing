<%@page import="java.sql.*" %>
<%
String s1=request.getParameter("email");
session.setAttribute("pemail", s1);
System.out.println(s1);
String s2=request.getParameter("password");
session.setAttribute("password", s2);
System.out.println(s2);
/* String s11=request.getParameter("uid");
session.setAttribute("sid", s11); */
int cnt=0;
System.out.println(s1);
try
{
	
	String sql="select count(*),uid from user where email='"+s1+"' and pwd='"+s2+"'   ";  /*  and uid='"+s11+"' */
	System.out.println(sql);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes","root","");
PreparedStatement ps1=con.prepareStatement(sql);
ResultSet rs=ps1.executeQuery();
 while(rs.next())
{
	cnt=rs.getInt(1);
	if(cnt>0)
	{
	  /* cnt=rs.getInt(1);  */
    /*  session.setAttribute("n1", rs.getString(1)); */
      session.setAttribute("un", rs.getString(2)); 
	}
	
}
System.out.println(cnt); 
 
if(cnt==1)
{
	response.sendRedirect("userhome.jsp?msg=Login Successful");
	
}
else
{
	response.sendRedirect("userlog.jsp?msg=Invalid credentials. Please try again");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>