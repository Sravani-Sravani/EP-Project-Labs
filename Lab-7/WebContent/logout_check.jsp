<%

out.println("<h2>Logged out Successfully</h2>");
RequestDispatcher rd = request.getRequestDispatcher("LOGIN.html");
rd.include(request, response);
%>