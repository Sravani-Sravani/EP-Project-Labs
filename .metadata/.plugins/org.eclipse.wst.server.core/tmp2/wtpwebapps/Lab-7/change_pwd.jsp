<%@page import="java.sql.*"%>
<%


try
{


	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ep","ep");
	System.out.println("Connection Established");
PreparedStatement pst=con .prepareStatement("update lab7_inlab1 set pwd=? where uname=?"); 
pst.setString(1,request.getParameter("pwdf")); 
pst.setString(2,request.getParameter("namef")); 
pst.executeUpdate();
pst.close(); 
con.close(); 
out.println("<b>Password Changed Successfully");
//out.println(request.getParameter("pwdf")+" "+request.getParameter("namef"));
}
catch(Exception e)
{
  System.out.println(e);
}

%>