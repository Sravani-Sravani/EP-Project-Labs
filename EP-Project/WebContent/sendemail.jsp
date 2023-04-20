<%@ page import="java.sql.*" %>
<%
String email=request.getQueryString();
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Mail</title>
    <link rel="stylesheet" href="contact.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
  </head>
  <body>

    <!--alert messages start
    <div class="alert-success">
      <span>Message Sent! Thank you for contacting us.</span>
    </div>
    <div class="alert-error">
      <span>Something went wrong! Please try again.</span>
    </div>
    alert messages end-->

    <!--contact section start-->
    <div class="contact-section">
      <div class="contact-info">
        <div><i class="fas fa-map-marker-alt"></i>Vijayawada, India</div>
        <div><i class="fas fa-envelope"></i>190030677@kluniversity.in</div>
        <div><i class="fas fa-phone"></i>99495 68954</div>
        <div><i class="fas fa-clock"></i>Mon - Fri 8:00 AM to 5:00 PM</div>
      </div>
      <div class="contact-form">
        <h2>Send Mail</h2>
        <form class="contact" action="maildemo.jsp" method="post">
          <input type="email" name="userEmail" class="text-box" value=<%=email %>>
          <textarea type="text" name="message" rows="5" placeholder="Send Mail" required></textarea>
          <input type="submit" name="submit" class="send-btn" value="Send">
        </form>
      </div>
    </div>
    <!--contact section end-->

  </body>
</html>