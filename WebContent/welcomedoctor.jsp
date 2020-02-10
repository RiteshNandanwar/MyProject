<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<jsp:include page="main.jsp" />	
<jsp:include page="title.jsp" />
<body style="background-color: #004d66;">
	<div style="margin-top: 100px;/* top: 40%; */margin-left: 20%;font-size: 40px;">
		<h1>
	    	<span style="color: #fff">WELCOME</span><span style="color: #990033">DOCTOR</span>	    	
	    </h1>	
	</div>
	
	<div class="drmain">
		<ul>
			<li class="activedr"> <a href="welcomedoctor.jsp">HOME</a></li>
			<li> <a href="doctorappoinment.jsp">VIEW APPOINMENT</a></li>
			<li> <a href="viewfeedback.jsp">FEEDBACK</a></li>
			<li> <a href="welcomdoctor.jsp" data-toggle="tooltip" title="Team 405 Found">LOGOUT</a></li>
		</ul>		
	</div>
	
	 
    
</body>
</html>