<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDate"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Details</title>
</head>
<body>
	<%!
		static Connection conn;
		static Statement stmt;
		static ResultSet rs;
	%>
	
	<%
	 
	 String title=request.getParameter("Job Title");
	 String id=request.getParameter("Job Id");
	 String location=request.getParameter("Job Location");
	 String category=request.getParameter("selCategory");
	 String details=request.getParameter("Job Details");
	 String links=request.getParameter("Job Links");
	 String workexpyears=request.getParameter("workExpInYears");
	 String workexpmonths=request.getParameter("workExpInMonths");
	 String salaryLakhs=request.getParameter("SalaryinLackhs");
	 String salaryThous=request.getParameter("SalaryinThousands");
	 String totalSal = salaryLakhs + "." + salaryThous;
	 String totalexp= workexpyears+"."+workexpmonths;
/* String qCateg = request.getParameter("selCategory");
		String question = request.getParameter("Job Details");
		String answer = request.getParameter("Apply button"); */
		LocalDate todaysDate = LocalDate.now();
		
		String insQuery="Insert into job_posting values(null,'"+session.getAttribute("empl_mail")+"','"+title+"','"+id+"','"+location+"','"+category+"','"+details+"','"+links+"','"+totalexp+" years','"+totalSal+" lakhs','"+todaysDate+"')";
		/* String insQuery = "Insert into Walkins VALUES(null, '"+qCateg+"' , '"+question+"' , '"+todaysDate+"' , '"+answer+"')"; */
		
		try
		{
			conn = DBConnect.getDBConnection();
			stmt = conn.createStatement();
		
			int row = stmt.executeUpdate(insQuery);
			
			if(row > 0)
			{
				
				session.getAttribute("mail");
				out.write("<div style='margin-left:300px;'><h1>CONGRATULATIONS...Now You are being part of world's #1. Job Portal..!!</h1>"+
		        "<h1 style='color: green'>Un-Employed Job Portal has received your job post. We will contact you soon with suitable candidates for your firms.</h1>Please click <a href='Homepage_UnEmployed.jsp' onmousedown='this.href = appendParamsOnce(this.href, '&isid=hire&ikw=toppostjob')' class='btn btn-primary btn-lg'>Here</a> to go back to home page"+
			   "</p>"+"Please click <a href='JobPost_homepage.jsp' onmousedown='this.href = appendParamsOnce(this.href, '&isid=hire&ikw=toppostjob')' class='btn btn-primary btn-lg'>Here</a> to go back to Post Jobs again</p></div>");  		    
		
				/* String emp_email = null;
				String query="select jobpost_email from job_posting where jobpost_email='"+email+"'";
			    res=stmt.executeQuery(query);    		
				
			    while(res.next()){
			    	emp_email=res.getString("jobpost_email");
			    }
				request.getSession().setAttribute("employer_email", emp_email); */
						
			}
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