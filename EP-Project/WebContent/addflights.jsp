<%@ page import="java.sql.*" %><%@ page import="java.sql.*" %>

<%
String fname = request.getParameter("name");
String ffrom = request.getParameter("from");
String fto = request.getParameter("to");
String seats = request.getParameter("noofseats");
String rseats = request.getParameter("remainingseats");
String cost = request.getParameter("cost");

int id = (int)(Math.random() * 99999 + 1);

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");
	PreparedStatement pstmt = con.prepareStatement("insert into addflight values(?,?,?,?,?,?,?)");
		 
		 pstmt.setInt(1, id);
		 pstmt.setString(2, fname);
		 pstmt.setString(3, ffrom);
		 pstmt.setString(4, fto);
		 pstmt.setString(5, seats);
		 pstmt.setString(6,rseats);
		 pstmt.setString(7, cost);
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
			<script>
			alert("Flight added Successfully");
			window.location="addflights.html";
			</script>
			<% 
		 }
		 else
		 {
				%>
				<h3>Flight Details not added in to the database</h3><br>
		<a href="reg.html">Try to Register Again</a>
				<% 
		 }
		
	 
	 
	 
	 
}
catch(Exception e)
{
	out.println(e);
}

%>