package com.doctor;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoctorRegistration
 */
@SuppressWarnings("serial")
@WebServlet("/DoctorRegistration1")
public class DoctorRegistration extends HttpServlet 
{
	private String url="jdbc:mysql://localhost/diagnoeasy";
	private String user="root";
	private String pass="Ritesh@123";  
	private java.sql.Connection con=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String dname=null;
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String gender=request.getParameter("gender");
		long mobile=Long.parseLong(request.getParameter("mobile"));
		String email=request.getParameter("email");
		String license=request.getParameter("license");
		String city=request.getParameter("city");
		String speci=request.getParameter("speci");
		String degree=request.getParameter("degree");
		String password=request.getParameter("password1");
		String experiance=request.getParameter("exp");
		
		if(fname.charAt(0)!='D' || fname.charAt(0)!='d' && fname.charAt(1)!='r')
		{
			dname="Dr. "+fname+" "+lname;
		}
		else 
		{
			dname=fname+" "+lname;
		}
		
		try
		{
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,pass);
			
			String msqlsearch="select * from doctor where EMAIL=?";
			PreparedStatement smt=con.prepareStatement(msqlsearch);
			smt.setString(1,email);
			ResultSet rs=smt.executeQuery();
			if(rs.next()) 
			{
				response.sendRedirect("doctorregister.jsp");
			}
			else
			{
				String msql="INSERT INTO doctor values(?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstm=con.prepareStatement(msql);
				pstm.setString(1,dname);
				pstm.setString(2,gender);
				pstm.setLong(3,mobile);
				pstm.setString(4,email);
				pstm.setString(5,license);
				pstm.setString(6,city);
				pstm.setString(7,speci);
				pstm.setString(8,degree);
				pstm.setString(9,password);
				pstm.setString(10,experiance);
				int row=pstm.executeUpdate();
				
				if(row>0)
				{
					// For Confirmation SMS sending;
					String message="*****Greetings From Diagnoeasy*****\r\nDear "+dname+" your registration is confirm.\r\nUse your Aadhar Number as User ID\r\n And your Password-"+password;
					com.patient.SendSMS sms=new com.patient.SendSMS();
				    sms.send(String.valueOf(mobile), message);
				    response.sendRedirect("doctor.jsp");
				}
			}	
			
		}
		catch(SQLException sqlerr)
		{
			System.out.println(sqlerr);
		} catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
