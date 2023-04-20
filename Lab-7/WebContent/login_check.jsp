<%@page import="java.sql.*"%>

<%
//fetching the values from frontend(enrollment.html)
String euname=request.getParameter("uname");
String epwd=request.getParameter("pwd");

try
{

	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ep","ep");
	System.out.println("Connection Established");
PreparedStatement pst=con .prepareStatement("select * from lab7_inlab1 where uname=? and  pwd=? "); 
pst.setString(1,euname); 
pst.setString(2,epwd);

ResultSet rs = pst.executeQuery();

if(rs.next())
{
  response.sendRedirect("userhome.html");
}
else
{
  session.setAttribute("username", euname);
  out.println("<h3>Wrong Password</h3>");
  out.println("<a href='forgot_pwd.html'>Change Password</a>");
  //response.sendRedirect("ForgotPwdCheck.jsp?unamef="+euname+"");
}

pst.close(); 
con.close(); 
}
catch(Exception e)
{
  System.out.println(e);
}



%>