package com.grid;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegServlet
 */

@WebServlet("/candidate_register") 
public class CandidateRegisterServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	static Connection con;
	static Statement st;
	
	static Date dateOfBirth;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();	
		
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		String pass = request.getParameter("pswd");
		long mobyl = Long.parseLong(request.getParameter("mobile"));
		String dob = request.getParameter("dob");		
		
		DateFormat dfmt = new SimpleDateFormat("yyyy-MM-dd");
		try
		{
				dateOfBirth = dfmt.parse(dob);
		}
		
		catch(ParseException pe)
		{				
				request.getRequestDispatcher("/CandidateRegistration.jsp").include(request, response); 
				pw.write("<h1 style='color:red' align='center'>Exception thrown at runtime : " +pe.getMessage()+"</h1>");				
		}	
		
		String gender = request.getParameter("gender"); 
		String location = request.getParameter("address");
		String jobPost = request.getParameter("job_position");
		String jobCategory = request.getParameter("job_category");
		int workExpYears = Integer.parseInt(request.getParameter("work_exp_years")); 
		int workExpMonths =  Integer.parseInt(request.getParameter("work_exp_months"));
		int salInLakhs = Integer.parseInt(request.getParameter("salary_lakhs"));
		int salInThousands = Integer.parseInt(request.getParameter("salary_thousands"));
	
		String workExperience = workExpYears + "." + workExpMonths;
		String annualSalary = salInLakhs + "." + salInThousands;
		
		try
		{		
			con = DBConnect.getDBConnection();
			st = con.createStatement();
							
			String insertQuery = "Insert into Cand_registration VALUES(null, '"+name+"',  '"+mail+"',  '"+pass+"',  '"+mobyl+"',  '"+new java.sql.Date(dateOfBirth.getTime())+"' , '"+gender+"', '"+location+"' , '"+jobPost+"' , '"+jobCategory+"', '"+workExperience+" years', '"+annualSalary+" Lakhs')";
			
			int num = st.executeUpdate(insertQuery);   
				
			if(num > 0)
			{
				request.getSession().setAttribute("Name", name);
				
				/*request.getSession().setAttribute("workExpYrs", workExpYears);
				request.getSession().setAttribute("workExpMonths", workExpMonths);
				request.getSession().setAttribute("annual_salary_lakhs", salInLakhs);
				request.getSession().setAttribute("annual_salary_thousands", salInThousands);*/
				
				
				response.sendRedirect("/UnEmployedGridJavaProj/CandidateRegSuccess.jsp"); 
			}
		}
		
		catch(Exception exc)
		{
				request.getRequestDispatcher("/CandidateRegistration.jsp").include(request, response); 
				pw.print("<h1 align='center' style='color:red'>" + exc.getMessage() + "</h1>");				
		}
		
		finally
		{
			try
			{			
				st.close();  
				con.close();
			}
				
			catch(SQLException sq)
			{
					request.getRequestDispatcher("/CandidateRegistration.jsp").include(request, response);
					pw.print("<h1 style='color:red' align='center'>" + sq.getMessage() + "</h1>"); 
			}
		}
	}
}
