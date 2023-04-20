<%@ page import="java.sql.*" %>

<%
String fname = request.getParameter("uname");
String email = request.getParameter("uemail");
String pwd = request.getParameter("upassword");

int id = (int)(Math.random() * 99999 + 1);

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");
	 PreparedStatement ps = con.prepareStatement("select * from userreg where  email=?");
	 ps.setString(1, email);
	 ResultSet rs = ps.executeQuery();
	 
	 if(rs.next())
	 {
		 %>
			<h3>Email Id already available</h3><br>
	<a href="userlogin.html">Try Again</a>
			<%  
	 }
	 else
	 {
		 PreparedStatement pstmt = con.prepareStatement("insert into userreg values(?,?,?,?)");
		 
		 pstmt.setInt(1, id);
		 pstmt.setString(2, fname);
		 pstmt.setString(3, email);
		 pstmt.setString(4, pwd);
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
			<script>
			alert("User Registration Successful");
			window.location="userlogin.jsp";
			</script>
			<% 
		 }
		 else
		 {
				%>
				<h3>User Registration UnSuccessful</h3><br>
		<a href="userlogin.jsp">Try to Register Again</a>
				<% 
		 }
		
	 }
	 
	 
	 
	 
}
catch(Exception e)
{
	out.println(e);
}

%>