<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body style="top:50%;">
<form name="vinform" action="searchdoctor.jsp" method="post">
	Enter City<input type="text" name="ct"  id="user_input" REQUIRED><br>
	Enter Speci9<input type="text" name="speci" REQUIRED><br>
	 <input type="Submit" value="SEARCH" id="sub" onClick="sendInfo()">                    
</form>
<span id="amit"> </span>
</body>
</html>