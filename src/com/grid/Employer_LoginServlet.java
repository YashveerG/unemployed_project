package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/employer_login")
public class Employer_LoginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	
	static Connection con;
	static Statement st;
	static ResultSet rs = null;
	static RequestDispatcher rd;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("mail");
		String pass = request.getParameter("password");
		
		try
		{		
			con = DBConnect.getDBConnection();
			st = con.createStatement();
			
			rs = st.executeQuery("Select * FROM employer_account where employer_email = '"+email+"' and employer_password = '"+pass+"'"); 
								
			if(rs.next())
			{
						if( (!email.trim().equals("")) && (!pass.trim().equals("")) && (email.equalsIgnoreCase(rs.getString("employer_email"))) && (pass.equals(rs.getString("employer_password"))))
						{
								request.getSession().setAttribute("empl_mail", email); 
								response.sendRedirect("/UnEmployedGridJavaProj/Employer_jobposting_Form.jsp"); 											
						}
						
						else
								response.sendRedirect("/UnEmployedGridJavaProj/Employer_Account_login.jsp");							
			}
		}
		
		
		catch(Exception exc)
		{
			out.print("<h1 align='center' style='color:red'>" + exc.getMessage() + "</h1>");
		}
		
		
		finally
		{
			try
			{
				rs.close();
				st.close();  
				con.close();
			}
				
			catch(SQLException sq)
			{
				out.print("<h1 align='center' style='color:red'>" + sq.getMessage() + "</h1>"); 
			}
		}
	}
}