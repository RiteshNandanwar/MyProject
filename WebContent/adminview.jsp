<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css"> 
</head>

<body style="background: url(1.jpg)">
<jsp:include page="main.jsp" />		
<jsp:include page="title.jsp" />

<div class="viewhed"><h1></h1></div>


		<div class="adminbutton">
	    	<a href="viewdoctor.jsp" class="adminbtn">DOCTOR </a>
	    	<a href="viewpatient.jsp" class="adminbtn">PATIENT </a>
	   </div>
	   

</body>
</html>