package com.grid;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

    @WebServlet("/email_process_servlet")
    public class email_process_servlet extends HttpServlet
    {
	private static final long serialVersionUID = 1L;
		
	private String host, port, user, pass;
        
    public void init() 
    {
         ServletContext context = getServletContext();
            
         host = context.getInitParameter("host");
         port = context.getInitParameter("port");
         user = context.getInitParameter("user");
         pass = context.getInitParameter("pass");
    }
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String recipient = request.getParameter("recipient_email");
        String subject = request.getParameter("subject");
        String content = request.getParameter("content");
        String file1=request.getParameter("resume");
        
        HttpSession session=request.getSession();
        
        session.setAttribute("r",recipient );
        session.setAttribute("f",file1 );
                
        String resultMessage = "";	
        
        try 
        {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content,file1);
            
            resultMessage = "<h1 style='color:rgb(0, 255, 0)'>The e-mail was sent successfully :)</h1>";
            session.setAttribute("email_mess",resultMessage );
        } 
        
        catch (Exception ex) 
        {
            ex.printStackTrace();
            resultMessage = "<h1 style='color:#Ff0000'>There were an error: " + ex.getMessage()+"</h1>";
        } 
        
        finally 
        {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/Result.jsp").forward(request, response);
        }
    }
}