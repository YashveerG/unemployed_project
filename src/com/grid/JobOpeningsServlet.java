package com.grid;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class JobVacancies
 */
@WebServlet(value="/job_openings")  
public class JobOpeningsServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	static Connection con;
	static Statement stmt;
	static ResultSet res;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		//HttpSession hs = request.getSession();
		
		String jobCateg = request.getParameter("jobType");

		try
		{	
			con = DBConnect.getDBConnection();
			
			stmt = con.createStatement();
			
			res = stmt.executeQuery("Select * from job_posting where job_category = '"+jobCateg+"'");
			
			List<String> walkinJobOpeningsList = new ArrayList<String>();
			List<String> interviewJobOpeningsList = new ArrayList<String>();
			List<String> internshipOpeningsList = new LinkedList<String>();
			
			while(res.next())
			{
				if(jobCateg.equals("Walkins"))
				{
					String walkinJobData = res.getString("job_details");
					walkinJobOpeningsList.add(walkinJobData);	
				}
				
				else if(jobCateg.equals("Interviews"))  
				{
					String interviewJobData = res.getString("job_details");
					interviewJobOpeningsList.add(interviewJobData);
				}
				
				else
				{
					String internshipData = res.getString("job_details");
					internshipOpeningsList.add(internshipData);
				}
			}
			
			request.getSession().setAttribute("walkinJobOpeningsData", walkinJobOpeningsList);			
			request.getSession().setAttribute("interviewJobOpeningsData", interviewJobOpeningsList);
			request.getSession().setAttribute("internshipOpeningsData", internshipOpeningsList);
			
			response.sendRedirect("/UnEmployedGridJavaProj/jobDetails.jsp");
		}
	
		catch(Exception exc)
		{
				pw.write("<h1 style='color:red' align='center'>" + exc.getMessage() + "</h1>");	
		}
		
		finally
		{
			try
			{
				res.close();
				stmt.close();
				con.close();			
			}
			
			catch(SQLException sq)
			{
				pw.print("<h1 style='color:red' align='center'>" + sq.getMessage() + "</h1>");
			}
		}
	}
}