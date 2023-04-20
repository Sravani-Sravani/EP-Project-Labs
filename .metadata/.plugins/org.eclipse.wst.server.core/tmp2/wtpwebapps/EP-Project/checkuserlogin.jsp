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
		//out.println("Successfully Registered");
		response.sendRedirect("home2.html");
	  }
	  else
	  {
		  %>
		<center>	<h3>Invalid Email or Password</h3></center><br>
	 <center> <a href="userlogin.html"> 
      <button class="btn btn-secondary"> 
           Try Again
        </button> 
    </a> </center>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}

%>