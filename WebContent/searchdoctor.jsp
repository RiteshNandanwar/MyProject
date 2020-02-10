<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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

String ct=request.getParameter("ct");
String speci=request.getParameter("speci");

		
Class.forName("com.mysql.cj.jdbc.Driver");

con=DriverManager.getConnection(url,user,pass);
PreparedStatement ps=con.prepareStatement( "select * from doctor where CITY=? AND SPECI=?");
ps.setString(1,ct);
ps.setString(2,speci);
ResultSet rs=ps.executeQuery();


while(rs.next())
{
%>	
	<h1><%=rs.getString("NAME")%></h1>
	<h4><%=rs.getString("DEGREE")%></h4>
	<h4><%=rs.getString("EXPERIANCE")%></h4>
	<h4><%=rs.getString("CITY")%></h4>
	<button>Take Appointment</button><br><br>
	
<%
}
%>