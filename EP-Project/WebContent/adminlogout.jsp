<%
session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
  margin-top: 150px;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
body{
  background-image: url('of2.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>



<div class="card">
    <h3  align="center">Session Timeout !!</h3><br>
  <p><button><a href="adminlogin.html">Back to login again</a></button></p>
</div>

</body>
</html>
