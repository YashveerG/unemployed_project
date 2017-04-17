<%@page import="java.sql.Blob"%>

<%@page import="com.grid.DBConnect"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*" %>

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
		Connection con = null;
		static Statement st;
		static ResultSet rs = null;
		static RequestDispatcher rd;
	%>
	
	
	<%
	response.setContentType("text/html");
	
	String cd_name=(String)session.getAttribute("candidate_name");
	String cd_email=(String)session.getAttribute("candidate_email");
	String company=(String)session.getAttribute("email_company");
	String job_role=(String)session.getAttribute("email_role");
	Date date1=new Date();
	String em_id=(String)session.getAttribute("email_job_id");
	String em_email=(String)session.getAttribute("r");
	String file1=(String)session.getAttribute("f");
	
	try
	{		
		con = DBConnect.getDBConnection();
		st = con.createStatement();
		
		int i=st.executeUpdate("insert into email_tbl values(null,'"+cd_name+"','"+cd_email+"','"+company+"','"+job_role+"', NOW(),'"+em_id+"','"+em_email+"','"+file1+"')");
		
		if(i>=1)
			out.write("<body bgcolor='#abcdef'><h1 style='color:green' align='center'>inserted</h1></body>");
	}
	
	
	catch(Exception exc)
	{
				out.print("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
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
			out.print("<h1 style='color:red' align='center'>Exception thrown at runtime :  " + sq.getMessage() + "</h1>"); 
		}
	}
		%>
		
		
	</body>
	</html>