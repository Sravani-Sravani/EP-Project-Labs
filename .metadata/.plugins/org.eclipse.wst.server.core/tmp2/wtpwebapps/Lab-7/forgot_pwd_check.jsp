<%@page import="java.sql.*"%>

out.println("<a href='forgot_pwd.html'>Change Password</a>");
<%
String p1=request.getParameter("pwd");
String p2=request.getParameter("pwdc");
String u1=(String)session.getAttribute("username");

if(p1.equals(p2))
{
  
  response.sendRedirect("change_pwd.jsp?pwdf="+p1+"&namef="+u1+"");
}
else
{
  out.println("<b>Enter Correct Password</b>");
  RequestDispatcher rd=request.getRequestDispatcher("forgot_pwd.html");
  rd.include(request,response);
}
%>