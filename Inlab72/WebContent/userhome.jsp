<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
</head>
<body>

<% out.println("<b>Welcome</b>"+" "+session.getAttribute("luname")+"<br><br>");%>
<a href="userhome">Home</a>&nbsp;&nbsp;&nbsp;

<a href="logoutcheck.jsp">Logout</a><br><br>

<%out.println("List Of Courses"); 
out.println("<br><br>");
%>
<%String name1="python";%>
<a href="checkcount.jsp?c=<%=name1%>">Python</a><br><br>
<%String name2="java";%>
<a href="checkcount.jsp?c=<%=name2%>">EP</a><br><br>
<%String name3="ds";%>
<a href="checkcount.jsp?c=<%=name3%>">DS</a><br><br>
</body>
</html>