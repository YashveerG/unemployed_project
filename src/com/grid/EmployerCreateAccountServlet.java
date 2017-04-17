package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegServlet
 */
@WebServlet(value="/employer-create-account")
public class EmployerCreateAccountServlet extends HttpServlet 
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
		
		String name = request.getParameter("name");
		String compname = request.getParameter("company name");
		Long phone=Long.parseLong(request.getParameter("Phone"));
		String Addr=request.getParameter("Employer address");
		String email = request.getParameter("mail");
		String pass = request.getParameter("password");
		String conf_pass=request.getParameter("confirm_password");
		
		try
		{		
			con = DBConnect.getDBConnection();
			st = con.createStatement();
				
			String insertQuery = "Insert into employer_account VALUES(null, '"+name+"','"+compname+"', '"+phone+"','"+Addr+"', '"+email+"',  '"+pass+"')";
			
			if(pass.equals(conf_pass))
			{
				int num = st.executeUpdate(insertQuery);   
			
				if(num >= 1)
				{
				//pw.print("registered successfully");
					request.getRequestDispatcher("/Employer_Create_Account.jsp").include(request, response);
					pw.print("<br><h1 style='color:green' align='center'>Employer "+name+" registered successfully :)</h1>");
			/*	request.getSession().setAttribute("Name", name);
				
				request.getSession().setAttribute("workExpYrs", workExpYears);
				request.getSession().setAttribute("workExpMonths", workExpMonths);
				request.getSession().setAttribute("annual_salary_lakhs", salInLakhs);
				request.getSession().setAttribute("annual_salary_thousands", salInThousands);
				
				
				//response.sendRedirect("/UnEmployedGridJavaProj/RegSuccess.jsp");*/ 
			}
			}
			
			else
			{
				request.getRequestDispatcher("/Employer_Create_Account.jsp").include(request, response);
				pw.print("<br><h1 style='color:red' align='center'>Passwords do not match, make sure both passwords are same</h1>");
			}
		}
		
		catch(Exception exc)
		{
				request.getRequestDispatcher("/Employer_Create_Account.jsp").include(request, response);
				pw.print("<h1 style='color:red' align='center'>" + exc.getMessage() + "</h1>");
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
				pw.print("<h1 style='color:red' align='center'>"+ sq.getMessage() + "</h1>"); 
			}
		}
	}
}