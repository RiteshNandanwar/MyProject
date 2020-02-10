package com.doctor;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class LoginDoctor 
{
	private String uid,pss;
	private static String url="jdbc:mysql://localhost/diagnoeasy";
	private static String user="root";
	private static String pass="Ritesh@123";  
	private static java.sql.Connection con=null;

	public String getUid() 
	{
		return uid;
	}

	public void setUid(String uid) 
	{
		this.uid = uid;
	}

	public String getPss() 
	{
		return pss;
	}

	public void setPss(String pss) 
	{
		this.pss = pss;
	}
	public static boolean validate() throws ClassNotFoundException, SQLException
	{
		boolean status=false;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,user,pass);
		PreparedStatement ps=con.prepareStatement( "select * from docotr where email=? and password=?");
		return status;  
	
	}
}
