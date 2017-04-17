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
 * Servlet implementation class SaveECAInfoServlet
 */
@WebServlet("/extra_save")
public class SaveECAInfoServlet extends HttpServlet 
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
		
		String d= request.getParameter("extracurricular_desc");
		
		request.getSession().setAttribute("extracurricular_desc", d);
		
		String mail = (String) request.getSession().getAttribute("Email");		

		try
		{
			con = DBConnect.getDBConnection();
		    st=con.createStatement();

		    int rows=st.executeUpdate("update resume Set extracurricular_desc='"+d+"' where email='"+mail+"'");                
		    
		    if(rows >= 1)
		    {
		    	request.getRequestDispatcher("/design.jsp").include(request, response);
		    	out.write("<h3 align='center' style='color:green'>Extra-curricular activity details of "+request.getSession().getAttribute("Name")+" saved successfully :)</h3>");
		    }
		}

		catch(Exception e)
		{
			out.print("<h1 style='color:red' align='center'>" + e.getMessage() + "</h1>");
		}
	}
}