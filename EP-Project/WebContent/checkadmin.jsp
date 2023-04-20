<%@ page import="java.sql.*" %>
<%

String aid = request.getParameter("aid");
String pwd = request.getParameter("pwd");

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");

	  
	  PreparedStatement pstmt = con.prepareStatement("select * from adminlogin where id=? and password=?");
	  pstmt.setString(1,aid);
	  pstmt.setString(2,pwd);
	  ResultSet rs = pstmt.executeQuery();
	
	  if(rs.next())
	  {
		 session.setAttribute("aid", aid);
		 session.setAttribute("pwd", pwd);
		 response.sendRedirect("Adminhome.html");
	  }
	  else
	  {
		  %>
			<h3>Login Failed</h3><br>
	<a href="adminlogin.html">Try Again</a>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}



%>