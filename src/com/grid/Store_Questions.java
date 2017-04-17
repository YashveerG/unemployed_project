package com.grid;


import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Store_Questions
 */
@WebServlet("/Store_Questions")
public class Store_Questions extends HttpServlet
{
	Connection con = null;
    Statement st = null;
    
/**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	response.setContentType("text/html");
     PrintWriter out = response.getWriter();	
     
     String topic   = request.getParameter("topic");
     String question  = request.getParameter("question");
     String code_snippet    = request.getParameter("code_snippet");
     String comment = request.getParameter("comment");
     String user_name    = request.getParameter("user_name");
     
      HttpSession sessionn = request.getSession();
      String technology =(String)sessionn.getAttribute("tech");
    

     try
     {	
    	con = DBConnect.getDBConnection();
     	st = con.createStatement();
     	
     	st.executeUpdate("insert into df_question values(null , '"+topic+"', '"+question+"', '"+code_snippet+"','"+comment+"','"+user_name+"','"+technology+"')");
     	
     	response.sendRedirect("/UnEmployedGridJavaProj/Discussion_Forum.jsp");
     }

     catch(Exception exc)
     {
     	out.print("<h1 style='color:red'> You have not selected the technology, please select it again....</h1>");
     }

     finally
     {
        try
        {
     		st.close();
     		con.close();
        }
        
        catch(SQLException sq)
        {
     	   out.print("<h1 style='color:red'>Exception thrown at runtime : "+sq.getMessage()+"</h1>");
        }
     }
}
}