<%@ page import="java.util.*, java.time.*,java.sql.*, java.io.*"
language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title>Flight Booking</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(10, 10, 10, 0.2);
  background-color:black;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

a.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #555;
  text-align: center;
  cursor: pointer;
  width: 10%;
}

.button:hover {
  background-color: #555;
}
footer 
    {
      text-align: center;
      padding: 3px;
      background-color: black;
      color: white;
    }
 </style>
</head>
<body style="background-color:lightblue;">

  <h2 align=center> Flight Booking </h2>
<br>
<h2 align=center></h2><br>
<% 
Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
String id,name,description,imagepath;
int c=0;
try 
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");
	ResultSet rs=con.createStatement().executeQuery("select id,name,imagepath from imagedemo");
  while(rs.next()) 
  {
    c++;
    id=rs.getString(1);
    name=rs.getString(2);
    imagepath=rs.getString(3);
    /*response.setContentType("image/gif");
    OutputStream o = response.getOutputStream();
    
    o.write(imgData);*/
    if((c-1)%3==0)
    {
    	//BookCheck.jsp?b_name=<%=name%>
      
      
      <div class="row">
  <div class="column">
    <div class="card" style="width:53% ;margin-left:20%">
      <img src=<%=imagepath %> alt="one" style="width:100%">
      <div class="container">
        <h5 style="color:white;"><%=id%></h2>
          <p style="color:white;"><%=name%></p>
            <p><a href="" class="button">Book Now!</a></p>
      </div>
    </div>
  </div>
      
      
      <% 
    }
    else if((c-2)%3==0)
    {
    	// BookCheck.jsp?b_name=<%=name%>
    %>
    
    <div class="column">
    <div class="card" style="width:53% ;margin-left:20%">
      <img src=<%=imagepath %> alt="one" style="width:100%">
      <div class="container">
        <h5 style="color:white;"><%=id%></h2>
          <p style="color:white;"><%=name%></p>
            <p><a href="" class="button">Book Now!</a></p>
           
      </div>
    </div>
  </div>
    
    <% 
    }
    else
    {
    	//BookCheck.jsp?b_name=<%=name%>
      <div class="column">
        <div class="card" style="width:53%;margin-left:20%">
          <img src=<%=imagepath %> alt="one" style="width:100%">
      <div class="container">
        <h5 style="color:white;"><%=id%></h2>
          <p style="color:white;"><%=name%></p>
            <p><a href="" class="button">Book Now!</a></p>
          </div>
        </div>
      </div>
    </div>
    <br><br><br><br>
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

  stmt.close();
  con.close();
  } 
catch (SQLException e) 
{
e.printStackTrace();
}
}
%> 


</body>
<html>