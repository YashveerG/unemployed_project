<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.grid.DBConnect"%>

<jsp:include page="InterviewQuestions&AnswersAdmin.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Interview Questions and Answers</title>
</head>
<body>
	<%!
		static Connection conn;
		static Statement stmt;
	%>
	
	<%
		String qCateg = request.getParameter("selected_technology");
		String question = request.getParameter("prashne");
		String answer = request.getParameter("uttara");
		
		LocalDate todaysDate = LocalDate.now();
		
		
		String insQuery = "Insert into intv_questions VALUES(null, '"+qCateg+"' , '"+question+"' , '"+answer+"' , '"+todaysDate+"')";
		
		try
		{
			conn = DBConnect.getDBConnection();
			stmt = conn.createStatement();
			
			int row = stmt.executeUpdate(insQuery);

			if(row > 0)
				out.write("<h1 style='color:green' align='center'>" + row + " record inserted successfully</h1>");  
		}
		
		catch(Exception exc)
		{
			out.write("<h1 align='center' style='color:red'><u>Exception is :</u>&emsp;"+exc.getMessage()+"</h1>"); 
		}
		
		finally
		{
			try
			{
				stmt.close();
				conn.close();
			}
			
			catch(Exception exc)
			{
				out.write("<h1 style='color:red' align='center'><u>Exception is :</u>&emsp;"+exc.getMessage()+"</h1>"); 
			}
		}
	%>
</body>
</html>