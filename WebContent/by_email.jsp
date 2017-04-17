<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="checking_email.jsp" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
	background-color:  #008CBA;	
}
</style>
</head>
<body>
<div align="center">
<form action="By_email_process" method="post">
<div class="form-group" style="width:380px;">
							
	<div class="cols-sm-10">
		<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
					<input type="email" class="form-control" name="search_email" placeholder="Enter Email Id" autofocus autocomplete="on" required>
		</div>								
	</div>
</div>


	<div class="form-group" style="width:180px;" >
		<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button> 
	</div>
</form>
</div>
</body>
</html>