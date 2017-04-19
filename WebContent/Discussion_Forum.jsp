<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Discussion_Forum</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="bootstrap-alt/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="bootstrap-alt/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="bootstrap-alt/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<style>

body
{
	background-color:	#E8ECFB;
}

div.questions 
{
	background-color:	#E5E8E8;
	border-radius:	7px;
	margin-right:	3%;
}

tr.font 
{
	border-radius:	7px;
}

color: #F08922;
font-size:	120%;
width:	80%;
	
table 
{
    width: 100%;
}

th, td
{
    padding: 15px;
}
</style>
</head>
<body>

<%!
static Connection con;
static Statement st;
static ResultSet rs;
	%>
	
<form action="Ask_Query.jsp" method="post">
	<div style="margin-left:22%;margin-top:2%;">
	
    	<div class="form-group">
    		<label for="sel1" style="font-size:20px;">Choose your Technology :</label><br><br>
    		<table><tr><th>
    		<select class="form-control"  name="tech" style="width:100%;height:10%;font-size:15px;color:black;background-color:#F7F9FF;">
    		<option>---SELECT---</option>
    		<%
	    		try 
	    		{    			
					con = DBConnect.getDBConnection();
					st = con.createStatement();
					
					rs = st.executeQuery("Select df_technology_text FROM df_technology");
					
			    	while(rs.next())
			    		out.write("<option>"+rs.getString("df_technology_text")+"</option>");
	    		}
    		
			    catch(Exception exc)
				{
					out.print("<h1 align='center' style='color:red'>" + exc.getMessage() + "</h1>");
				}
			%>
    		
			</select>
			</th>
			
			<th>
				<button type="submit" class="btn btn-warning" style="width:116%;">Ask Questions</button>
			</th>
			</tr>
		</table>
	</div>

	
	</div>
	</form>
 	<form action="questions.jsp" method="post">
	<div style="margin-left:22%;margin-top:2%;">
	   	<div class="form-group">
	   	<table><tr><th>
	<select class="form-control" name="tech" style="width:100%;height:10%;font-size:15px;color:black;background-color:#F7F9FF;">
    		<option>---SELECT---</option>
    		<%
	    		try 
	    		{
	    			con = DBConnect.getDBConnection();
	    			st = con.createStatement();
	    			
	    			rs = st.executeQuery("Select df_technology_text FROM df_technology");
					
			    	while(rs.next())
			    		out.write("<option>"+rs.getString("df_technology_text")+"</option>");
	    		}
			    catch(Exception exc)
				{
					out.print("<h1 align='center' style='color:red'>" + exc.getMessage() + "</h1>");
				}
			%>
    		
			</select>
			</th>
			<th>
				<button type="submit" class="btn btn-warning" >Reply To Answers</button>
			</th>
		</tr>
	</table>
   </div>
	</div>
</form> 
<div style="margin-left:23%;margin-top:7%;">
	<div>
		<b style="font-size:18px;">Related Questions :</b>
	</div>
			<div class="questions">
				<table  class="table">
				<tr class="font" style="background-color:#B3D1E4;color:#EE2400;">
					<th>Questions</th>
					<th>Posted By</th>
				</tr>
				
				<% 
					try
					{  
						con = DBConnect.getDBConnection();	
						st = con.createStatement();
				 	rs = st.executeQuery("Select * FROM df_question order by df_question_num desc limit 10");
			    	while(rs.next())
			    		out.write("<tr>"+
			    					"<th>"+"<a href='answers.jsp?question="+rs.getString("df_question_text")+"'>"+rs.getString("df_question_text")+"</a></th>"+
			    					"<th>"+rs.getString("df_user_name")+"</th>"+
			    				  "</tr>");
				}
				catch(Exception exc)
				{
					out.print("<h1 align='center' style='color:red'>" + exc.getMessage() + "</h1>");
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
						out.print("<h1 align='center' style='color:red'>" + sq.getMessage() + "</h1>"); 
					}
				}	
			 %>
			</table>
			</div>
	</div>
</body>
</html>
