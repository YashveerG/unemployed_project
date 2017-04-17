<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="Dashboard.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Dashboard</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="bootstrap-alt/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="bootstrap-alt/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="bootstrap-alt/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<title>Insert title here</title>
<style type="text/css">
body
{
	background-color:  #008CBA;	
}
</style>

</head>

<body>
<div style="margin-left: 400px;">
<b><h1><u><center>Congratulations!!! You applied for this job :)</center></u></h1></b>
<% 
String a_c_name=request.getParameter("selected_company");
String a_j_name=request.getParameter("selected_category");
String a_id=request.getParameter("job_id");
String a_email=request.getParameter("email_emp");

session.setAttribute("email_company",a_c_name);
session.setAttribute("email_role",a_j_name);
session.setAttribute("email_job_id",a_id);
%>


<table border="2" width="40%" height="200px" align="center">
<br><br><br><br><b>
<tr>
	<td><% out.print("&nbsp;&nbsp;COMPANY NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;"+a_c_name);%></td>
</tr>

<tr>
	<td><% out.print("&nbsp;&nbsp;JOB CATEGORY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;"+a_j_name);%></td>
</tr>

<tr>
	<td><% out.print("&nbsp;&nbsp;REFERRAL_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;"+a_id);%></td>
</tr>



</table></b>

<% 
	session.setAttribute("s_a_c_name", a_c_name);
	session.setAttribute("s_a_j_name", a_j_name);
	session.setAttribute("s_a_id", a_id);
	session.setAttribute("s_email",a_email);
%>
<br><br>
<center><b><u>
	<a href="email_process.jsp" style="color: #CC0000">SEND RESUME   </a></u></b></center>
</div>
</body>
</html>