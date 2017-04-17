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
 * Servlet implementation class IQAdminServlet
 */
@WebServlet("/add_interview_questions")
public class IQAdminServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	static Connection conn;
	static Statement stmt;
	static ResultSet res;
	
	static int count;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			String mimeType = "text/html";
			
			response.setContentType(mimeType);
			PrintWriter pw = response.getWriter();
			
			String intv_question_category = request.getParameter("selected_technology");
			String question = request.getParameter("prashne");
			String answer = request.getParameter("uttara");
			
			LocalDate todaysDate = LocalDate.now();
			
			String selectQuery = new String("Select * from intv_questions where intv_question_text = '"+question+"'");
			String insQuery = "Insert into intv_questions VALUES(null, '"+intv_question_category+"' , '"+question+"' , '"+answer+"' , '"+todaysDate+"')";
			
			try
			{
				conn = DBConnect.getDBConnection();
				stmt = conn.createStatement();
				
				res = stmt.executeQuery(selectQuery);
				
				while(res.next())
					count+=1;
				
				if(count >= 1)
					throw new SQLException("Duplicate question");
				
				else
				{
					int row = stmt.executeUpdate(insQuery);
	
					if(row > 0)
					{
						request.getRequestDispatcher("/InterviewQuestions&AnswersAdmin.jsp").include(request, response);
						pw.write("<h1 style='color:green' align='center'>" + row + " tuple inserted successfully :)</h1>");  
					}
				}
			}
			
			catch(Exception exc)
			{
				request.getRequestDispatcher("/InterviewQuestions&AnswersAdmin.jsp").include(request, response);
				pw.write("<h1 align='center' style='color:red'>"+exc.getMessage()+"</h1>"); 
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
					request.getRequestDispatcher("/InterviewQuestions&AnswersAdmin.jsp").include(request, response);
					pw.write("<h1 style='color:red' align='center'>"+exc.getMessage()+"</h1>"); 
				}
			}
	}
}