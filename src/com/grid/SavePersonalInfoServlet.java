package com.grid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SavePersonalInfoServlet
 */
@WebServlet("/personal_save")
public class SavePersonalInfoServlet extends HttpServlet 
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
		
		String n=request.getParameter("name");
		String d = request.getParameter("dob");
		  
		  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			 
		  Date d2 = null;
		  try
		  {
			 	d2 = formatter.parse(d);
		  }
			 
		  catch (ParseException pe) 
		  {
			    pw.print("<h1 style='color:red' align='center'>" + pe.getMessage() + "</h1>");
		  }
			
		  String stremail= request.getParameter("mail");
		  String locn=request.getParameter("address");        
		  long phNum=Long.parseLong(request.getParameter("phone"));
		  
		  request.getSession().setAttribute("Name", n);
		  request.getSession().setAttribute("DOB", d2);
		  request.getSession().setAttribute("Email", stremail);
		  request.getSession().setAttribute("Address", locn);
		  request.getSession().setAttribute("Mobile", phNum);
		
		  try
		  {
			con = DBConnect.getDBConnection();
		    st=con.createStatement(); 
		 
		    int rows=st.executeUpdate("insert into resume values(null, '"+n+"', '"+new java.sql.Date(d2.getTime())+"', '"+stremail+"', '"+locn+"', '"+phNum+"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null)");
		   		 
		    if(rows >= 1)
		    {
		    	request.getRequestDispatcher("/design.jsp").include(request, response);
		    	pw.write("<h3 align='center' style='color:green'>Personal details of "+n+" saved successfully :)</h3>");
		    }
		    
		    //response.sendRedirect("/UnEmployedGridJavaProj/design.jsp");
		}
		
		
		catch(Exception exc)
		{
				pw.print("<h1 style='color:red' align='center'>" + exc.getMessage() + "</h1>");
		}
	}
}