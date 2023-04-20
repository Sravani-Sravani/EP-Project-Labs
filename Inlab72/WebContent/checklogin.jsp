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
PreparedStatement pst=con .prepareStatement("select * from registration where Fname=? and  pwd=? "); 
pst.setString(1,euname); 
pst.setString(2,epwd);

ResultSet rs = pst.executeQuery();

if(rs.next())
{
  session.setAttribute("luname",request.getParameter("uname"));
  RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
  rd.include(request,response);
}
else
{
  out.println("<h3>Invalid Login</h3>");
  RequestDispatcher rd=request.getRequestDispatcher("login.html");
  rd.include(request,response);
}

pst.close(); 
con.close(); 
}
catch(Exception e)
{
  System.out.println(e);
}



%>