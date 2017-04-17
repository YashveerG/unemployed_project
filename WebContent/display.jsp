<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
h2{
  font-size:130%;
   color:blue;
  }
hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
}
td{
padding:0px;
} 

</style>
</head>

<body>
<form >


<div>
<%
	List<Object> resumeDetailsList = (ArrayList<Object>)session.getAttribute("resumeDetails");
	int a=0;

	if(a< resumeDetailsList.size()){%>
	
	
		<h1 style="color:blue"><b><%= resumeDetailsList.get(0) %></b></h1> 
		  <table>  <tr><th>DOB</th><td><%= resumeDetailsList.get(1) %></td></tr>
		           <tr><th>Email</th><td> <%= resumeDetailsList.get(2) %></td></tr>
		            <tr><th>Address &nbsp;</th><td><%= resumeDetailsList.get(3) %></td></tr>
		            <tr><th>Mobile</th><td><%= resumeDetailsList.get(4)%></td></tr>
		                         </table> 
		                          
	 
		</div>
		
  
 <hr>
 
   <div>
  <h2><u>EDUCATIONAL BACKGROUND</u></h2>
	 <table border="2" width="1000px">
	 <tr>
	 	<th>Degree</th>
	 	<th>College</th>
	 	<th>University</th>
	 	<th>Year</th>
	 	<th>Aggregate</th>
	 </tr>
	 
	 <tr>
		 <td align="center"><%= resumeDetailsList.get(5) %></td>
	     <td align="center"><%= resumeDetailsList.get(6)%></td>
	     <td align="center"><%= resumeDetailsList.get(7) %></td>
	     <td align="center"><%= resumeDetailsList.get(8) %></td>
	     <td align="center"><%= Float.parseFloat(resumeDetailsList.get(9).toString()) %></td>
     </tr>
     
     <tr>
	     <td align="center"><%= resumeDetailsList.get(10) %></td>
	     <td align="center"><%= resumeDetailsList.get(11)%></td>
	     <td align="center"><%= resumeDetailsList.get(12) %></td>
	     <td align="center"><%= resumeDetailsList.get(13) %></td>
	     <td align="center"><%= Float.parseFloat(resumeDetailsList.get(14).toString()) %></td>
     </tr>
     
     <tr>
	     <td align="center"><%= resumeDetailsList.get(15) %></td>
	     <td align="center"><%= resumeDetailsList.get(16)%></td>
	     <td align="center"><%= resumeDetailsList.get(17) %></td>  
	     <td align="center"><%= resumeDetailsList.get(18) %></td>
	     <td align="center"><%= Float.parseFloat(resumeDetailsList.get(19).toString()) %></td>
     </tr>
     
     <tr>
	     <td align="center"><%= resumeDetailsList.get(20) %></td>
	     <td align="center"><%= resumeDetailsList.get(21)%></td>
	     <td align="center"><%= resumeDetailsList.get(22) %></td>  
	     <td align="center"><%= resumeDetailsList.get(23) %></td>
	     <td align="center"><%= Float.parseFloat(resumeDetailsList.get(24).toString()) %></td>
     </tr>
	</table>	
</div>

<hr> 
 <div>
 <%
	  if (resumeDetailsList.get(25) != null) { %>
  <h2><u>TECHNICAL SKILLS</u></h2>
    
    <ul>
    	
    	<li><%= resumeDetailsList.get(25) %></li>
	</ul>
	<%} %>
</div>

<hr/> 

<div>
<% if ( (resumeDetailsList.get(26) != null) & (resumeDetailsList.get(27) != null)& (resumeDetailsList.get(28) != null) ){ %>

<h2><u>WORK EXPERIENCE</u></h2>
<table border="1" width="600px"> 
<tr><th>Company</th><th>Job Position</th><th>Years</th></tr>
<tr><td align="center"><%= resumeDetailsList.get(26)%></td>  
<td align="center"><%= resumeDetailsList.get(27)%></td>  
<td align="center"><%= resumeDetailsList.get(28)%></td>  	
</table>
<%}%>
</div>

<hr> 

<div>
<%if(resumeDetailsList.get(29) != null){%>
<h2><u>CAREER OBJECTIVE</u></h2>
<ul>
<li><%=resumeDetailsList.get(29)%></li>
</ul>
<%} %>
</div>


<hr> 

<div>
<%if(resumeDetailsList.get(30) != null){%>
<h2><u>EXTRACURRICULAR ACTIVITIES</u></h2>
<ul>
<li><%= resumeDetailsList.get(30)%></li>
</ul>
<%} %>
</div>

<hr> 

<div>
<%if(resumeDetailsList.get(31) != null){%>

<h2><u>ADDITIONAL INFORMATION</u></h2>
<ul>
<li><%= resumeDetailsList.get(31)%></li>
</ul>
<%} %>
</div>


<hr> 

<div>
<%if(resumeDetailsList.get(32) != null){%>
<h2><u>PROJECTS</u></h2>
<ul>
<li><%= resumeDetailsList.get(32)%></li>
</ul>
<%} %>
</div>
	
<hr> 
	
<div>
<%if(resumeDetailsList.get(33) != null){%>

<h2><u>CERTIFICATION DETAILS</u></h2>
<ul>
<li><%= resumeDetailsList.get(33)%></li>
</ul>
<%} %>
</div>

<hr> 

<div>
<%if(resumeDetailsList.get(34) != null){%>

<h2><u>INTERNSHIPS</u></h2>
<ul>
<li><%= resumeDetailsList.get(34)%></li>
</ul>
</div>

<%}}%>

</form>
</body>
</html>