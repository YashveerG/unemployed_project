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
 * Servlet implementation class UpdateServlet
 */

@WebServlet("/update")  
public class UpdateServlet extends HttpServlet 
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
				request.getRequestDispatcher("/jobSeeker.jsp").include(request, response);
				pw.write("<h1 style='color:red' align='center'>Exception thrown at runtime : " +pe.getMessage()+"</h1>");				
		}
		
		String gender = request.getParameter("gender"); 
		String place = request.getParameter("location");				
		String jobPost = request.getParameter("job_role");
		String jobCategory = request.getParameter("job_category");
		int workExpYrs = Integer.parseInt(request.getParameter("work_exp_Years"));
		int workExpMonths = Integer.parseInt(request.getParameter("work_exp_Months"));
		int salInLakhs = Integer.parseInt(request.getParameter("salary_Lakhs"));
		int salInThousands = Integer.parseInt(request.getParameter("salary_Thousands")); 

		
		String workExp = workExpYrs + "." + workExpMonths;
		String annualSalary = salInLakhs + "." + salInThousands;
		
		try
		{		
			con = DBConnect.getDBConnection();
			st = con.createStatement();
			
			String updateQuery = "Update cand_registration set cand_name = '"+name+"', cand_password = '"+pass+"', cand_mobile = '"+mobyl+"', cand_dob = '"+new java.sql.Date(dateOfBirth.getTime())+"', cand_gender = '"+gender+"' , cand_address = '"+place+"', cand_job_position = '"+jobPost+"', cand_job_category='"+jobCategory+"', cand_work_exp_years='"+workExp+" years', cand_annual_salary_lakhs='"+annualSalary+" Lakhs'  where cand_email like '"+mail+"'";
			int num = st.executeUpdate(updateQuery);
				
			if(num > 0)
				response.sendRedirect("/UnEmployedGridJavaProj/UpdateSuccess.jsp");
		}
		
		catch(Exception exc)
		{
				request.getRequestDispatcher("/jobSeeker.jsp").include(request, response); 
				pw.print("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
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
				request.getRequestDispatcher("/jobSeeker.jsp").include(request, response); 
				pw.print("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + sq.getMessage() + "</h1>"); 
			}
		}
	}
}
