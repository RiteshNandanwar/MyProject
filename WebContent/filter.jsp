<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><link rel="stylesheet" type="text/css" href="css/style.css"> 
</head>
<jsp:include page="main.jsp" />	
<jsp:include page="title.jsp" />
	


<body>
<div class="register" 	style="margin-top: 100px;">
	<form action="viewdoctor.jsp" method="post">
	<table id="register">
		<tr>
		<td colspan=2 align="center"><h1>Filter</h1></td>
		</tr>
		
		<tr>
		<td><h4>City :</h4> </td>
		<td><h1><input type="text" name="ct" id="namefilter"> </h1></td>
		</tr>
		
		<tr>
		<td><h4>Specialization :<br></h4></td>
		<td><h1><input type="text" name="speci" id="namefilter"> </h1><br></td>
		</tr>
		
		<tr>
		<td style="color:black"><input type="reset" value="clear" id="subview"></td>
		<td style="color:black"><input type="submit" value="Apply" id="subview"> </td>
		</tr>
		
	</table>
	</form>
</div>
</body>
</html>