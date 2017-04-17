package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveEducationInfoServlet
 */
@WebServlet("/education_save")
public class SaveEducationInfoServlet extends HttpServlet 
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
			
			String d=request.getParameter("pg_degree");
			String c=request.getParameter("pg_college");
			String u= request.getParameter("pg_university");
			int y=Integer.parseInt(request.getParameter("pg_year"));
			double a=Double.parseDouble(request.getParameter("pg_aggregate")); 
			

			String d1=request.getParameter("ug_degree");
			String c1=request.getParameter("ug_college");
			String u1= request.getParameter("ug_university");
			int y1=Integer.parseInt(request.getParameter("ug_year"));
			double a1=Double.parseDouble(request.getParameter("ug_aggregate")); 

			String d2=(request.getParameter("pu_degree"));
			String c2=request.getParameter("pu_college");
			String u2= request.getParameter("pu_board");
			int y2=Integer.parseInt(request.getParameter("pu_year"));
			double a2=Double.parseDouble(request.getParameter("pu_aggregate")); 
			

			String d3=request.getParameter("school_degree");
			String c3=request.getParameter("school");
			String u3= request.getParameter("board");
			int y3=Integer.parseInt(request.getParameter("year"));
			double a3=Double.parseDouble(request.getParameter("aggregate")); 
			

		    String mail=(String) request.getSession().getAttribute("Email");
		    
			
		    
			
			request.getSession().setAttribute("PgDegree", d);
			request.getSession().setAttribute("PgCollege",c);
			request.getSession().setAttribute("PgUniversity", u);
			request.getSession().setAttribute("PgYear", y);
			request.getSession().setAttribute("PgAggregate",a);
			
			request.getSession().setAttribute("UgDegree", d1);
			request.getSession().setAttribute("UgCollege",c1);
			request.getSession().setAttribute("UgUniversity", u1);
			request.getSession().setAttribute("UgYear", y1);
			request.getSession().setAttribute("UgAggregate",a1);
			
			request.getSession().setAttribute("PuDegree", d2);
			request.getSession().setAttribute("PuCollege",c2);
			request.getSession().setAttribute("PuBoard", u2);
			request.getSession().setAttribute("PuYear", y2);
			request.getSession().setAttribute("PuAggregate",a2);
			
			request.getSession().setAttribute("Degree", d3);
			request.getSession().setAttribute("School",c3);
			request.getSession().setAttribute("Board", u3);
			request.getSession().setAttribute("Year", y3);
			request.getSession().setAttribute("Aggregate",a3);

			try
			{
				con = DBConnect.getDBConnection();
				st=con.createStatement();
				
				int rows=st.executeUpdate("update resume set pg_degree='"+d+"', pg_college='"+c+"', pg_university='"+u+"', pg_completion_year='"+y+"', pg_aggregate='"+a+"',ug_degree='"+d1+"', ug_college='"+c1+"', ug_university='"+u1+"', ug_completion_year='"+y1+"', ug_aggregate='"+a1+"', pu_degree='"+d2+"', pu_college='"+c2+"', pu_board='"+u2+"', pu_completion_year='"+y2+"', pu_aggregate='"+a2+"', degree='"+d3+"', school='"+c3+"', board='"+u3+"', completion_year='"+y3+"', aggregate='"+a3+"' where email='"+mail+"'");                
				
				if(rows > 0)
				{
					request.getRequestDispatcher("/design.jsp").include(request, response);
					pw.write("<h3 align='center' style='color:green'>Education details of "+request.getSession().getAttribute("Name")+" saved successfully :)</h3>");
				}
			}

			catch(Exception exc)
			{
				pw.print("<h1 style='color : red' align='center'>" + exc.getMessage() + "</h1>");
			}		
	}
}