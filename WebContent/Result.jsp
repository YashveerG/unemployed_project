<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="email_process.jsp" />
  
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
<br><br><br><br>
<center>
        <h3><%=request.getAttribute("Message")%></h3>
        
       <%
        String s1=(String)session.getAttribute("email_mess");
        int l1=s1.length();
        String s2="<h1 style='color: green;'>The e-mail was sent successfully :)</h1>";
        int l2=s2.length();
        if(l1==l2)
        {%>
        <a href="view_resume.jsp">VIEW DETAILS</a>
        <% }%>
       
       
</center>

</body>
</html>