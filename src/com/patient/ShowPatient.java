package com.patient;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ShowPatient 
{
	Connection con;
	private String url="jdbc:mysql://localhost/diagnoeasy";
	private String user="root";
	private String pass="Ritesh@123";	
	private String name,gender,city,dob,address,email;
	private long mobile, aadhar;	
	
	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getGender() 
	{
		return gender;
	}

	public void setGender(String gender) 
	{
		this.gender = gender;
	}

	public String getCity() 
	{
		return city;
	}

	public void setCity(String city) 
	{
		this.city = city;
	}

	public String getDob() 
	{
		return dob;
	}

	public void setDob(String dob) 
	{
		this.dob = dob;
	}

	public String getAddress() 
	{
		return address;
	}

	public void setAddress(String address) 
	{
		this.address = address;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public long getMobile() 
	{
		return mobile;
	}

	public void setMobile(long mobile) 
	{
		this.mobile = mobile;
	}

	public long getAadhar() 
	{
		return aadhar;
	}

	public void setAadhar(long aadhar) 
	{
		this.aadhar = aadhar;
	}

	public ShowPatient() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,user,pass);
	}
	
	public void show() throws SQLException 
	{
		String msql="select * from patient";
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery(msql);
		
		if(rs.next())
		{
			name=rs.getString("name");
			mobile=rs.getLong("mobile");
			email=rs.getString("email");
			aadhar=rs.getLong("aadhar");
			city=rs.getString("city");
			address=rs.getString("address");
			dob=rs.getString("Dob");
			gender=rs.getString("gender");
		}
	}
	
}
