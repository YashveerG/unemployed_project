package com.grid;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/By_company_process") 
public class By_company_process extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	Connection con=null;
	Statement stmt=null;
	ResultSet  rs= null;
	
    public By_company_process() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.getRequestDispatcher("/checking_email.jsp").include(request, response);
	    
		response.setContentType("text/html");	    	    			
		PrintWriter ps=response.getWriter();
		
		String search_company=request.getParameter("company");
		
		try
		{				
			  con=DBConnect.getDBConnection();
			  stmt=con.createStatement();
			  
			  rs=stmt.executeQuery("select * from email_tbl");
			    
			    while(rs.next())
			    {
			    	if(search_company.equals(rs.getString("company_name")))
			    	{
				    	//ps.println("<br><br><br>");
				    	ps.println("");
				    	ps.println("<table border='2' align='left'>");
			    		
				    	ps.println("<tr>");
					    	ps.print("<th style='width : 300px ;	text-align : center'>Candidate Name</th>");		
					    	ps.print("<th style='width : 300px ;	text-align : center'>Candidate Email</th>");		
					    	ps.print("<th style='width : 300px ;	text-align : center'>Company Name</th>");			
					    	ps.print("<th style='width : 300px ;	text-align : center'>Job Category</th>");			
					    	ps.print("<th style='width : 300px ;	text-align : center'>Sent Resume On</th>");	
					    	ps.print("<th style='width : 300px ;	text-align : center'>Employee Id</th>");			    	
					    	ps.print("<th style='width : 300px ;	text-align : center'>Employee Email</th>");			    	
					    	ps.print("<th style='width : 300px ;	text-align : center'>File</th>");				
				    	ps.println("</tr>");	   
				    		   
				    	ps.println("<tr>");  
					    	ps.println("<td style='width : 300px;	text-align : center'>"+ rs.getString("cand_name")+"</td>");   			
					    	ps.println("<td style='width : 300px;	text-align : center'>"+ rs.getString("cand_email")+"</td>"); 		
					    	ps.println("<td style='width : 300px;	text-align : center'>"+ rs.getString("company_name")+"</td>");	        
					    	ps.println("<td style='width : 300px;	text-align : center'>"+ rs.getString("job_category")+"</td>");	    
					    	ps.println("<td style='width : 300px;	text-align : center'>"+ rs.getDate("resume_sent_date")+"</td>");            
					    	ps.println("<td style='width : 300px;	text-align : center'>"+ rs.getString("ref_job_id")+"</td>");
					    	ps.println("<td style='width : 300px;	text-align : center'>"+ rs.getString("emp_email")+"</td>");				    	
					    	ps.println("<td style='width : 300px;	text-align : center'><a href='https://www.google.com/gmail'>"+ rs.getString("emp_resume")+"</a></td>");					    	
				    	ps.println("</tr>");	
				    	
				    	ps.println("</table>");
				    	
				    	ps.print("<br><br><br>");
				    	
				    	ps.print("<center>*************************************************</center>");
			    	}
				  }	    
			}
		
		    catch(Exception e)
		    {
				 ps.println("<h1 style='color:red' align='center'>Exception thrown at runtime:&emsp;"+e.getMessage()+"</h1>");
		    }
				    
		    finally
			{
				try
				{
					 rs.close();
					 stmt.close();
					 con.close();
				}
				
				catch(SQLException sq)
				{
				    	ps.println("<h1 style='color:red' align='center'>Exception thrown at runtime:&emsp;"+sq.getMessage()+"</h1>");
				}
			}
		}
	}