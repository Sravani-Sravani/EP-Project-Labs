<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%out.println("<b>Transaction Successful</b> <br><br>"); %>

<center>

<% String str7=(String)session.getAttribute("strr5");
String str8=(String)session.getAttribute("strr6");

out.println("User Name: "+str7+"<br><br>");
out.println("College Name: "+str8+"<br><br>");
out.println("Amount: "+21000+"<br><br>");

%>  

<a href="userhome.jsp" class="button" align="center">Go Back To Home</a><br><br>

</center>
</body>
</html>