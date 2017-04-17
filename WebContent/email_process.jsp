<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="Dashboard.jsp" />
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
<style type="text/css">
body
{
	background-color:  #008CBA;	
}
</style>
</head>
<body>
<div align="center">
<%
String s_a_c_name1=(String)session.getAttribute("s_a_c_name");
String s_a_j_name1=(String)session.getAttribute("s_a_j_name");
String s_a_id1=(String)session.getAttribute("s_a_id");
%>

<div class="container">
 <div class="row main" align="center">
	<div class="panel-heading">
		<div class="panel-title text-center">
			<h1 class="title">Send New E-mail</h1> 
		</div>
	</div>


<div class="main-login main-center">
<form class="form-horizontal" method="post" action="email_process_servlet">
 

   <div class="form-group">
			<label for="mail" class="cols-sm-2 control-label" style="float: left;margin-left: 300px;">Recipient E-mail</label>
				<div class="cols-sm-10" style="width:450px; ">
					<div class="input-group" style="margin-left: 50px;">
						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
						<input type="email" class="form-control" name="recipient_email" placeholder="localpart@domain" autofocus required/>
					</div>
				</div>
	</div>
   
   
      
    <div class="form-group">
			<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 300px;">Subject</label>
				<div class="cols-sm-10" style="width:500px;">
					<div class="input-group" style="margin-left: 100px;">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input type="text" class="form-control" name="subject" placeholder="Subject"  autocomplete="on" required>
					</div>								
				</div>
	</div>   
   
   
   
   
   
	<div class="form-group">
 			<label for="fileSelekted" class="cols-sm-2 control-label" style="float: left; margin-left: 300px;">Content</label>
				<div class="cols-sm-10" style="width:500px; ">
	  				<div class="input-group" style="margin-left: 100px;">
		    			<span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
		         		<textarea rows="10" cols="39" class="form-control" name="content"></textarea>
	  				</div>
				</div>
	</div>
   
   
   
   
   
     
	<div class="form-group">
			<label for="fileSelekted" class="cols-sm-2 control-label" style="float: left; margin-left: 300px;">Resume</label>
				<div class="cols-sm-10" style="width:500px; ">
					<div class="input-group"style="margin-left: 100px;">
						<span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span> 
						<input type="file" class="form-control" name="resume" required/>
					</div>
				</div>
	</div>
   
   
   
 	<div class="form-group" style="width: 150px; margin-left: 130px;">
			<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Send E-mail" />
	</div> 
   </form>
</div>
</div>
</div>
<!-- <form method="post" action="email_process_servlet">
<table border="2" width="40%" align="center">
<caption><h2>Send New E-mail</h2></caption>
   
   <tr>
	   <td>&nbsp;Recipient Address</td>
	   <td><input type="email" name="recipient_name" size="55" autofocus required/></td>
   </tr>
   
   <tr>
	   <td>&nbsp;Subject</td>          
	   <td><input type="text" name="subject" size="55" autocomplete="off"/></td>
   </tr>
   
   
   <tr>
	   <td>&nbsp;Content</td>          
	   <td><textarea rows="10" cols="55" name="content"></textarea></td>
   </tr>
   
    <tr>
   <td>&nbsp;Attach File</td>      
   <td><input type="file" name="resume" size="50" required> </td> 
   </tr>  
    
   <tr>
    <td colspan="3" align="center"><input type="submit" value="SEND" /></td>
   </tr>    
   
   </table>
   
   </form> -->

</div>
</body>
</html>