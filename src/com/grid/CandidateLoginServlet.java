package com.grid;

import java.io.IOException;
import java.io.InputStream;
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

@WebServlet(value="/candidate-login")  
public class CandidateLoginServlet extends HttpServlet 
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
		
		HttpSession hs = request.getSession();
		
		String email = request.getParameter("mayl");
		String pass = request.getParameter("pass");
		
		try
		{		
			con = DBConnect.getDBConnection();
			st = con.createStatement();
			
			rs = st.executeQuery("Select cr.cand_name,  cr.cand_email,  cr.cand_password,  ea.employer_email FROM cand_registration cr, employer_account ea WHERE cr.cand_email = '"+email+"' and cr.cand_password = '"+pass+"'"); 
								
			if(rs.next())
			{
						if( (!email.trim().equals("")) && (!pass.trim().equals("")) && (email.equalsIgnoreCase(rs.getString("cand_email"))) && (pass.equals(rs.getString("cand_password")))  )
						{												
								hs.setAttribute("hesaru", rs.getString("cand_name"));
								hs.setAttribute("mail", rs.getString("cand_email"));  
								hs.setAttribute("empl_mail", rs.getString("employer_email"));
								
								response.sendRedirect("/UnEmployedGridJavaProj/Dashboard.jsp"); 											
						}
						
						else  
						{							
								response.sendRedirect("/UnEmployedGridJavaProj/CandidateLogin.jsp");
								
								//request.getRequestDispatcher("/CandidateLogin.jsp").include(request, response);							 
								//out.write("<h1 align='center' style='color:#fF0000'>Wrong email-address (and/or) password, login denied :(</h1>");
						}
			}
		}
		
		
		catch(Exception exc)
		{			
			request.getRequestDispatcher("/CandidateLogin.jsp").include(request, response);
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
				request.getRequestDispatcher("/CandidateLogin.jsp").include(request, response);
				out.print("<h1 align='center' style='color:red'>" + sq.getMessage() + "</h1>"); 				
			}
		}
	}
}