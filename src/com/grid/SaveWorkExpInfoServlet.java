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
 * Servlet implementation class SaveWorkExpInfoServlet
 */
@WebServlet("/workexperience_save")
public class SaveWorkExpInfoServlet extends HttpServlet
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
			
			String co=request.getParameter("company");
			String pos= request.getParameter("position");
			int ty=Integer.parseInt(request.getParameter("years_of_experience"));
			
			String mail=(String) request.getSession().getAttribute("Email");
		    
			request.getSession().setAttribute("Company", co);
			request.getSession().setAttribute("Position", pos);
			request.getSession().setAttribute("Years_of_experience", ty);
			
			try
			{
				con = DBConnect.getDBConnection();
				st=con.createStatement();

				int rows=st.executeUpdate("update resume set company='"+co+"', position='"+pos+"', years_of_experience='"+ty+"' where email = '"+mail+"'");           
				
				if(rows >= 1)
				{
					request.getRequestDispatcher("/design.jsp").include(request, response);
					out.write("<h3 align='center' style='color:green'>Work experience details of "+request.getSession().getAttribute("Name")+" saved successfully :)</h3>");
				}
			}

			catch(Exception exc)
			{
				out.print("<h1 style='color : red' align='center'>" + exc.getMessage() + "</h1>");
			}
	}
}