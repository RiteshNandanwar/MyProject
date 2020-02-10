<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title>Admin Login</title>
	<head><link rel="stylesheet" type="text/css" href="css/style.css"></head>
<body style="background: url(1.jpg)">
	<jsp:include page="main.jsp" />		
	<jsp:include page="title.jsp" />		
	<div class="login-box">
	<img src="adminlogo.png" class ="avatar">
		<h1>ADMIN LOGIN</h1>
		<form action="Adminlogin" method="post">
			<p>USERNAME</p>
			<input type="text" name="uid" placeholder="ENTER USERNAME"/>
			<p>PASSWORD</p>
			<input type="password" name="pss" placeholder="ENTER PASSWORD"/>
			<input type="submit" name="submit" value="LOGIN">
		</form>	
	
	</div>

</body>

</html>

