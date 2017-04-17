package com.grid;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Employer_send_Email
 */
@WebServlet("/Employer_send_Email")
@MultipartConfig
public class EmployerSendingEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static Connection con;
	static Statement stmt;
	
	private String host, port, user, pass;
    
    public void init() 
    {
         ServletContext context = getServletContext();
            
         host = context.getInitParameter("host");
         port = context.getInitParameter("port");
         user = context.getInitParameter("user");
         pass = context.getInitParameter("pass");
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   {
		// TODO Auto-generated method stub
	response.setContentType("text/html");
	PrintWriter pw=response.getWriter();
	
	String emp_mail=request.getParameter("emp_email");
	String subj=request.getParameter("Subject");
	String cont=request.getParameter("content");
	String profile=request.getParameter("Resume");

	request.getSession().setAttribute("recepient", emp_mail);
	request.getSession().setAttribute("resume", profile);
	
	String resultMessage = "";
	
	try
	{
		JobPostingEmailUtility.sendEmail(host, port, user, pass, emp_mail, subj, cont, profile);
        
        resultMessage = "<h1 style='color:rgb(0, 255, 0)' align='center'>The e-mail was sent successfully :)</h1>";
        request.getSession().setAttribute("email_mess",resultMessage );
	  }
	
	  catch (Exception ex) 
	  {
	            ex.printStackTrace();
	            resultMessage = "<h1 style='color:#Ff0000' align='center'>" + ex.getMessage()+ "</h1>";
	  } 
	        
	  finally 
	  {
	     request.setAttribute("Message", resultMessage);
	     getServletContext().getRequestDispatcher("/JobAppEmailSentResult.jsp").forward(request, response);
	     
	     /*try
	     {
	        stmt.close();
	    	con.close();
	     }
	          
	     catch(SQLException exc)
	  	 {
	      	pw.print("<h1 align='center' style='color:red'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
	  	 }*/
	  }
	}
}