<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%
int code = (int)(Math.random() * 9999999)+99999; 
String id=Integer.toString(code);
String name=request.getParameter("name");
String description=request.getParameter("description");
String imagepath=request.getParameter("imagepath");  //field in html form

String path1="D:/";       // you can change this path

String path=path1+imagepath;
File imagefile=new File(path);
FileInputStream fis=new FileInputStream(imagefile);
try
{
   Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");
   PreparedStatement pstmt=null;
   pstmt=con.prepareStatement("insert into imagedemo values(?,?,?,?)");
   pstmt.setString(1,id);
   pstmt.setString(2,name);
   pstmt.setString(3,description);
   pstmt.setBinaryStream(4, (InputStream)fis, (int)(imagefile.length()));
   
   pstmt.executeUpdate();
    
   out.println("Uploaded");
}   
catch(Exception e)
{
    out.println("Exception:"+e);
}   
%>