<%@ page import="java.sql.*" %>
<%
String fid=request.getParameter("id");
String fseats = request.getParameter("noofseats");
String rseats=request.getParameter("remainingseats");
String fcost = request.getParameter("cost");
Connection con=null;
PreparedStatement ps = null;
ResultSet rs = null;
Statement stmt = null;
Class.forName("com.mysql.cj.jdbc.Driver");
System.out.println("Driver Class Loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
System.out.println("Connection Established");
ps = con.prepareStatement("update addflight set seats=?,remainingseats=?,cost=? where id=?");
ps.setInt(1,Integer.parseInt(fseats));
ps.setInt(2,Integer.parseInt(rseats));
ps.setInt(3,Integer.parseInt(fcost));
ps.setInt(4,Integer.parseInt(fid));
int i=ps.executeUpdate();
if(ps.executeUpdate()>=1)
{
	response.sendRedirect("vdflights.jsp");
}
%>