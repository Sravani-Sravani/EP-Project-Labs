/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2021-05-29 12:31:57 UTC
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
import java.sql.*;

public final class searchflights_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

String fcity=request.getParameter("sfrom");
String tcity=request.getParameter("sto");
String ddate=request.getParameter("sfdate");
String rdate=request.getParameter("stdate");

 
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("<title>View Users</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto|Varela+Round\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap.css\">\r\n");
      out.write("\t\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("\r\n");
      out.write("\t<!-- Google font -->\r\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Cabin:400,700\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style3.css\">\r\n");
      out.write("\t<!-- Bootstrap -->\r\n");
      out.write("\t<link type=\"text/css\" rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("\r\n");
      out.write("\t<!-- Custom stlylesheet -->\r\n");
      out.write("\t<link type=\"text/css\" rel=\"stylesheet\" href=\"afstyle.css\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\"></script>\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("body {\r\n");
      out.write("    color: #566787;\r\n");
      out.write("    background: #f5f5f5;\r\n");
      out.write("    font-family: 'Varela Round', sans-serif;\r\n");
      out.write("    font-size: 13px;\r\n");
      out.write("}\r\n");
      out.write(".table-responsive {\r\n");
      out.write("    margin: 30px 0;\r\n");
      out.write("}\r\n");
      out.write(".table-wrapper {\r\n");
      out.write("    min-width: 1000px;\r\n");
      out.write("    background: #fff;\r\n");
      out.write("    padding: 20px 25px;\r\n");
      out.write("    border-radius: 3px;\r\n");
      out.write("    box-shadow: 0 1px 1px rgba(0,0,0,.05);\r\n");
      out.write("}\r\n");
      out.write(".table-title {\r\n");
      out.write("    padding-bottom: 15px;\r\n");
      out.write("    background: #299be4;\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    padding: 16px 30px;\r\n");
      out.write("    margin: -20px -25px 10px;\r\n");
      out.write("    border-radius: 3px 3px 0 0;\r\n");
      out.write("}\r\n");
      out.write(".table-title h2 {\r\n");
      out.write("    margin: 5px 0 0;\r\n");
      out.write("    font-size: 24px;\r\n");
      out.write("}\r\n");
      out.write(".table-title .btn {\r\n");
      out.write("    color: #566787;\r\n");
      out.write("    float: right;\r\n");
      out.write("    font-size: 13px;\r\n");
      out.write("    background: #fff;\r\n");
      out.write("    border: none;\r\n");
      out.write("    min-width: 50px;\r\n");
      out.write("    border-radius: 2px;\r\n");
      out.write("    border: none;\r\n");
      out.write("    outline: none !important;\r\n");
      out.write("    margin-left: 25px;\r\n");
      out.write("}\r\n");
      out.write(".table-title .btn:hover, .table-title .btn:focus {\r\n");
      out.write("    color: #566787;\r\n");
      out.write("    background: #f2f2f2;\r\n");
      out.write("}\r\n");
      out.write(".table-title .btn i {\r\n");
      out.write("    float: left;\r\n");
      out.write("    font-size: 21px;\r\n");
      out.write("    margin-right: 5px;\r\n");
      out.write("}\r\n");
      out.write(".table-title .btn span {\r\n");
      out.write("    float: left;\r\n");
      out.write("    margin-top: 2px;\r\n");
      out.write("}\r\n");
      out.write("table.table tr th, table.table tr td {\r\n");
      out.write("    border-color: #e9e9e9;\r\n");
      out.write("    padding: 12px 15px;\r\n");
      out.write("    vertical-align: middle;\r\n");
      out.write("}\r\n");
      out.write("table.table tr th:first-child {\r\n");
      out.write("    width: 60px;\r\n");
      out.write("}\r\n");
      out.write("table.table tr th:last-child {\r\n");
      out.write("    width: 100px;\r\n");
      out.write("}\r\n");
      out.write("table.table-striped tbody tr:nth-of-type(odd) {\r\n");
      out.write("    background-color: #fcfcfc;\r\n");
      out.write("}\r\n");
      out.write("table.table-striped.table-hover tbody tr:hover {\r\n");
      out.write("    background: #f5f5f5;\r\n");
      out.write("}\r\n");
      out.write("table.table th i {\r\n");
      out.write("    font-size: 13px;\r\n");
      out.write("    margin: 0 5px;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("}\t\r\n");
      out.write("table.table td:last-child i {\r\n");
      out.write("    opacity: 0.9;\r\n");
      out.write("    font-size: 22px;\r\n");
      out.write("    margin: 0 5px;\r\n");
      out.write("}\r\n");
      out.write("table.table td a {\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    color: #566787;\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("table.table td a:hover {\r\n");
      out.write("    color: #2196F3;\r\n");
      out.write("}\r\n");
      out.write("table.table td a.settings {\r\n");
      out.write("    color: #2196F3;\r\n");
      out.write("}\r\n");
      out.write("table.table td a.delete {\r\n");
      out.write("    color: #F44336;\r\n");
      out.write("}\r\n");
      out.write("table.table td i {\r\n");
      out.write("    font-size: 19px;\r\n");
      out.write("}\r\n");
      out.write("table.table .avatar {\r\n");
      out.write("    border-radius: 50%;\r\n");
      out.write("    vertical-align: middle;\r\n");
      out.write("    margin-right: 10px;\r\n");
      out.write("}\r\n");
      out.write(".status {\r\n");
      out.write("    font-size: 30px;\r\n");
      out.write("    margin: 2px 2px 0 0;\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    vertical-align: middle;\r\n");
      out.write("    line-height: 10px;\r\n");
      out.write("}\r\n");
      out.write(".text-success {\r\n");
      out.write("    color: #10c469;\r\n");
      out.write("}\r\n");
      out.write(".text-info {\r\n");
      out.write("    color: #62c9e8;\r\n");
      out.write("}\r\n");
      out.write(".text-warning {\r\n");
      out.write("    color: #FFC107;\r\n");
      out.write("}\r\n");
      out.write(".text-danger {\r\n");
      out.write("    color: #ff5b5b;\r\n");
      out.write("}\r\n");
      out.write(".pagination {\r\n");
      out.write("    float: right;\r\n");
      out.write("    margin: 0 0 5px;\r\n");
      out.write("}\r\n");
      out.write(".pagination li a {\r\n");
      out.write("    border: none;\r\n");
      out.write("    font-size: 13px;\r\n");
      out.write("    min-width: 30px;\r\n");
      out.write("    min-height: 30px;\r\n");
      out.write("    color: #999;\r\n");
      out.write("    margin: 0 2px;\r\n");
      out.write("    line-height: 30px;\r\n");
      out.write("    border-radius: 2px !important;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    padding: 0 6px;\r\n");
      out.write("}\r\n");
      out.write(".pagination li a:hover {\r\n");
      out.write("    color: #666;\r\n");
      out.write("}\t\r\n");
      out.write(".pagination li.active a, .pagination li.active a.page-link {\r\n");
      out.write("    background: #03A9F4;\r\n");
      out.write("}\r\n");
      out.write(".pagination li.active a:hover {        \r\n");
      out.write("    background: #0397d6;\r\n");
      out.write("}\r\n");
      out.write(".pagination li.disabled i {\r\n");
      out.write("    color: #ccc;\r\n");
      out.write("}\r\n");
      out.write(".pagination li i {\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    padding-top: 6px\r\n");
      out.write("}\r\n");
      out.write(".hint-text {\r\n");
      out.write("    float: left;\r\n");
      out.write("    margin-top: 10px;\r\n");
      out.write("    font-size: 13px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".topnav {\r\n");
      out.write("  background-color: #333;\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Style the links inside the navigation bar */\r\n");
      out.write(".topnav a {\r\n");
      out.write("  float: left;\r\n");
      out.write("  color: cyan;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  padding: 14px 16px;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  font-size: 17px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Change the color of links on hover */\r\n");
      out.write(".topnav a:hover {\r\n");
      out.write("  background-color: pink;\r\n");
      out.write("  color: black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Add a color to the active/current link */\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".search {\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    margin-bottom: auto;\r\n");
      out.write("    margin-top: 20px;\r\n");
      out.write("    height: 50px;\r\n");
      out.write("    background-color: #fff;\r\n");
      out.write("    padding: 10px;\r\n");
      out.write("    border-radius: 5px;\r\n");
      out.write("    margin-right: -50px;\r\n");
      out.write("  margin-left: -50px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".search-input {\r\n");
      out.write("    color: white;\r\n");
      out.write("    border: 0;\r\n");
      out.write("    outline: 0;\r\n");
      out.write("    background: none;\r\n");
      out.write("    width: 0;\r\n");
      out.write("    margin-top: 5px;\r\n");
      out.write("    caret-color: transparent;\r\n");
      out.write("    line-height: 20px;\r\n");
      out.write("    transition: width 0.4s linear;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".search .search-input {\r\n");
      out.write("    padding: 0 10px;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    caret-color: #536bf6;\r\n");
      out.write("    font-size: 19px;\r\n");
      out.write("    font-weight: 300;\r\n");
      out.write("    color: black;\r\n");
      out.write("    transition: width 0.4s linear\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".search-icon {\r\n");
      out.write("    height: 34px;\r\n");
      out.write("    width: 34px;\r\n");
      out.write("    float: right;\r\n");
      out.write("    display: flex;\r\n");
      out.write("    justify-content: center;\r\n");
      out.write("    align-items: center;\r\n");
      out.write("    color: white;\r\n");
      out.write("    background-color: #299be4;\r\n");
      out.write("    font-size: 10px;\r\n");
      out.write("    bottom: 30px;\r\n");
      out.write("    position: relative;\r\n");
      out.write("    border-radius: 5px\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".search-icon:hover {\r\n");
      out.write("    color: #fff !important\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a:link {\r\n");
      out.write("    text-decoration: none\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<script>\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("\t$('[data-toggle=\"tooltip\"]').tooltip();\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav>\r\n");
      out.write("   <div class=\"menu-icon\"><span class=\"fas fa-bars\"></span></div>\r\n");
      out.write("\t<div class=\"logo\"><h1>Fly High</h1></div>\r\n");
      out.write("\t<div class=\"nav-items\">\r\n");
      out.write("\t\t<li><a href=\"home1.html\">Home</a></li>\r\n");
      out.write("\t\t<li><a href=\"searchflight.html\">Flights</a></li>\r\n");
      out.write("\t\t<li><a href=\"viewoffers.jsp\">Offers</a></li>\r\n");
      out.write("\t\t<li><a href=\"tripideas.html\">Trip Ideas</a></li>\r\n");
      out.write("\t\t<li><a href=\"contactus.html\">Contact Us</a></li>\r\n");
      out.write("\t\t<li><a href=\"aboutus.html\">About Us</a></li>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<form action=\"#\">\r\n");
      out.write("\t\t<input type=\"search\" class=\"search-data\" placeholder=\"Search..\" required>\r\n");
      out.write("        <button type=\"submit\"><i class=\"fa fa-search\"></i></button>\r\n");
      out.write("\t</form>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-xl\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"table-responsive\">\r\n");
      out.write("        <div class=\"table-wrapper\">\r\n");
      out.write("            <div class=\"table-title\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-5\">\r\n");
      out.write("                       <center> <h2><b>Available Flights</b></h2></center>\r\n");
      out.write("                    </div>\r\n");
      out.write("    \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <table class=\"table table-striped table-hover\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Id</th>\r\n");
      out.write("                        <th>Name</th>\r\n");
      out.write("                        <th>From</th>\t\t\t\t\t\t\r\n");
      out.write("                        <th>To</th>\r\n");
      out.write("                        <th>Cost</th>\r\n");
      out.write("                        <th align=center>Action</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    ");


                	Connection con=null;
                	Class.forName("com.mysql.cj.jdbc.Driver");
                	System.out.println("Driver Class Loaded");
                	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyhigh", "root","root");
                	System.out.println("Connection Established");
                	ResultSet rs=con.createStatement().executeQuery("select id,name,ffrom,fto,cost from addflight where ffrom='"+fcity+"' and fto='"+tcity+"' ");
                	while(rs.next())
                	{
                	
      out.write("\r\n");
      out.write("                \t<tr>\r\n");
      out.write("                \t   <td>");
      out.print(rs.getInt(1));
      out.write("</td>\r\n");
      out.write("                \t   <td>");
      out.print(rs.getString(2));
      out.write("</td>\r\n");
      out.write("                \t   <td>");
      out.print(rs.getString(3));
      out.write("</td>                        \r\n");
      out.write("                \t   <td>");
      out.print(rs.getString(4));
      out.write("</td>\r\n");
      out.write("                \t   <td>");
      out.print(rs.getInt(5));
      out.write("</td>\r\n");
      out.write("                \t   <td><a href='flightbooking.jsp?id=");
      out.print(rs.getInt(1));
      out.write("&name=");
      out.print( rs.getString(2));
      out.write("&from=");
      out.print(rs.getString(3));
      out.write("&to=");
      out.print(rs.getString(4));
      out.write("' class=\"btn btn-info\" role=\"button\">BookNow</a></td>\r\n");
      out.write("                \t</tr>\r\n");
      out.write("                \t");

                	}

                    
      out.write("\r\n");
      out.write("                </thead>\r\n");
      out.write("                \r\n");
      out.write("            </table>    \r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>   \r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<div class=\"container-xl\">\r\n");
      out.write("<div class=\"table-responsive\">\r\n");
      out.write("        <div class=\"table-wrapper\">\r\n");
      out.write("            <div class=\"table-title\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-5\">\r\n");
      out.write("                       <center> <h2><b>Available Offers</b></h2></center>\r\n");
      out.write("                    </div>\r\n");
      out.write("    \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <table class=\"table table-striped table-hover\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Id</th>\r\n");
      out.write("                        <th>From</th>\t\t\t\t\t\t\r\n");
      out.write("                        <th>To</th>\r\n");
      out.write("                        <th>Cost</th>\r\n");
      out.write("                        <th>Discount</th>\r\n");
      out.write("                        <th align=center>Action</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    ");


                	ResultSet rs1=con.createStatement().executeQuery("select id,ffrom,fto,cost,discount from addoffers where ffrom='"+fcity+"' and fto='"+tcity+"' ");
                	while(rs1.next())
                	{
                	
      out.write("\r\n");
      out.write("                \t<tr>\r\n");
      out.write("                \t   <td>");
      out.print(rs1.getInt(1));
      out.write("</td>\r\n");
      out.write("                \t   <td>");
      out.print(rs1.getString(2));
      out.write("</td>\r\n");
      out.write("                \t   <td>");
      out.print(rs1.getString(3));
      out.write("</td>                        \r\n");
      out.write("                \t   <td>");
      out.print(rs1.getInt(4));
      out.write("</td>\r\n");
      out.write("                \t   <td>");
      out.print(rs1.getInt(5));
      out.write("</td>\r\n");
      out.write("                \t   \r\n");
      out.write("                \t   <td><a href='oflightbooking.html?id=");
      out.print(rs1.getInt(1));
      out.write("&name=");
      out.print( rs1.getString(2));
      out.write("&from=");
      out.print(rs1.getString(3));
      out.write("' class=\"btn btn-info\" role=\"button\">BookNow</a></td>\r\n");
      out.write("                \t</tr>\r\n");
      out.write("                \t");

                	}

                    
      out.write("\r\n");
      out.write("                </thead>\r\n");
      out.write("                \r\n");
      out.write("            </table>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>     \r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
