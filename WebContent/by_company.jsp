<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<jsp:include page="checking_email.jsp" />

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
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form action="By_company_process" method="post">
<%!
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;

	
%>
<% 
     response.setContentType("text/html");
try
{
		
		 con=DBConnect.getDBConnection();
		 stmt=con.createStatement();
	    rs=stmt.executeQuery("select * from company ");%>
	    <br><br><br><br>

		<div class="form-group">
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
									
									<select class="form-control" name="company" style="width:380px; margin-left: 500px">
										<option>Select a company</option>
										
										<%while(rs.next())
		{ %>
	
		
	
		
	      
		  <option><%=rs.getString("company_name")%></option>
		  <% } %> 
									</select>									
								</div>
							</div>
						</div>
<%    
}



catch(Exception e)
{
out.print("exception thrown at runtime"+e.getMessage() );
}



finally
{
try
{
stmt.close();
con.close();
}
catch(SQLException sq)
  {
out.print("exception thrown at runtime:"+sq.getMessage());
  }
}
%>
     <div class="form-group" style="width:130px;" >
		<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button> 
	 </div>

</form>
</div>
</body>
</html>