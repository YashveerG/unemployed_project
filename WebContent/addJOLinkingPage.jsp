<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDate"%>

<jsp:include page="JOAdminModule.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<%!
		static Connection conn;
		static Statement stmt;
	%>
	
	<%
		String jocategory = request.getParameter("selCategory");
		String jodetails = request.getParameter("Job Details");
		String joapply = request.getParameter("Apply button");
		
		LocalDate date = LocalDate.now();
		
		
		String insQuery = "Insert into jobs VALUES(null, '"+jocategory+"' , '"+jodetails+"' , '"+date+"' , '"+joapply+"')";
		
		try
		{
			conn = DBConnect.getDBConnection();
			stmt = conn.createStatement();
			
			int row = stmt.executeUpdate(insQuery);

			if(row > 0)
				out.write("<h1 style='color:green' align='center'>" + row + " record inserted successfully into Jobs table</h1>");  
		}
		
		catch(Exception exc)
		{
			out.write("<h1 style='color:red' align='center'><u>Exception is :</u>&emsp;"+exc.getMessage()+"</h1>"); 
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