package com.patient;



import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class PatientRegistration
 */
@SuppressWarnings("serial")
@WebServlet("/PatientRegistration")
@MultipartConfig(maxFileSize=16177215)
public class PatientRegistration extends HttpServlet 
{
	private String url="jdbc:mysql://localhost/diagnoeasy";
	private String user="root";
	private String pass="Ritesh@123";  
	private java.sql.Connection con=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String gender=request.getParameter("gender");
		long mobile=Long.parseLong(request.getParameter("mobile"));
		String email=request.getParameter("email");
		long aadhar=Long.parseLong(request.getParameter("aadhar"));
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		String dob=request.getParameter("dob");
		String password=request.getParameter("password2");
		
		String name=fname+" "+lname;
		
		
		try
		{
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,pass);
			
			String msqlsearch="select * from patient where aadharno=?";
			PreparedStatement smt=con.prepareStatement(msqlsearch);
			smt.setLong(1,aadhar);
			ResultSet rs=smt.executeQuery();
			if(rs.next()) 
			{
				response.sendRedirect("repeatdata.html");
			}
			
			else 
			{
				String msql="INSERT INTO patient values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstm=con.prepareStatement(msql);
				pstm.setString(1,name);
				pstm.setLong(2,mobile);
				pstm.setString(3,email);
				pstm.setLong(4,aadhar);
				pstm.setString(5,city);
				pstm.setString(6,address);
				pstm.setString(7,dob);
				pstm.setString(8,password);
				pstm.setString(9,gender);
				int row=pstm.executeUpdate();
				
				if(row>0)
				{
								
					response.sendRedirect("patient.jsp");
					
				}
				else
					response.sendRedirect("patientregister.jsp");
			}
		}
		catch(SQLException sqlerr)
		{
			System.out.println(sqlerr);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
