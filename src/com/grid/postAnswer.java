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
 * Servlet implementation class postAnswer
 */
@WebServlet("/postAnswer")
public class postAnswer extends HttpServlet 
{
	Connection con = null;
    Statement st = null;
/**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	 response.setContentType("text/html");
     PrintWriter out = response.getWriter();	
     
     String ans = request.getParameter("answer");
     String code_snippet = request.getParameter("code_snippet");
     String comment  = request.getParameter("comment");
     String user_name = request.getParameter("user_name");
     
      HttpSession sessionn= request.getSession(); 
      
      String techno=(String)sessionn.getAttribute("tech");
      int id=(int)sessionn.getAttribute("id");
      
    

     try
     {	
    	con = DBConnect.getDBConnection();
     	st = con.createStatement();
     	
     	st.executeUpdate("insert into df_answer values( '"+id+"' , '"+ans+"', '"+code_snippet+"','"+user_name+"','"+techno+"','"+comment+"')");
     	
     	response.sendRedirect("/UnEmployedGridJavaProj/Discussion_Forum.jsp");
     }

     catch(Exception exc)
     {
     	out.print("<h1 style='color:red'>Exception thrown at runtime : "+exc.getMessage()+"</h1>");
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