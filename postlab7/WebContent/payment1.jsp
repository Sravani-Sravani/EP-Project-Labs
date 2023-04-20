<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment 1</title>
</head>
<body>

<% out.println("<b>Welcome</b>"+" "+session.getAttribute("strr3")+"<br><br>");%>
<a href="userhome">Home</a><br><br>

<center>

<% String str5=(String)session.getAttribute("strr3");
String str6=(String)session.getAttribute("strr4");

session.setAttribute("strr5",str5);
session.setAttribute("strr6",str6);

System.out.println(str5);

out.println("User Name: "+str5+"<br><br>");
out.println("College Name: "+str6+"<br><br>");
out.println("Amount: "+21000+"<br><br>");

%> 

<a href="payment2.jsp" class="button" align="center">Continue</a><br><br>

</center>


</body>
</html>