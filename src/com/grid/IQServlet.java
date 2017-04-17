package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IQ
 */
@WebServlet("/IQServlet")
public class IQServlet extends HttpServlet
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
		
		String subj = request.getParameter("subject");

		try
		{	
			con = DBConnect.getDBConnection();
			
			stmt = con.createStatement();
			
			res = stmt.executeQuery("Select * from Intv_Questions where intv_question_category = '"+subj+"'");
			
			List<String> intv_qa_list = new ArrayList<>();
			
			
			while(res.next())
			{
				String question = res.getString("intv_question_text");
				String answer = res.getString("intv_answer_text");
				
				intv_qa_list.add(question);
				intv_qa_list.add(answer);
			}
			
			request.getSession().setAttribute("interviewQuestionAnswersData", intv_qa_list);			
			request.getRequestDispatcher("/IQ.jsp").forward(request, response);  
		}
	
		catch(Exception exc)
		{
				pw.write("<h1 align='center' style='color:red'><u>Exception thrown at runtime</u> :&nbsp;&nbsp;" + exc.getMessage() + "</h1>");	
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
				pw.print("<h1 style='color:red' align='center'><u>Exception thrown at runtime</u> :&nbsp;&nbsp;" + sq.getMessage() + "</h1>");
			}
		}
	}
}