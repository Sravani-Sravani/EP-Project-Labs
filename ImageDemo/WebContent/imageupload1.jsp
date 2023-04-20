<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*" %>
<% 
Blob image = null;
byte[ ] imgData = null ;
Connection con=null;
Class.forName("com.mysql.cj.jdbc.Driver");
System.out.println("Driver Class Loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
System.out.println("Connection Established");
ResultSet rs=con.createStatement().executeQuery("select imagepath from imagedemo");
while(rs.next())
{
image = rs.getBlob(1);
imgData = image.getBytes(1,(int)image.length());
response.setContentType("image/gif");
OutputStream o = response.getOutputStream();
o.write(imgData);
}
%> 