<%@page import="java.util.ArrayList"%>
<html>
<body>

	<%
	ArrayList name=(ArrayList)request.getAttribute("name");
	out.println(name);
	
	
	%>


</body>
</html>