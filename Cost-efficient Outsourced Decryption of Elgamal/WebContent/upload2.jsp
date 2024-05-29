<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@page import="java.sql.*" %>

 
	<%@page import="java.io.*"%>
	<%@page import="java.util.*"%>
	<%@page import="java.lang.*"%>
	<%@page import="Elgamal.*"%>
		<%@page import="java.util.stream.Collectors"%>
	
	<%@page import="java.math.BigInteger"%>
	<%@page import="java.math.BigDecimal"%>
<%@page import="java.math.BigInteger"%>
<%@page import=" java.io.*"%>
<%@page import=" java.nio.charset.*"%>

   
<%	





String encfilename="";
String sql="";
String s11=(String)session.getAttribute("un").toString();
//System.out.println(s11); 
String s1 = request.getParameter("fname");
//System.out.println(s1);
String file = request.getParameter("file");
//System.out.println(file);
String email = session.getAttribute("pemail").toString();

String indexv = request.getParameter("indexv");

int cnt=0;


/* ======================= encryption key ==============================  */



		//System.out.println("originalKey==== " + originalKey);

		/* ======================= encryption key ==============================  */

				
File f = new File("C:/Users/Default/Desktop/" + file);

String content = null;
try {
	BufferedReader reader = new BufferedReader(new FileReader(f));
	content= reader.lines().collect(Collectors.joining(System.lineSeparator()));
    
} catch (IOException e) {
    e.printStackTrace();
}

System.out.println(content);


//String content = FileUtils.readFileToString(file, StandardCharsets.UTF_8);;//Files.readString(f, StandardCharsets.US_ASCII);


//System.out.println(encrypted);




Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CostefficientOutsourcedDecryptionofElgamalSchemes", "root" , "");


		


		
String msg =content;// "test ram srinu";

System.out.println(msg);
Random random = new Random();
BigInteger lower = Elgamal.elgmal2.power(10, 5);
BigInteger upper = Elgamal.elgmal2.power(10, 10);
BigInteger uu = upper;
//=======================

Random rand = new Random();
BigInteger range = upper.subtract(lower).add(BigInteger.ONE);
int bits = range.bitLength();
BigInteger ret, rect111;
do {
	ret = new BigInteger(bits, rand);
} while (ret.compareTo(range) >= 0);
System.out.println(ret.add(lower));
//System.out.println(ret);

//BigInteger q = Elgamal.RandomBigInteger.random(upper, lower);
BigInteger q = ret;
//==========
double dmin = 2;

BigInteger lowerdmin = BigDecimal.valueOf(dmin).toBigInteger();
//================

BigInteger range1 = q.subtract(lowerdmin).add(BigInteger.ONE);
int bits1 = range1.bitLength();
BigInteger ret1;
do {
	ret1 = new BigInteger(bits1, rand);
} while (ret1.compareTo(range1) >= 0);
System.out.println(ret1.add(lowerdmin));
//System.out.println(ret1);

BigInteger g = ret1;
//BigInteger g = Elgamal.RandomBigInteger.random(q, lowerdmin);
//=============

BigInteger range11 = upper.subtract(lower).add(BigInteger.ONE);
int bits11 = range11.bitLength();
BigInteger ret11;
do {
	ret11 = new BigInteger(bits11, rand);
} while (ret11.compareTo(range11) >= 0);
//System.out.println(ret11.add(lower));
System.out.println(ret11);

BigInteger key = ret11;
//		BigInteger key = Elgamal.RandomBigInteger.random(upper, lower);//private key for rceiver

//==============================

BigInteger h = elgmal2.modexp(g, key, q);
System.out.println("g^k" );
System.out.println("g^k"+h );

//============================

BigInteger range1a = q.subtract(lower).add(BigInteger.ONE);
int bits1a = range1a.bitLength();
BigInteger dd=key;
do {
	ret1 = new BigInteger(bits1a, rand);
} while (dd.compareTo(range1a) >= 0);
out.println("ssssssssss");

System.out.println(dd.add(lower));
//System.out.println(rect111);

BigInteger key1 = dd;
//BigInteger key1 = Elgamal.RandomBigInteger.random(q, lower);//private key for sender
//========================

		System.out.println("g^k" );

BigInteger s = h.modPow(key1,q);// elgmal2.modexp(h, key1, q);
BigInteger p =g.modPow(key1,q);// elgmal2.modexp(g, key1, q);

List<String> list = new ArrayList<String>();

for (int i = 0; i < msg.length(); i++) {

	String msg1 = msg.substring(i, i + 1);

	list.add(msg1);//(msg.charAt(i));
}
System.out.println("g^k" + p);
System.out.println("g^ak" + s);

for (int i = 0; i < list.size(); i++) {
	String cc = list.get(i);
	double cch = cc.charAt(0);

	BigInteger bgcch = BigDecimal.valueOf(cch).toBigInteger();
	BigInteger cchreplace = bgcch.multiply(s);

	BigInteger encvalue = cchreplace;

	String encbgtostr = encvalue.toString();

	list.set(i, encbgtostr);
}

System.out.println(list);


sql="insert into upload(fname,actualfname,encryptedfilename,g,keyy,q,p,s,h,indexkey,uid) values('"+s1+"','"+file+"','"+list+"','"+g+"','"+key+"','"+q+"','"+p+"','"+s+"','"+h+"','"+indexv+"','"+s11+"')";

PreparedStatement ps=con.prepareStatement(sql);
ps.executeUpdate(); 



response.sendRedirect("upload.jsp?msg=File Uploaded Successful");			

%>

