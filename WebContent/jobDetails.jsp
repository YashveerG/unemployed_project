<%@page import="java.util.LinkedList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<jsp:include page="Dashboard.jsp" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<title>Job Details display page</title>
</head>
<body>
	<div style="width: 75%; height: auto; margin-left: 270px">
	<%
		List<String> walkinJobsData = (ArrayList<String>)session.getAttribute("walkinJobOpeningsData");
		int w=0;
		
		while(w < walkinJobsData.size())
			out.write(walkinJobsData.get(w++)+ "<hr/>"); 
		
		
		List<String> interviewJobsData = (ArrayList<String>)session.getAttribute("interviewJobOpeningsData");
		int i1=0;
		
		while(i1 < interviewJobsData.size())
			out.write(interviewJobsData.get(i1++) + "<input type='button' class='btn btn-primary btn-lg' value='Apply' onclick='openEmailForm()'><br><br><hr>");
		
		
		List<String> internshipsData = (LinkedList<String>)session.getAttribute("internshipOpeningsData");
		int i2=0;
		
		while(i2 < internshipsData.size())
			out.write(internshipsData.get(i2++) + "<input type='button' class='btn btn-primary btn-lg' value='Apply' onclick='openEmailForm()'><br><br><hr>");
	%>
	
	<script type="text/javascript">
	function openEmailForm()
	{
		window.location = "Email_Apply_Form.jsp";
	}
	</script>
	</div>
</body>
</html>