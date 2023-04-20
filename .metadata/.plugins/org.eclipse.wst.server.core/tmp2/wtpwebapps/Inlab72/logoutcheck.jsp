<%

out.println("<h2>Logged out Successfully</h2>");
RequestDispatcher rd = request.getRequestDispatcher("login.html");
rd.include(request, response);
%>