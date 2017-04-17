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
 * Servlet implementation class SaveCertificationInfoServlet
 */
@WebServlet("/certification_save")
public class SaveCertificationInfoServlet extends HttpServlet
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
		
		String de= request.getParameter("certification_desc");
		request.getSession().setAttribute("certification_desc", de);
		
		String mail = (String) request.getSession().getAttribute("Email");		

		try
		{
			con = DBConnect.getDBConnection();
		    st=con.createStatement();
		    
		    int rows = st.executeUpdate("update resume set certification_desc = '"+de+"' where email='"+mail+"'");                

		    if(0 < rows)
		    {
		    	request.getRequestDispatcher("/design.jsp").include(request, response);
		    	out.write("<h3 align='center' style='color:green'>Certification details of "+request.getSession().getAttribute("Name")+" saved successfully :)</h3>");
		    }
		}

		catch(Exception exc)
		{
			out.print("<h1 style='color:red' align='center'>" + exc.getMessage() + "</h1>");
		}
	}
}