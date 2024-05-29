<%@page import="java.sql.*" %>
	<%@page import="java.io.*"%>
	<%@page import="java.util.*"%>
	<%@page import="java.lang.*"%>
	<%@page import="Elgamal.*"%>
	<%@page import="java.math.BigInteger"%>
	<%@page import="java.math.BigDecimal"%>
	

<html>
<head>


</head>
<%String id=request.getParameter("fid"); %>
<%@page import="java.sql.*"%>
<% Blob b = null;
String buff=null;
byte[] decrypted = null;

String keey1="";double kkk1;BigInteger dkey1;String sq1="";

String dkeyyyy="";
	String listString1 = "";


try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from upload where fid='"+id+"'");
	while(rs.next())
	{
		keey1=rs.getString(1);
		kkk1=rs.getDouble(1);
		sq1=rs.getString(4);
		dkeyyyy=rs.getString(9);
		buff=rs.getString(3);
	
		
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
<body>		
<%

		
		if(decrypted != null)
		{
			String fileName = buff;
			byte[] ba = decrypted;
			response.setContentType("image");
			response.setHeader("Content-Disposition","attachment; fileName=\""+fileName+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("document1");
		}
		else
		{
			//response.sendRedirect("cost_recharge2.jsp");
			System.out.println("null");
		}
%>

</body>
</html>