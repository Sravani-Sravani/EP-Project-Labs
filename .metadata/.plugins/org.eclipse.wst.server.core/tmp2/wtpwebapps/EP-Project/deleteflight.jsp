<%@ page import="java.sql.*" %>
<%
String id=request.getQueryString();
int userid=Integer.parseInt(id);
Connection con=null;
Class.forName("com.mysql.cj.jdbc.Driver");
System.out.println("Driver Class Loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
System.out.println("Connection Established");
int i=con.createStatement().executeUpdate("delete from addflight where id="+userid+"");
if(i>0)
{
	response.sendRedirect("vdflights.jsp");
}
%>