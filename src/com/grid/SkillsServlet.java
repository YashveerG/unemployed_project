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

/**
 * Servlet implementation class Skills
 */
@WebServlet("/SkillsServlet")
public class SkillsServlet extends HttpServlet 
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
		
		String query="select question_text , answer_text from skills where question_id=question_id and question_category= '"+subj+"' ORDER BY RAND() limit 11";

		try
		{	
			con = DBConnect.getDBConnection();
			
			stmt = con.createStatement();

			res = stmt.executeQuery(query);
			
			List<String> skillsList = new ArrayList<String>();
			List<String> skillans = new ArrayList<String>();
			
			while(res.next())
			{
				skillsList.add(res.getString("question_text"));
				skillans.add(res.getString("answer_text"));
			}
			
			request.getSession().setAttribute("skillsQuestionAnswersData", skillsList);	
			request.getSession().setAttribute("skillsAnswers", skillans);	
			
			request.getSession().setAttribute("count", 0);
			request.getSession().setAttribute("subject", subj);
			request.getSession().setAttribute("list_ans",null);
			
			//request.getRequestDispatcher("/test.jsp").forward(request, response);  
			response.sendRedirect("/UnEmployedGridJavaProj/test.jsp");
			//}
		}
	
		catch(Exception exc)
		{
				pw.write("<h1 style='color:red' align='center'><u>Exception thrown at runtime</u> :&nbsp;&nbsp;" + exc.getMessage() + "</h1>");	
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
				pw.print("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + sq.getMessage() + "</h1>");
			}
		}
	}
}