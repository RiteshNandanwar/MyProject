package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Adminlogin
 */
@SuppressWarnings("serial")
@WebServlet("/Adminlogin")
public class Adminlogin extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String uid=request.getParameter("uid");
		String pss=request.getParameter("pss");
		
		PrintWriter out=response.getWriter();
		
		if(uid.equals("Admin"))
		{
			if(pss.equals("123456"))
				response.sendRedirect("adminview.jsp");
			else
			{
				out.println("<script>window.alert('Enter Correct Password!');</script>");
				response.sendRedirect("admin.jsp");
			}
		}
		else
			out.println("<script>window.alert('Enter Correct User ID!'); </script>");
		
	}

}
