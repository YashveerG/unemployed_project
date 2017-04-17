<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body
{
	background-color:  #008CBA;	
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success Page</title>
</head>
<body>
	<%!
		Connection con = null;
		static Statement st;
		static ResultSet rs = null;
		static RequestDispatcher rd;
	%>
	
	
	<%
	response.setContentType("text/html");
	
	String email = request.getParameter("mayl");
	String pass = request.getParameter("pass");
	
	try
	{		
		con = DBConnect.getDBConnection();
		st = con.createStatement();
		
		rs = st.executeQuery("Select * FROM admintbl"); 
		
		if(rs.next())
		{
				if(  (email.equalsIgnoreCase(rs.getString(1))) && (pass.equals(rs.getString(2)))  )
				{
						rd = request.getRequestDispatcher("/admin_home_page.jsp");
						//session.setAttribute("hesaru", rs.getString(1)); 
						
						rd.forward(request, response);												
				}
				
				
				else
				{	
						rd = request.getRequestDispatcher("/admin_login_page.jsp");
						rd.include(request, response);
						
						out.write("<h1 align='center' style='color:red'>Invalid login credentials, login denied :(</h1>");
				}
		}
	}
	
	
	catch(Exception exc)
	{
		out.print("<h1 align='center' style='color:red'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
	}
	
	
	finally
	{
		try
		{
			rs.close();
			st.close();  
			con.close();
		}
			
		catch(SQLException sq)
		{
			out.print("<h1 align='center' style='color:red'>Exception thrown at runtime :  " + sq.getMessage() + "</h1>"); 
		}
	}	
	%>
</body>
</html>