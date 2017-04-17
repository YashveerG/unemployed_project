package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestSkillsServlet
 */
@WebServlet("/addSkills")
public class TestSkillsServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	static Connection conn = null;
	Statement stmt = null;
	static ResultSet res;
	
	static int count;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
			resp.setContentType("text/html");
			PrintWriter pw = resp.getWriter();
			
			String qCateg = req.getParameter("selected_technology");
			String question = req.getParameter("query");
			String answer = req.getParameter("answer");
			
			LocalDate todaysDate = LocalDate.now();
			
			String selectQuery = new String("Select * from Skills where question_text = '"+question+"'");
			String insQuery = "Insert into Skills VALUES(null, '"+qCateg+"' , '"+question+"' , '"+answer+"' , '"+todaysDate+"')";
			
			try
			{
				conn = DBConnect.getDBConnection();
				stmt = conn.createStatement();
				
				res = stmt.executeQuery(selectQuery);
				
				while(res.next())
					count++;
				
				if(count > 0)
					throw new SQLException("Duplicate question");
				
				else
				{
					int row = stmt.executeUpdate(insQuery);
	
					if(row > 0)
					{												
						req.getRequestDispatcher("/SkillAnalysisAdmin.jsp").include(req, resp);
						pw.write("<h1 style='color:green' align='center'>" + row + " tuple inserted successfully :)</h1>");
					}
				}
			}
			
			catch(Exception exc)
			{								
				req.getRequestDispatcher("/SkillAnalysisAdmin.jsp").include(req, resp);
				pw.write("<h1 style='color:red' align='center'>"+exc.getMessage()+"</h1>");
			}
			
			finally
			{
				try
				{
					res.close();
					stmt.close();
					conn.close();
				}
				
				catch(Exception exc)
				{
					req.getRequestDispatcher("/SkillAnalysisAdmin.jsp").include(req, resp);
					pw.write("<h1 style='color:red' align='center'>"+exc.getMessage()+"</h1>");					
				}
			}
	}
}