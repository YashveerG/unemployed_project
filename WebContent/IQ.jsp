<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<jsp:include page="Dashboard.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"> -->

<script src="bootstrap/js/jquery.min.js"></script>
    <!-- <script type="text/javascript" src="jquery-3.1.1.js"></script> -->
<script src="bootstrap/js/bootstrap.min.js"></script>

<style type="text/css"> 
.AutoScroll 
{
        position: relative;
        top: 5px;
        max-height: 500px;
        max-width : 1200px;        
        overflow-y: scroll;
        padding: 20px;
        overflow: hidden;
}
</style>      
<title>Interview Questions</title>
</head>
<body>
	<%String subj = request.getParameter("subject"); %>
    
	<marquee bgcolor="#abcdef" direction="right" scrollamount="10"><h3><%=subj %> Interview Questions</h3></marquee>	
	<div style="width: 80%; height: auto; margin-left: 270px;">	
	<div class="AutoScroll scroller" id="id" data-config='{"delay" : 180000 , "amount" : 300}'>	
	
	<%
		List<String> IQData = (ArrayList<String>)session.getAttribute("interviewQuestionAnswersData");
		int count=0;
		
		while(count < IQData.size())
			out.write("<p style='font-weight : bold; color: #3A7e26'>"+IQData.get(count++)+"</p>" + "<font style='color: #550303; size: 4px; face: times new roman;'>"  + IQData.get(count++) + "</font>");  
	%>
	</div>
	</div>
	
	<script type="text/javascript" src="js/autoscroll.js"></script>
	<script type="text/javascript">
		$(".id-2").scroller();
	</script>
</body>
</html>
