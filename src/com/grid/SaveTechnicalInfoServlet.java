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
 * Servlet implementation class SaveTechnicalInfoServlet
 */
@WebServlet("/technical_save")
public class SaveTechnicalInfoServlet extends HttpServlet 
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
			PrintWriter pw = response.getWriter();
			
			String sk= request.getParameter("skills");
			String mail=(String) request.getSession().getAttribute("Email");
			    
			request.getSession().setAttribute("Skills", sk);
			
			try
			{
				con = DBConnect.getDBConnection();
				st=con.createStatement(); 

			   int rows=st.executeUpdate("update resume set skills = '"+sk+"' where email = '"+mail+"'");          
			   
			   if(rows > 0)
			   {
				   request.getRequestDispatcher("/design.jsp").include(request, response);
				   pw.write("<h3 align='center' style='color:green'>Technical details of "+request.getSession().getAttribute("Name")+" saved successfully :)</h3>");
			   }
			}

			catch(Exception exc)
			{
				pw.print("<h1 style='color : red' align='center'>" + exc.getMessage() + "</h1>"); 
			}
	}
}