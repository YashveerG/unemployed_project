package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JOAdminLinkServlet
 */
@WebServlet("/adminLink")
public class JOAdminLinkServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	static Connection conn;
	static Statement stmt;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			String mimeType = "text/html";
			response.setContentType(mimeType);
			
			PrintWriter pw = response.getWriter();
			
			String title=request.getParameter("Job Title");
			String id=request.getParameter("Job Id");
			String location=request.getParameter("Job Location");
			String category=request.getParameter("selectedCategory");
			String details=request.getParameter("Job Details");
			String links=request.getParameter("Job Links");
			String workexpyears=request.getParameter("workExpInYears");
			String workexpmonths=request.getParameter("workExpInMonths");
			String salaryLakhs=request.getParameter("SalaryinLakhs");
			String salaryThous=request.getParameter("SalaryinThousands");
			LocalDate todaysDate = LocalDate.now();
			
			String totalSal = salaryLakhs + "." + salaryThous;
			String totalexp= workexpyears +"." +workexpmonths;
			
			String insQuery="Insert into job_posting values(null, '"+request.getSession().getAttribute("empl_mail")+"', '"+title+"', '"+id+"', '"+location+"', '"+category+"', '"+details+"', '"+links+"', '"+totalexp+" years', '"+totalSal+" lakhs', '"+todaysDate+"')";
			
			try
			{
				conn = DBConnect.getDBConnection();
				stmt = conn.createStatement();
			
				int row = stmt.executeUpdate(insQuery);
				
				if(row > 0)
				{
					request.getSession().getAttribute("empl_mail");
					
					pw.write("<div style='margin-left : 300px;'>" +
								  "<h1>CONGRATULATIONS...Now You are being part of world's #1. Job Portal..!!</h1>" +
						          "<h1 style='color: green'>Un-Employed Job Portal has received your job post. We will contact you soon with suitable candidates for your firms.</h1>" +
						          "Please click <a href='Homepage_UnEmployed.jsp' onmousedown='this.href = appendParamsOnce(this.href, '&isid=hire&ikw=toppostjob')' class='btn btn-primary btn-lg'>Here</a> to go back to home page"+
							      "</p>Please click <a href='JobPost_homepage.jsp' onmousedown='this.href = appendParamsOnce(this.href, '&isid=hire&ikw=toppostjob')' class='btn btn-primary btn-lg'>Here</a> to go back to Post Jobs again</p>"+
							      "</div>");  		    
			
					/* String emp_email = null;
					String query="select jobpost_email from job_posting where jobpost_email='"+email+"'";
				    res=stmt.executeQuery(query);    		
					
				    while(res.next()){
				    	emp_email=res.getString("jobpost_email");
				    }
					request.getSession().setAttribute("employer_email", emp_email); */
							
				}
			}
				
			catch(Exception exc)
			{
				pw.write("<h1 style='color:red' align='center'>"+exc.getMessage()+"</h1>"); 
			}
			
			finally
			{
				try
				{
					stmt.close();
					conn.close();
				}
				
				catch(Exception exc)
				{
					pw.write("<h1 style='color:red' align='center'>"+exc.getMessage()+"</h1>"); 
				}
			}
	}
}