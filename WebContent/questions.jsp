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
<title>Insert title here</title>
<style>
body
{
background-color:	#E8ECFB;
}

div.questions 
{
background-color:	#E5E8E8 ;
border-radius:	7px;
margin-right:	3%;
}

tr.font 
{
	color: 	#F08922;
	font-size:	120%;
}
</style>
</head>
<body>
	<%!
		static Connection con;
		static Statement st;
		static ResultSet rs;
	%>
	
	<%
		String technology =request.getParameter("tech");
		session.setAttribute("tech",technology);
		
		String techno=(String)session.getAttribute("tech");
	%>
<div style="margin-left:22%;margin-top:7%;">
	<div>
		<b style="font-size: 18px; color: #84049D">&nbsp;<%= techno %>&nbsp;</b>
		<b style="font-size: 18px;">Related Questions :</b>
	</div>
			<div class="questions" >
				<table class="table">
				<tr class="font" style="background-color:#B3D1E4;color:#EE2400">
					<th>Questions</th>
					<th>Posted BY</th>
				</tr>
				
				<% try 
				{  						
					con = DBConnect.getDBConnection();
					st = con.createStatement();
					
					rs = st.executeQuery("select * from df_question where df_technology_text= '" +techno+"' ");
					
			    	while(rs.next())
			    		out.write("<tr>"+
						    		"<th><a href='answers.jsp?question="+rs.getString("df_question_text")+"'>"+rs.getString("df_question_text")+"</a>"+"</th>"+
						    		"<th>"+rs.getString("df_user_name")+"</th>"+
					    		  "</tr>");
				}
				
				catch(Exception exc)
				{
					out.print("<h1 align='center' style='color:red'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
				}
			 %>
			</table>
			</div>
	</div>
</body>
</html>