<%@page import="java.util.*, java.time.*,java.sql.*, java.io.*"%>
<%
String from=request.getParameter("from");
String to=request.getParameter("to");

%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Flight Booking</title>
	
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

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>

<nav>
   <div class="menu-icon"><span class="fas fa-bars"></span></div>
	<div class="logo"><h1>Fly High</h1></div>
	<div class="nav-items">
		<li><a href="home1.html">Home</a></li>
		<li><a href="flightbooking.html">Flights</a></li>
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

	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="booking-bg"></div>
						<form method="post" action="booking.jsp">
							<div class="form-header">
								<h2>Book a Flight</h2>
							</div>
							<div class="form-group">
								<span class="form-label">Name</span>
								<input class="form-control" type="text" name="bname" placeholder="Enter Name">
							</div>
							<div class="form-group">
								<span class="form-label">From</span>
								<input class="form-control" type="text" name="bfrom" placeholder="Enter your source" value="<%=from%>">
							</div>
							<div class="form-group">
								<span class="form-label">To   </span>
								<input class="form-control" type="text" name="bto" placeholder="Enter your destination" value="<%=to%>">
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Check In</span>
										<input class="form-control" type="date" name="bcheckin" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Check Out</span>
										<input class="form-control" type="date" name="bcheckout" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<span class="form-label">Total Seats</span>
								<input class="form-control" type="number" name="btotalseats" placeholder="Enter total seats">
							</div>
							
							<div class="form-btn">
								<button class="submit-btn">Continue</button>
							</div>
						</form>
					</div>
				</div>
			</div> 
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>