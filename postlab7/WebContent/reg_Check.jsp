<%@page import="java.sql.*"%>
<%

try
{
  
session.setAttribute("user_name",request.getParameter("uname"));
session.setAttribute("c_name",request.getParameter("clgname"));


Connection con=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver class loaded");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ep","ep");
System.out.println("Connection Established");
PreparedStatement pst=con.prepareStatement("insert into accrediation values(?,?,?,?)"); 
System.out.println("hello");
pst.setInt(1,Integer.parseInt(request.getParameter("id"))); 
pst.setString(2,request.getParameter("clgname")); 
pst.setString(3,request.getParameter("uname"));
pst.setString(4,request.getParameter("pwd"));
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