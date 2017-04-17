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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success Page</title>
</head>
<body>
	<%!
		static Connection con;
		static Statement st;
		static ResultSet rs;
	%>
	
	
	<%
	response.setContentType("text/html");
	
	String email = request.getParameter("mayl");
	String pass = request.getParameter("pass");
	
	try
	{		
		con = DBConnect.getDBConnection();
		st = con.createStatement();
		
		rs = st.executeQuery("Select * FROM cand_registration"); 
		
		while(rs.next())
		{
				if(  (email.equalsIgnoreCase(rs.getString("cand_email"))) && (pass.equals(rs.getString("cand_password")))  )
				{												
						session.setAttribute("candidateId", rs.getInt("cand_id"));   
						session.setAttribute("hesaru", rs.getString("cand_name")); 
						session.setAttribute("emailId", rs.getString("cand_email"));
				
						request.getRequestDispatcher("/Dashboard.jsp").forward(request, response);												
				}
				
				else
				{	
						request.getRequestDispatcher("/Login.jsp").include(request, response);
						
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