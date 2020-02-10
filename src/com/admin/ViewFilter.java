package com.admin;

import java.sql.DriverManager;
import java.sql.SQLException;

public class ViewFilter
 {
	 private String city=null;
	 private String speci=null;
	 private String url="jdbc:mysql://localhost/diagnoeasy";
	 private String user="root";
	 private String pass="Ritesh@123";  
	 private java.sql.Connection con=null;
	 
	 public ViewFilter() throws ClassNotFoundException, SQLException
	 {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 con=DriverManager.getConnection(url,user,pass);
	 }

	public String getCity() 
	{
		return city;
	}

	public void setCity(String city) 
	{
		this.city = city;
	}

	public String getSpeci() 
	{
		return speci;
	}

	public void setSpeci(String speci) 
	{
		this.speci = speci;
	}
	
	

 }