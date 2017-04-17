<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
       
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
<body ><br><br><br><br>
<div align="center">
<form action="referral_jobs_email.jsp" method="post">
<b align="center"><font size=15px;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>JOB REFERRAL FORM</u></font></b>
<br><br><br>

<%!
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	
%>


<%     
	try
	{		
		 con=DBConnect.getDBConnection();
		 stmt=con.createStatement();
		 
	    rs=stmt.executeQuery("select * from company ");%>
	    
	    <div class="form-group">
			<label for="gender" class="cols-sm-2 control-label" style="float: left; margin-left: 403px;">Company</label>
					<div class="cols-sm-10" style="width: 503px;">
						<div class="input-group" style="margin-left: 78px;">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<select class="form-control" name="selected_company" required style="font-family : Verdana; font-size: 20px; height:40px">																							
									<option value="">Select a Company</option>
									<%while(rs.next())
										{ %>
											<option><%=rs.getString("company_name")%></option>
									 <% } %>																							 									
								</select>	   																																																																				
						</div>								
					</div>							
		</div>

<% rs1=stmt.executeQuery("select * from category "); %>

		<div class="form-group">
			<label for="gender" class="cols-sm-2 control-label" style="float: left; margin-left: 403px;">Category</label>
					<div class="cols-sm-10" style="width: 505px;">
						<div class="input-group" style="margin-left: 82px;">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<select class="form-control" name="selected_category" required style="font-family : Verdana; font-size: 20px; height:40px">																							
									<option value="">Select a Category</option>
									<%while(rs1.next())
										{ %>
											<option><%=rs1.getString("category_name")%></option>
									 <% } %>																							 									
							</select>	   																																																																				
						</div>								
					</div>							
		</div>
  <% 
}


catch(Exception e)
{
	out.print("<h1 align='center' style='color:red'>"+e.getMessage()+"</h1>"); 
}



finally
{
	try
	{
		rs1.close();
		rs.close();
		stmt.close();
		con.close();
	}
	
	catch(SQLException sq)
	{
		out.print("<h1 align='center' style='color:red'>"+sq.getMessage()+"</h1>");
	}
}
%>

		<div class="form-group">
			<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 417px;">Job ID</label>
				<div class="cols-sm-10" style="width: 510px;">  
					<div class="input-group" style="margin-left: 87px;"> 
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input type="text" class="form-control" name="job_id" placeholder="Enter Job ID" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
					</div>								
				</div>	
		</div>


		<div class="form-group" style="width:130px;" >
			<button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 40px;">Submit</button> 
		</div>
</form>
</div>
</body>
</html>