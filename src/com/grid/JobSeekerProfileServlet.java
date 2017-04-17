package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class JobSeekerProfileServlet
 */

@WebServlet("/job_seeker")  
public class JobSeekerProfileServlet extends HttpServlet 
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
			
			HttpSession hs = request.getSession();
			
			String candidate_mail = (String) hs.getAttribute("mail");
			
			try
			{	
				con = DBConnect.getDBConnection();
				
				stmt = con.createStatement();
				
				res = stmt.executeQuery("Select * from cand_registration where cand_email = '"+candidate_mail+"'");  

				List<Object> candList = new ArrayList<>();
				
				while(res.next())
				{
					String name = res.getString("cand_name");
					String emailAddr = res.getString("cand_email");
					String pswd = res.getString("cand_password");
					long mobile = res.getLong("cand_mobile");
					Date dob = res.getDate("cand_dob");
					String gender = res.getString("cand_gender");
					String location = res.getString("cand_address");
					String jobPosition = res.getString("cand_job_position");
					String jobCategory = res.getString("cand_job_category"); 
					String workExperience = res.getString("cand_work_exp_years");
					String annualSalary = res.getString("cand_annual_salary_lakhs");					
					
					candList.add(name);
					candList.add(emailAddr);
					candList.add(pswd);
					candList.add(mobile);
					candList.add(dob);
					candList.add(gender);
					candList.add(location);
					candList.add(jobPosition);
					candList.add(jobCategory);
					candList.add(workExperience);
					candList.add(annualSalary);					
				}
								
				hs.setAttribute("candInfo", candList);
				
				//request.getRequestDispatcher("/jobSeeker.jsp").forward(request, response);
				response.sendRedirect("/UnEmployedGridJavaProj/jobSeeker.jsp");
			}
		
			catch(Exception exc)
			{
					request.getRequestDispatcher("/jobSeeker.jsp").include(request, response);
					pw.write("<h1 style='color:red'><u>Exception thrown at runtime</u> :&nbsp;&nbsp;" + exc.getMessage() + "</h1>");	
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
						request.getRequestDispatcher("/jobSeeker.jsp").include(request, response);
						pw.print("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + sq.getMessage() + "</h1>"); 
				}
			}
	}
}
