<%@ page import="java.util.*, java.time.*,java.sql.*, java.io.*" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Offers</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">

<meta charset="UTF-8">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" type="text/css" href="bootstrap.css">
  <link rel="stylesheet" type="text/css" href="offersstyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>
<body class="w3-content" style="max-width:1200px">
<nav>
   <div class="menu-icon"><span class="fas fa-bars"></span></div>
  <div class="logo"><h1>Fly High</h1></div>
  <div class="nav-items">
    <li><a href="home1.html">Home</a></li>
    <li><a href="searchflight.html">Flights</a></li>
    <li><a href="viewoffers.jsp">Offers</a></li>
    <li><a href="tripideas.html">Trip Ideas</a></li>
    <li><a href="contactus.html">Contact Us</a></li>
    <li><a href="aboutus.html">About Us</a></li>
  </div>
  <form action="#">
    <input type="search" class="search-data" placeholder="Search.." required>
        <button type="submit"><i class="fa fa-search"></i></button>
  </form>
</nav>
<div class="jumbtron">

<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:20px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
  
   <%
Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
int id,discount;
String ffrom,fto,imagepath;
int c=0;
try 
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");
	ResultSet rs=con.createStatement().executeQuery("select id,ffrom,fto,imgloc,discount from addoffers");
  while(rs.next()) 
  {
    c++;
    id=rs.getInt(1);
    ffrom=rs.getString(2);
    fto=rs.getString(3);
    imagepath=rs.getString(4);
    discount=rs.getInt(5);
    /*response.setContentType("image/gif");
    OutputStream o = response.getOutputStream();
   
    
    o.write(imgData);*/
    System.out.println("Image Location"+imagepath);
    if((c-1)%4==0)
    {
    	%>
  
    <div class="w3-quarter">
      <img src=<%=imagepath%> alt="Sandwich" style="width:90%">
     <h3> <h3><%=ffrom%></h3> To <h3><%=fto%></h3></h3>
      <h4><b><%=discount%>% OFF YOUR PURCHASE</b></h4>
      <p class="expire">Expires: Jan 03, 2021</p>
       <a href="oflightbooking.html" class="btn btn-primary">Book now</a>
    </div>
    
    <% 
    }
    else if((c-2)%4==0)
    {
    %>
    
    <div class="w3-quarter">
      <img src=<%=imagepath %> alt="Steak" style="width:90%">
      <h3> <h3><%=ffrom%></h3> To <h3><%=fto%></h3></h3>
      <h4><b><%=discount%>% OFF YOUR PURCHASE</b></h4>
      <p class="expire">Expires: Jan 03, 2021</p>
   <a href="oflightbooking.html" class="btn btn-primary">Book now</a>
    </div>
    
    
    <% 
    }
    else if((c-3)%4==0)
    { 
     %>
    
    <div class="w3-quarter">
      <img src=<%=imagepath %> alt="Cherries" style="width:90%">
      <h3> <h3><%=ffrom%></h3> To <h3><%=fto%></h3></h3>
      <h4><b><%=discount%>% OFF YOUR PURCHASE</b></h4>
      <p class="expire">Expires: Jan 03, 2021</p>
    <a href="oflightbooking.html" class="btn btn-primary">Book now</a>
    </div>
    
    
    <% 
    }
    else
    {
      %>
    
    <div class="w3-quarter">
      <img src=<%=imagepath %> alt="Cherries" style="width:90%">
      <h3> <h3><%=ffrom%></h3> To <h3><%=fto%></h3></h3>
      <h4><b><%=discount%>% OFF YOUR PURCHASE</b></h4>
      <p class="expire">Expires: Jan 03, 2021</p>
    <a href="oflightbooking.html" class="btn btn-primary">Book now</a>
    </div>
    </div>
    <% 
    }
  } 
  
  
  
  } 
  catch (Exception e) 
  {
    out.println("Unable To Display image");
    out.println("Image Display Error=" + e.getMessage());
    return;
  } 
  finally 
  {
  try 
  {

  //stmt.close();
  con.close();
  } 
catch (SQLException e) 
{
e.printStackTrace();
}
}
%> 
</div>
</div>
</body>
</html>
