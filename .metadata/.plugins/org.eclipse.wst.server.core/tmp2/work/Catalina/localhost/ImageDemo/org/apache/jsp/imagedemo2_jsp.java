/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2021-03-31 08:47:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.time.*;
import java.sql.*;
import java.io.*;

public final class imagedemo2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("java.time");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("  <title>Flight Booking</title>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <style>\r\n");
      out.write("    html {\r\n");
      out.write("  box-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("*, *:before, *:after {\r\n");
      out.write("  box-sizing: inherit;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".column {\r\n");
      out.write("  float: left;\r\n");
      out.write("  width: 33.3%;\r\n");
      out.write("  margin-bottom: 16px;\r\n");
      out.write("  padding: 0 8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media screen and (max-width: 650px) {\r\n");
      out.write("  .column {\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    display: block;\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card {\r\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(10, 10, 10, 0.2);\r\n");
      out.write("  background-color:black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".container {\r\n");
      out.write("  padding: 0 16px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".container::after, .row::after {\r\n");
      out.write("  content: \"\";\r\n");
      out.write("  clear: both;\r\n");
      out.write("  display: table;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".title {\r\n");
      out.write("  color: grey;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a.button {\r\n");
      out.write("  border: none;\r\n");
      out.write("  outline: 0;\r\n");
      out.write("  display: inline-block;\r\n");
      out.write("  padding: 8px;\r\n");
      out.write("  color: white;\r\n");
      out.write("  background-color: #555;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("  width: 10%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".button:hover {\r\n");
      out.write("  background-color: #555;\r\n");
      out.write("}\r\n");
      out.write("footer \r\n");
      out.write("    {\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      padding: 3px;\r\n");
      out.write("      background-color: black;\r\n");
      out.write("      color: white;\r\n");
      out.write("    }\r\n");
      out.write(" </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"background-color:lightblue;\">\r\n");
      out.write("\r\n");
      out.write("  <h2 align=center> Flight Booking </h2>\r\n");
      out.write("<br>\r\n");
      out.write("<h2 align=center></h2><br>\r\n");
 
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
    	//BookCheck.jsp?b_name=<%=name
      out.write("\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("  <div class=\"column\">\r\n");
      out.write("    <div class=\"card\" style=\"width:53% ;margin-left:20%\">\r\n");
      out.write("      <img src=");
      out.print(imagepath );
      out.write(" alt=\"one\" style=\"width:100%\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <h5 style=\"color:white;\">");
      out.print(id);
      out.write("</h2>\r\n");
      out.write("          <p style=\"color:white;\">");
      out.print(name);
      out.write("</p>\r\n");
      out.write("            <p><a href=\"\" class=\"button\">Book Now!</a></p>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      ");
 
    }
    else if((c-2)%3==0)
    {
    	// BookCheck.jsp?b_name=<%=name
      out.write("\r\n");
      out.write("    %>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"column\">\r\n");
      out.write("    <div class=\"card\" style=\"width:53% ;margin-left:20%\">\r\n");
      out.write("      <img src=");
      out.print(imagepath );
      out.write(" alt=\"one\" style=\"width:100%\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <h5 style=\"color:white;\">");
      out.print(id);
      out.write("</h2>\r\n");
      out.write("          <p style=\"color:white;\">");
      out.print(name);
      out.write("</p>\r\n");
      out.write("            <p><a href=\"\" class=\"button\">Book Now!</a></p>\r\n");
      out.write("           \r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("    \r\n");
      out.write("    ");
 
    }
    else
    {
    	//BookCheck.jsp?b_name=<%=name
      out.write("\r\n");
      out.write("      <div class=\"column\">\r\n");
      out.write("        <div class=\"card\" style=\"width:53%;margin-left:20%\">\r\n");
      out.write("          <img src=");
      out.print(imagepath );
      out.write(" alt=\"one\" style=\"width:100%\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <h5 style=\"color:white;\">");
      out.print(id);
      out.write("</h2>\r\n");
      out.write("          <p style=\"color:white;\">");
      out.print(name);
      out.write("</p>\r\n");
      out.write("            <p><a href=\"\" class=\"button\">Book Now!</a></p>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <br><br><br><br>\r\n");
      out.write("    ");
 
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

      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
