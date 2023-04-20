import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Contact extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
	response.setContentType("text/html");  
	PrintWriter out = response.getWriter();  
	          
	String n=request.getParameter("userName");  
	  
	String e=request.getParameter("userEmail");  
	String c=request.getParameter("message");  
	          
	try{  
		Connection con=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver Class Loaded");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
		System.out.println("Connection Established");
	PreparedStatement ps=con.prepareStatement( "insert into ContactDetails values(?,?,?)");  
	  
	ps.setString(1,n);  
	  
	ps.setString(2,e);  
	ps.setString(3,c);  
	          
	int i=ps.executeUpdate(); 
	if(i>0)  
	{
	out.println("Your message is recorded."); 
	out.println("You will shortly recieve a mail");
	}
	}
	catch (Exception e2) 
	{
		System.out.println(e2);
	}  
	          
	out.close();  
	}  
}
