<%@page import="java.sql.*"%>
<%


//fetching the values from frontend(registration.html)
int eid=Integer.parseInt(request.getParameter("id"));
String ename=request.getParameter("fname");
String egender=request.getParameter("gender");
String euname=request.getParameter("email");
String eemail=request.getParameter("uname");
String epwd=request.getParameter("pwd");

try
{


	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ep","ep");
	System.out.println("Connection Established");
PreparedStatement pst=con .prepareStatement("insert into registration values(?,?,?,?,?,?)"); 
pst.setInt(1,eid); 
pst.setString(2,ename); 
pst.setString(3,egender);
pst.setString(4,eemail);
pst.setString(5,euname);
pst.setString(6,epwd);
pst.executeUpdate();
pst.close(); 
con.close(); 
response.sendRedirect("login.html");
}
catch(Exception e)
{
  System.out.println(e);
}

%>