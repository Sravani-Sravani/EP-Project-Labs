<%@page import="java.util.*, java.time.*,java.sql.*, java.io.*"%>
<%
String fcity=request.getParameter("sfrom");
String tcity=request.getParameter("sto");
String ddate=request.getParameter("sfdate");
String rdate=request.getParameter("stdate");

 %>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>View Users</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Cabin:400,700" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="style3.css">
	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="afstyle.css" />


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
    color: #566787;
    background: #f5f5f5;
    font-family: 'Varela Round', sans-serif;
    font-size: 13px;
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
    min-width: 1000px;
    background: #fff;
    padding: 20px 25px;
    border-radius: 3px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 15px;
    background: #299be4;
    color: #fff;
    padding: 16px 30px;
    margin: -20px -25px 10px;
    border-radius: 3px 3px 0 0;
}
.table-title h2 {
    margin: 5px 0 0;
    font-size: 24px;
}
.table-title .btn {
    color: #566787;
    float: right;
    font-size: 13px;
    background: #fff;
    border: none;
    min-width: 50px;
    border-radius: 2px;
    border: none;
    outline: none !important;
    margin-left: 25px;
}
.table-title .btn:hover, .table-title .btn:focus {
    color: #566787;
    background: #f2f2f2;
}
.table-title .btn i {
    float: left;
    font-size: 21px;
    margin-right: 5px;
}
.table-title .btn span {
    float: left;
    margin-top: 2px;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
    padding: 12px 15px;
    vertical-align: middle;
}
table.table tr th:first-child {
    width: 60px;
}
table.table tr th:last-child {
    width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}	
table.table td:last-child i {
    opacity: 0.9;
    font-size: 22px;
    margin: 0 5px;
}
table.table td a {
    font-weight: bold;
    color: #566787;
    display: inline-block;
    text-decoration: none;
}
table.table td a:hover {
    color: #2196F3;
}
table.table td a.settings {
    color: #2196F3;
}
table.table td a.delete {
    color: #F44336;
}
table.table td i {
    font-size: 19px;
}
table.table .avatar {
    border-radius: 50%;
    vertical-align: middle;
    margin-right: 10px;
}
.status {
    font-size: 30px;
    margin: 2px 2px 0 0;
    display: inline-block;
    vertical-align: middle;
    line-height: 10px;
}
.text-success {
    color: #10c469;
}
.text-info {
    color: #62c9e8;
}
.text-warning {
    color: #FFC107;
}
.text-danger {
    color: #ff5b5b;
}
.pagination {
    float: right;
    margin: 0 0 5px;
}
.pagination li a {
    border: none;
    font-size: 13px;
    min-width: 30px;
    min-height: 30px;
    color: #999;
    margin: 0 2px;
    line-height: 30px;
    border-radius: 2px !important;
    text-align: center;
    padding: 0 6px;
}
.pagination li a:hover {
    color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
    background: #03A9F4;
}
.pagination li.active a:hover {        
    background: #0397d6;
}
.pagination li.disabled i {
    color: #ccc;
}
.pagination li i {
    font-size: 16px;
    padding-top: 6px
}
.hint-text {
    float: left;
    margin-top: 10px;
    font-size: 13px;
}

.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: cyan;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: pink;
  color: black;
}

/* Add a color to the active/current link */


.search {
    width: 100%;
    margin-bottom: auto;
    margin-top: 20px;
    height: 50px;
    background-color: #fff;
    padding: 10px;
    border-radius: 5px;
    margin-right: -50px;
  margin-left: -50px;
}

.search-input {
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
    margin-top: 5px;
    caret-color: transparent;
    line-height: 20px;
    transition: width 0.4s linear;
    
}

.search .search-input {
    padding: 0 10px;
    width: 100%;
    caret-color: #536bf6;
    font-size: 19px;
    font-weight: 300;
    color: black;
    transition: width 0.4s linear
}

.search-icon {
    height: 34px;
    width: 34px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    background-color: #299be4;
    font-size: 10px;
    bottom: 30px;
    position: relative;
    border-radius: 5px
}

.search-icon:hover {
    color: #fff !important
}

a:link {
    text-decoration: none
}


</style>
<script>
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
</script>
</head>
<body>

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


<div class="container-xl">

    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-5">
                       <center> <h2><b>Available Flights</b></h2></center>
                    </div>
    
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>From</th>						
                        <th>To</th>
                        <th>Cost</th>
                        <th align=center>Action</th>
                    </tr>
                    <%

                	Connection con=null;
                	Class.forName("com.mysql.cj.jdbc.Driver");
                	System.out.println("Driver Class Loaded");
                	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
                	System.out.println("Connection Established");
                	ResultSet rs=con.createStatement().executeQuery("select id,name,ffrom,fto,cost from addflight where ffrom='"+fcity+"' and fto='"+tcity+"' ");
                	while(rs.next())
                	{
                	%>
                	<tr>
                	   <td><%=rs.getInt(1)%></td>
                	   <td><%=rs.getString(2)%></td>
                	   <td><%=rs.getString(3)%></td>                        
                	   <td><%=rs.getString(4)%></td>
                	   <td><%=rs.getInt(5)%></td>
                	   <td><a href='flightbooking.jsp?id=<%=rs.getInt(1)%>&name=<%= rs.getString(2)%>&from=<%=rs.getString(3)%>&to=<%=rs.getString(4)%>' class="btn btn-info" role="button">BookNow</a></td>
                	</tr>
                	<%
                	}

                    %>
                </thead>
                
            </table>    
            
        </div>
    </div>
</div>   

<br>
<div class="container-xl">
<div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-5">
                       <center> <h2><b>Available Offers</b></h2></center>
                    </div>
    
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>From</th>						
                        <th>To</th>
                        <th>Cost</th>
                        <th>Discount</th>
                        <th align=center>Action</th>
                    </tr>
                    <%

                	ResultSet rs1=con.createStatement().executeQuery("select id,ffrom,fto,cost,discount from addoffers where ffrom='"+fcity+"' and fto='"+tcity+"' ");
                	while(rs1.next())
                	{
                	%>
                	<tr>
                	   <td><%=rs1.getInt(1)%></td>
                	   <td><%=rs1.getString(2)%></td>
                	   <td><%=rs1.getString(3)%></td>                        
                	   <td><%=rs1.getInt(4)%></td>
                	   <td><%=rs1.getInt(5)%></td>
                	   
                	   <td><a href='oflightbooking.html?id=<%=rs1.getInt(1)%>&name=<%= rs1.getString(2)%>&from=<%=rs1.getString(3)%>' class="btn btn-info" role="button">BookNow</a></td>
                	</tr>
                	<%
                	}

                    %>
                </thead>
                
            </table>
        </div>
    </div>
</div>     

  
</body>
</html>