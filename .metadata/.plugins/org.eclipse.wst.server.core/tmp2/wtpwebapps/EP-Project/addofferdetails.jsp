<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%
 
String iid=request.getParameter("id");
int id=Integer.parseInt(iid);
String ofrom=request.getParameter("from");
String oto=request.getParameter("to");  //field in html form
String noseats=request.getParameter("noofseats");
String rseats=request.getParameter("remainingseats");
String ocost=request.getParameter("cost");
String discount=request.getParameter("discount");
String ipath=request.getParameter("imagepath");
String path1="D:\\EP Project\\EP-Project\\WebContent\\";       // you can change this path

String path=path1+ipath;
File imagefile=new File(path);
FileInputStream fis=new FileInputStream(imagefile);
try
{
   Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
	System.out.println("Connection Established");
	 PreparedStatement pstmt1 = con.prepareStatement("select * from addflight where ffrom=? and fto=? and id=?");
	  pstmt1.setString(1,ofrom);
	  pstmt1.setString(2,oto);
	  pstmt1.setInt(3,id);
	  ResultSet rs = pstmt1.executeQuery();	
	  
	  
	  if(rs.next())
	  {
		  PreparedStatement pst2=con .prepareStatement("select remainingseats from addflight where ffrom='"+ofrom+"' and fto='"+oto+"' and id="+id+"");
			ResultSet rs1=pst2.executeQuery();
			rs1.next();
			int c=rs1.getInt("remainingseats");
			System.out.println("Remaining Seats"+c);
			if(c>=Integer.parseInt(rseats))
			{
   PreparedStatement pstmt=null;
   pstmt=con.prepareStatement("insert into addoffers values(?,?,?,?,?,?,?,?,?)");
   pstmt.setInt(1,id);
   pstmt.setString(2,ofrom);
   pstmt.setString(3,oto);
   pstmt.setString(4,noseats);
   pstmt.setString(5,rseats);
   pstmt.setString(6,ocost);
   pstmt.setString(7,discount);
   pstmt.setBinaryStream(8, (InputStream)fis, (int)(imagefile.length()));
   pstmt.setString(9,ipath);
   pstmt.executeUpdate();
   int remseats=c-Integer.parseInt(rseats);
	PreparedStatement pst1=con .prepareStatement("update addflight set remainingseats="+remseats+" where ffrom='"+ofrom+"' and fto='"+oto+"' and id="+id+"");
	pst1.executeUpdate();
	}
    %>
    <script>
    alert("Details added Successfully");
    window.location="addoffers.html";
    </script>
    <%
   //out.println("Uploaded");
}   
}
catch(Exception e)
{
    out.println("Exception:"+e);
}   
%>