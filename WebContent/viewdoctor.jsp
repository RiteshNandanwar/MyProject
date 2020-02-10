<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css"> 
</head>

<jsp:include page="filter.jsp" />	
<body style="background-color: #004d66;">

<% 
String ct=request.getParameter("ct");
String speci=request.getParameter("speci");
String url="jdbc:mysql://localhost/diagnoeasy";
String user="root";
String pass="Ritesh@123"; 
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection(url,user,pass);

if(ct.isEmpty() && speci.isEmpty())
{	
	String msql="select * from doctor";
	
	Statement smt=con.createStatement();
	ResultSet rs=smt.executeQuery(msql);
	while(rs.next())
	{		
%>
	
	<div>	
		<table id="viewregister" style="color:white;">
			<tr>
				<td><h2><%=rs.getString("NAME")%></h2></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("DEGREE")%></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("SPECI")%></td>
			</tr>
			<tr>
				<td>-<%= rs.getString("experiance")%><br><br></td>
			</tr>
		</table>
	</div>	
	<%
	} //while
}//1st if

if(!ct.isEmpty() && speci.isEmpty())
{
String msql="select * from doctor where city=?";
	
	PreparedStatement smt=con.prepareStatement(msql);
	smt.setString(1,ct);
	ResultSet rs=smt.executeQuery();
	while(rs.next())
	{		
%>
	
	<div>	
		<table id="viewregister" style="color:white;">
			<tr>
				<td><h2><%=rs.getString("NAME")%></h2></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("DEGREE")%></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("SPECI")%></td>
			</tr>
			<tr>
				<td>-<%= rs.getString("experiance")%><br><br></td>
			</tr>
		</table>
	</div>	
	<%
	} //while
} // 2nd if

if(!speci.isEmpty() && ct.isEmpty())
{
String msql="select * from doctor where speci=?";
	
	PreparedStatement smt=con.prepareStatement(msql);
	smt.setString(1,speci);
	ResultSet rs=smt.executeQuery();
	while(rs.next())
	{		
%>
	
	<div>	
		<table id="viewregister" style="color:white;">
			<tr>
				<td><h2><%=rs.getString("NAME")%></h2></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("DEGREE")%></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("SPECI")%></td>
			</tr>
			<tr>
				<td>-<%= rs.getString("experiance")%><br><br></td>
			</tr>
		</table>
	</div>	
	<%
	} //while
} //3rd if
if(!ct.isEmpty() && !speci.isEmpty())
{
String msql="select * from doctor where city=? AND speci=?";
	
	PreparedStatement smt=con.prepareStatement(msql);
	smt.setString(1,ct);
	smt.setString(2,speci);
	ResultSet rs=smt.executeQuery();
	while(rs.next())
	{		
%>
	
	<div>	
		<table id="viewregister" style="color:white;">
			<tr>
				<td><h2><%=rs.getString("NAME")%></h2></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("DEGREE")%></td>
			</tr>
			<tr>
				<td>-<%=rs.getString("SPECI")%></td>
			</tr>
			<tr>
				<td>-<%= rs.getString("experiance")%><br><br></td>
			</tr>
		</table>
	</div>	
	<%
	} //while
}//4th if

}//try
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>