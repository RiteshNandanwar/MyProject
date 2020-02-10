
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
	<title>Doctor Login</title>
	<head><link rel="stylesheet" type="text/css" href="css/style.css"></head>
<body style="background: url(1.jpg)">
	<jsp:include page="main.jsp" />	
	<jsp:include page="title.jsp" />
	<div class="login-box">
	<img src="doctorlogin.png" class ="avatar">
		<h1>DOCTOR LOGIN</h1>
		<form action="logindoctor.jsp" method="post">
			<p>USERNAME</p>
			<input type="text" name="uid" placeholder="ENTER USERNAME"/>
			<p>PASSWORD</p>
			<input type="password" name="pss" placeholder="ENTER PASSWORD"/>
			<input type="submit" name="submit" value="LOGIN">
			<p><a href="doctorregister.jsp">New Doctor? Register Here.</a></p>
		</form>		
	</div>
</body>

</html>