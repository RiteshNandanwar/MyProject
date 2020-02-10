<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String url="jdbc:mysql://localhost/diagnoeasy";
	String user="root";
	String pass="Ritesh@123";  
	java.sql.Connection con=null;
	
	String uid=request.getParameter("uid");
	String pss=request.getParameter("pss");
	out.println(uid);
	out.println(pss);
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,user,pass);
		PreparedStatement ps=con.prepareStatement( "select * from patient where AADHARNO=? AND PASSWORD=?");
		ps.setString(1,uid);
		ps.setString(2,pss);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			response.sendRedirect("welcomepatient.jsp");
			session.setAttribute("session","TRUE");  
		}
		else
		{
			response.sendRedirect("wrongep.jsp");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
</html>