<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
		PreparedStatement ps=con.prepareStatement( "select * from doctor where EMAIL=? AND PASSWORD=?");
		ps.setString(1,uid);
		ps.setString(2,pss);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			response.sendRedirect("welcomedoctor.jsp");
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