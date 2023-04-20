<%@page import="java.util.*, java.time.*,java.sql.*, java.io.*"%>
<% 

String rname=request.getParameter("bname");
String rfrom=request.getParameter("bfrom");
String rto=request.getParameter("bto");
String rcheckin=request.getParameter("bcheckin");
String rcheckout=request.getParameter("bcheckout");
String rseats = request.getParameter("btotalseats");
int id = (int)(Math.random() * 99999 + 1);
session.setAttribute("bid",id);
session.setAttribute("bname",rname);
session.setAttribute("bfrom",rfrom);
session.setAttribute("bto",rto);
session.setAttribute("bcheckin",rcheckin);
session.setAttribute("bcheckout",rcheckout);
session.setAttribute("bseats",Integer.parseInt(rseats));
try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");
	 PreparedStatement pstmt = con.prepareStatement("select * from addoffers where ffrom=? and fto=?");
	  pstmt.setString(1,rfrom);
	  pstmt.setString(2,rto);
	  ResultSet rs = pstmt.executeQuery();
	  
	  	  if(rs.next())
	  {
		int cost2=rs.getInt("cost")*Integer.parseInt(rseats);
		int cost3=cost2*rs.getInt("discount")/100;
		int cost1=cost2-cost3;
		System.out.println(cost1);
		session.setAttribute("cost",cost1);
		session.setMaxInactiveInterval(10);
		System.out.println("Total Cost is:"+cost1);
		PreparedStatement pst2=con .prepareStatement("select availseats from addoffers where ffrom='"+rfrom+"' and fto='"+rto+"'");
		ResultSet rs1=pst2.executeQuery();
		rs1.next();
		int c=rs1.getInt("availseats");
		System.out.println("Remaining Seats"+c);
		if(c>=Integer.parseInt(rseats))
		{
		PreparedStatement pstmt1 = con.prepareStatement("insert into booking values(?,?,?,?,?,?,?,?)");
		pstmt1.setInt(1, id);
		 pstmt1.setString(2, rname);
		 pstmt1.setString(3, rfrom);
		 pstmt1.setString(4, rto);
		 pstmt1.setString(5, rcheckin);
		 pstmt1.setString(6, rcheckout);
		 pstmt1.setInt(7, Integer.parseInt(rseats));
		 pstmt1.setInt(8,cost1);
		 pstmt1.executeUpdate();
		int remseats=c-Integer.parseInt(rseats);
		PreparedStatement pst1=con .prepareStatement("update addoffers set availseats="+remseats+" where ffrom='"+rfrom+"' and fto='"+rto+"'");
		pst1.executeUpdate();
		response.sendRedirect("booking1.jsp");
	  }
		else
		{
			out.println("No sufficient seats are available");
		}
	  }
	  else
	  {
		  %>
		<center>	<h3>Book Again</h3></center><br>
	 <center> <a href="flightbooking.html"> 
      <button class="btn btn-secondary"> 
           Try Again
        </button> 
    </a> </center>
    
 
			<% 
	  }
	 
}
catch(Exception e)
{
	out.println(e);
}


%>