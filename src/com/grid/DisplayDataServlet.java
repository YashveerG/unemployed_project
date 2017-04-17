package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DisplayDataServlet
 */
@WebServlet("/display")
public class DisplayDataServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	static Connection con;
	static Statement st;
	
	static ResultSet resultset;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String mail = (String) request.getSession().getAttribute("mail");		
		
		try
		{
			con = DBConnect.getDBConnection();
			st=con.createStatement();
			
			resultset = st.executeQuery("select * from resume where email= '"+mail+"'");
			
			List<Object> resumeDetailsList = new ArrayList<>();
			
			while(resultset.next()) 
			{
				String name = resultset.getString("name");
				Date dob = resultset.getDate("dob");
				String email = resultset.getString("email");
				String address = resultset.getString("address");
				long phoneNum = resultset.getLong("phone_number");
				String pgdegree = resultset.getString("pg_degree");
				String pgcollege = resultset.getString("pg_college");
				String pguniversity = resultset.getString("pg_university");
				int pgyr = resultset.getInt("pg_completion_year");
				double pgaggregate = resultset.getDouble("pg_aggregate");
				String ugdegree = resultset.getString("ug_degree");
				String ugcollege = resultset.getString("ug_college");
				String uguniversity = resultset.getString("ug_university");
				int ugyr = resultset.getInt("ug_completion_year");
				double ugaggregate = resultset.getDouble("ug_aggregate");
				String pudegree = resultset.getString("pu_degree");
				String pucollege = resultset.getString("pu_college");
				String puboard = resultset.getString("pu_board");
				int puyr = resultset.getInt("pu_completion_year");
				double puaggregate = resultset.getDouble("pu_aggregate");
				String degree = resultset.getString("degree");
				String college = resultset.getString("school");
				String board = resultset.getString("board");
				int yr = resultset.getInt("completion_year");
				double aggregate = resultset.getDouble("aggregate");
				
				String sk = resultset.getString("skills");
				String com = resultset.getString("company");
				String pos = resultset.getString("position");
				int yrs = resultset.getInt("years_of_experience");
				String career_desc = resultset.getString("career_desc");
				String eca_desc = resultset.getString("extracurricular_desc");
				String add_desc = resultset.getString("additional_desc");
				String proj_desc = resultset.getString("project_desc");
				String certification_desc= resultset.getString("certification_desc");
				String intern_desc = resultset.getString("internship_desc");
						
				resumeDetailsList.add(name);
				resumeDetailsList.add(dob);
				resumeDetailsList.add(email);
				resumeDetailsList.add(address);
				resumeDetailsList.add(phoneNum);
				resumeDetailsList.add(pgdegree);
				resumeDetailsList.add(pgcollege);
				resumeDetailsList.add(pguniversity);
				resumeDetailsList.add(pgyr);
				resumeDetailsList.add(pgaggregate);
				resumeDetailsList.add(ugdegree);
				resumeDetailsList.add(ugcollege);
				resumeDetailsList.add(uguniversity);
				resumeDetailsList.add(ugyr);
				resumeDetailsList.add(ugaggregate);
				resumeDetailsList.add(pudegree);
				resumeDetailsList.add(pucollege);
				resumeDetailsList.add(puboard);
				resumeDetailsList.add(puyr);
				resumeDetailsList.add(puaggregate);
				resumeDetailsList.add(degree);
				resumeDetailsList.add(college);
				resumeDetailsList.add(board);
				resumeDetailsList.add(yr);
				resumeDetailsList.add(aggregate);
				resumeDetailsList.add(sk);
				resumeDetailsList.add(com);
				resumeDetailsList.add(pos);
				resumeDetailsList.add(yrs);
				resumeDetailsList.add(career_desc);
				resumeDetailsList.add(eca_desc);
				resumeDetailsList.add(add_desc);
				resumeDetailsList.add(proj_desc);
				resumeDetailsList.add(certification_desc);
				resumeDetailsList.add(intern_desc);
			}
			
			request.getSession().setAttribute("resumeDetails", resumeDetailsList);
			response.sendRedirect("/UnEmployedGridJavaProj/display.jsp");
	}
		
		
	catch(Exception exc)
	{
		pw.print("<h1 style='color:red' align='center'>" + exc.getMessage() + "</h1>");
	}
  }
}