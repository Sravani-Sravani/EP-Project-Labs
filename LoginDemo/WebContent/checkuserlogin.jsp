<%@ page import="java.sql.*" %>
<%

String email = request.getParameter("lemail");
String pwd = request.getParameter("lpassword");

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");	  
	  PreparedStatement pstmt = con.prepareStatement("select * from userreg where email=? and password=?");
	  pstmt.setString(1,email);
	  pstmt.setString(2,pwd);
	  ResultSet rs = pstmt.executeQuery();
	  if(rs.next())
	  {
		 session.setAttribute("uname", rs.getString("name"));
		 session.setAttribute("uemail", email);
		 session.setAttribute("upassword", pwd);
		 session.setMaxInactiveInterval(100);
		// response.sendRedirect("userhome.jsp");
		out.println("Successfully Registered");
	  }
	  else
	  {
		  %>
			<h3>Login Failed</h3><br>
	<a href="userlogin.html">Try Again</a>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}



%>