<%@page import="com.grid.DBConnect"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
	background-color:  #008CBA;	
}
</style>
</head>
<body>

<br><br><br><br>
<center><b><u><h1>Details</h1></u></b></center>
<br><br><br><br>
	<%!
		Connection con = null;
		static Statement st;
		static ResultSet rs = null;
		static RequestDispatcher rd;
	%>
	



<% 


String email = request.getParameter("mayl");



/*String cd_name1=(String)session.getAttribute("candidate_name");
String cd_email1=(String)session.getAttribute("candidate_email");*/
String login_email1=(String)session.getAttribute("login_email");


session.setAttribute("login_email",email);


String view_company=(String)session.getAttribute("email_company");
String view_role=(String)session.getAttribute("email_role");
String view_emp_id=(String)session.getAttribute("email_job_id");
String view_emp_email=(String)session.getAttribute("r");
String view_file=(String)session.getAttribute("f");

try
{		
	con = DBConnect.getDBConnection();
	st = con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from cand_registration where cand_email = '"+login_email1+"' ");
	if(rs.next())
	{
		String candidate_name=rs.getString("cand_name");
	    String candidate_email=rs.getString("cand_email");
	

	
	int i=st.executeUpdate("insert into email_tbl values(null,'"+candidate_name+"','"+candidate_email+"','"+view_company+"','"+view_role+"', NOW(),'"+view_emp_id+"','"+view_emp_email+"','"+view_file+"')");
	
}
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
<div style="margin-left: 400px;padding:0px 0px 10px 0px; font-size:120%;">


<strong>EMPLOYEE ID&nbsp;:&nbsp;</strong>&nbsp;<%=view_emp_id%>
<br><br>

<strong>COMPANY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>&nbsp;<%=view_company%>
<br><br>
<strong>JOB ROLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>&nbsp;<%=view_role%>
<br><br>
<strong>FILE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>&nbsp;<%=view_file %>
<br><br>
<strong>SEND TO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>&nbsp;<%= view_emp_email%>

</div>
</body>
</html>