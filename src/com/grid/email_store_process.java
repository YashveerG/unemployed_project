package com.grid;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.Date;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class email_store_process extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public email_store_process()
    {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter ps=response.getWriter();
	    
	    HttpSession session=request.getSession(); 
	   
		String cd_name=(String)session.getAttribute("candidate_name");
		String cd_email=(String)session.getAttribute("candidate_email");
		String company=(String)session.getAttribute("email_company");
		String job_role=(String)session.getAttribute("email_role");
		Date date1=new Date();
		String em_id=(String)session.getAttribute("email_job_id");
		String em_email=(String)session.getAttribute("r");
		String file1=(String)session.getAttribute("f");
		
		Connection con=null;
		Statement stmt=null;
		
		try
		{		
			con = DBConnect.getDBConnection();
			stmt = con.createStatement();
			
			int i=stmt.executeUpdate("insert into email_tbl values(0,'"+cd_name+"','"+cd_email+"','"+company+"','"+job_role+"', NOW(),'"+em_id+"','"+em_email+"','"+file1+"')");
			
			if(i>=1)
				ps.print("<body bgcolor='#abcdef'><h1 style='color:green' align='center'>inserted</h1></body>");
		}
		catch(Exception exc)
		{
					ps.write("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
		}
			
		finally
		{
			try
			{			
					stmt.close();  
					con.close();
			}
					
			catch(SQLException sq)
			{
					ps.write("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + sq.getMessage() + "</h1>"); 
			}
		}
	}
}		