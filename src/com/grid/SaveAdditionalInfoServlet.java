package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveAdditionalInfoServlet
 */
@WebServlet("/add_save")
public class SaveAdditionalInfoServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	static Connection con;
	static Statement st;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String add_descr= request.getParameter("additional_desc");
		String mail=(String) request.getSession().getAttribute("Email");
	    
		request.getSession().setAttribute("additional_info_desc", add_descr);
		

		try
		{
			con = DBConnect.getDBConnection();
			st=con.createStatement();

			int rows=st.executeUpdate("Update resume SET additional_desc= '"+add_descr+"' where email='"+mail+"'");                
			
			if(rows > 0)
			{
				request.getRequestDispatcher("/design.jsp").include(request, response);
				out.write("<h3 align='center' style='color:green'>Additional details of "+request.getSession().getAttribute("Name")+" saved successfully :)</h3>");
			}
		}

		catch(Exception e)
		{
			out.print("<h1 style='color:red' align='center'>" + e.getMessage() + "</h1>");
		}
	}
}