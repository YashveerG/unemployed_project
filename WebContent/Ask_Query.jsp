<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:#E8ECFB  ;
}
</style>
</head>
<body>
<% 
	String technology =request.getParameter("tech");

	session.setAttribute("tech",technology);
	String techno=(String)session.getAttribute("tech");
	
%>
<form action="Store_Questions" method="post">
<div style="margin-left:22%;margin-top:2%;">
<div>
	<b style="font-size:18px;">Topic : </b><br><input style="border:0px;border-radius:5px;font-size:18px;width:41%;background-color:#F7F9FF;" type="text" name="topic" autofocus required autocomplete="off"/><br><br>
	<b style="font-size:18px;">Your Question : <sup style="color:red;">*</sup></b><br>

	 <textarea style="border-radius:5px;font-size:15px;border:0px;background-color:#F7F9FF;" rows="3" name="question" required cols="51"></textarea><br><br>
	 <b style="font-size:18px;">Any Code Snippet :</b><br>
	 
	 <textarea style="border-radius:5px;font-size:15px;border:0px;background-color:#F7F9FF;" rows="14" name="code_snippet" cols="51"></textarea><br><br>
	 <b style="font-size:18px;">Comments :</b><br>
	 
	<textarea style="border-radius:5px;font-size:15px;border:0px;background-color:#F7F9FF;" rows="2" name="comment" cols="51"></textarea><br><br>
	<b style="font-size:18px;">Your Name Please :</b><br>
	
	<input style="border-radius:5px;font-size:18px;width:41%;border:0px;background-color:#F7F9FF;" type="text" name="user_name" required autocomplete="off"/><br><br>
	<button type="submit" class="btn btn-warning">Post Your Question</button>
</div>
</div>
</form>
</body>
</html>