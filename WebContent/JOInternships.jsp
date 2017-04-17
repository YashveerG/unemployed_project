<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="width: 80%;height: auto; margin-left:30px;">
 <%!
 Connection con=null;
 Statement st=null;
 ResultSet rs=null;
 String query="select * from jobs where category='Internships'"; 
  %>
<% 

try{
con=DBConnect.getDBConnection();
st=con.createStatement();

rs=st.executeQuery(query);

while(rs.next())
{
out.print(rs.getString("contents")+rs.getString("button"));
}
}
catch(Exception exc){
	out.print("<h1>Exception thrown at runtime:"+exc.getMessage()+"</h1>");
	
}
finally{
	try{
		rs.close();
		st.close();
		con.close();
	}
	catch(SQLException sq){
		out.print("<h1>Exception thrown at runtime:"+sq.getMessage()+"</h1>");
	}
}
%>

+</div>
</body>
</html>