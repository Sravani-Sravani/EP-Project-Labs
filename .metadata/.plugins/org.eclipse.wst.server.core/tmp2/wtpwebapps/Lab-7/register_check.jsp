<%@page import="java.sql.*"%>
<%


//fetching the values from frontend(enrollment.html)
String ename=request.getParameter("fname");
String egender=request.getParameter("gender");
String eemail=request.getParameter("email");
String euname=request.getParameter("uname");
String epwd=request.getParameter("pwd");
String eloc=request.getParameter("loc");

try
{

	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ep","ep");
	System.out.println("Connection Established");
PreparedStatement pst=con .prepareStatement("insert into lab7_inlab1 values(?,?,?,?,?,?)"); 
pst.setString(1,ename); 
pst.setString(2,egender); 
pst.setString(3,eemail);
pst.setString(4,euname);
pst.setString(5,epwd);
pst.setString(6,eloc);
pst.executeUpdate();
pst.close(); 
con.close(); 
response.sendRedirect("LOGIN.html");
}
catch(Exception e)
{
  System.out.println(e);
}

%>