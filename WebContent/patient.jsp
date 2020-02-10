<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title>Patient Login</title>
	<head><link rel="stylesheet" type="text/css" href="css/style.css"></head>
<body style="background: url(1.jpg)">
	<jsp:include page="main.jsp" />	
	<jsp:include page="title.jsp" />
	<div class="login-box">
	<img src="patientlogin.png" class ="avatar">
		<h1>PATIENT LOGIN</h1>
		<form action="loginpatient.jsp" method="post">
			<p>AADHAR NUMBER</p>
			<input type="text" name="uid" placeholder="ENTER USERNAME"/>
			<p>PASSWORD</p>
			<input type="password" name="pss" placeholder="ENTER PASSWORD"/>
			<input type="submit" name="submit" value="LOGIN">
			<p><a href="patientregister.jsp">New Patient? Register Here.</a></p>
		</form>	
	</div>
</body>
</html>