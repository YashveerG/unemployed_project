<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="softskills.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
Connection con = null;
static Statement st;
%>

<% 

response.setContentType("text/html");

String name  = request.getParameter("user");
String email = request.getParameter("email");
String sub = request.getParameter("subject");
long mobile = Long.parseLong(request.getParameter("mob_no"));

try
{	

	con = DBConnect.getDBConnection();
	st = con.createStatement();
	int numOfRows=st.executeUpdate("insert into soft_skills values(null, '"+name+"', '"+email+"', '"+sub+"', '"+mobile+"')");
	
	if(numOfRows > 0)		
    	out.write("<h1 style='color:green'>"+name+" registered successfully, wait for the response. :)</h1>");     	
}

catch(Exception exc)
{
	out.print("<h1 style='color:red' align='center'>"+exc.getMessage()+"</h1>");
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
	   out.print("<h1 style='color:red' align='center'>"+sq.getMessage()+"</h1>"); 
   }
}
%>
 

</body>
</html>