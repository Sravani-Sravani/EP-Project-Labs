<%@page import="java.util.*,java.sql.*"%>
<% String user_name=(String)session.getAttribute("luname");
String course_name=request.getParameter("c");


System.out.println(user_name);
System.out.println(course_name);
try
{
	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ep","ep");
	System.out.println("Connection Established");

PreparedStatement pst1=con.prepareStatement("select cid,cname from udemy where cname='"+course_name+"'");
ResultSet rs1=pst1.executeQuery();

PreparedStatement pst7=con.prepareStatement("select * from visitcount where cname='"+course_name+"'");
ResultSet rs7=pst7.executeQuery();
int count=0;
while(rs7.next())
{
count++;
}
rs1.next();

System.out.println(1);
System.out.println(count);

if(count==0)
{
  int id=rs1.getInt("cid");
  String str=rs1.getString("cname");
  PreparedStatement pst2=con.prepareStatement("insert into visitcount values(?,?,?,?)");
  pst2.setString(1,user_name);
  pst2.setInt(2,id);
  pst2.setString(3,str);
  pst2.setInt(4,0);
  pst2.execute();
}
System.out.println(3);


PreparedStatement pst=con.prepareStatement("select ccount from visitcount where uname='"+user_name+"'");
ResultSet rs=pst.executeQuery();
System.out.println(4);
rs.next();
int c=rs.getInt("ccount");

PreparedStatement pst3=con.prepareStatement("update visitcount set ccount="+c+"+1 where uname='"+user_name+"'");
pst3.executeUpdate();

System.out.println(7);

if((c+1)>1)
{
  
  PreparedStatement pst10=con.prepareStatement("select cid from visitcount where cname='"+course_name+"'");
  ResultSet rs9=pst10.executeQuery();
  rs9.next();
  int tid=rs9.getInt("cid");
  System.out.println("g"+tid);
  PreparedStatement pst4=con.prepareStatement("update udemy set ccost=ccost+50 where cname='"+course_name+"'");
  pst4.executeUpdate();
  PreparedStatement pst6=con.prepareStatement("select ccost from udemy where cname='"+course_name+"'");
  ResultSet rsf=pst6.executeQuery();
  rsf.next();
  out.println("Cost is:"+rsf.getInt("ccost"));
}
}
catch (Exception e)
{
  System.out.println(e);
}
%>