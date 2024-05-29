<%@ page import="java.sql.*, javax.sql.*,  java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>

<script language="JavaScript">

</script>
</head>

<% Blob b = null;
String buff=null;
StringBuffer sb = new StringBuffer();
String fid = request.getParameter("fileid");
System.out.println(fid);
String pkey = request.getParameter("pkey");
System.out.println(pkey);
String key1= request.getParameter("pkey1");
System.out.println(key1);
if(pkey.equals(key1))
{
	response.sendRedirect("encimg2.jsp?fid="+fid);
}
else
{
	response.sendRedirect("status.jsp?msg=Download Failed because entered KEY was WRONG");
}



%>

</body>
</html>