<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="Dashboard.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap-alt/assets/css/bootstrap.css">

<!-- Website Font style -->
<link rel="stylesheet" href="bootstrap-alt/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap-alt/assets/css/custom.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<title>Send Email to Employer</title>
</head>
<body>
<div class="container" align="center">   
			<div class="row main">
				<div class="panel-heading">  
					<div class="panel-title text-center">
						<h1 class="title" style="color: green; margin-left: 140px"><u>Send E-mail to the Employer</u></h1>																
					</div>					
				</div>
				
				
				<div class="main-login main-center">   				
				<form class="form-horizontal" method="post" action="send_email" enctype="multipart/form-data">  
				
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 417px;">Recipient address</label>
							<div class="cols-sm-10" style="width: 610px;">  
								<div class="input-group" style="margin-left: 74px;"> 
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="recipient" placeholder="Receiver e-mail address" required autocomplete="off" value="<%=session.getAttribute("empl_mail") %>" style="font-family : Verdana; font-size: 20px;" disabled/>
								</div>								
							</div>	
						</div>
						
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 417px;">Subject</label>
							<div class="cols-sm-10" style="width: 510px;">  
								<div class="input-group" style="margin-left: 145px;"> 
									<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
									<input type="text" class="form-control" name="subject" autofocus placeholder="Subject" required autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>								
							</div>	
						</div>
						
						
						<div class="form-group">
							<label for="address" class="cols-sm-2 control-label" style="float: left; margin-left: 417px;">Content</label>
							<div class="cols-sm-10" style="width: 505px;">
								<div class="input-group" style="margin-left: 142px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
									<textarea class="form-control" name="content" rows="3" required placeholder="Message" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="address" class="cols-sm-2 control-label" style="float: left; margin-left: 420px;">Resume</label>
							<div class="cols-sm-10" style="width: 500px;">
								<div class="input-group" style="margin-left: 140px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
									<input type="file" class="form-control" name="file" required placeholder="Upload" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'/> 
								</div>
							</div>
						</div>
						
						<br>
						
						<div class="form-group" style="width: 200px;">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 190px;">Send E-mail</button> 
						</div>
				</form>
				</div>
				</div>
				</div>
<%-- <form action="Employer_send_Email" method="post">     
<div style="margin-left: 280px;">
<h2>Send Email to the Employer</h2>  
To: &emsp;&emsp;&emsp;&emsp;<input type="email" name="emp_email" required value="<%=session.getAttribute("empl_mail")%>" disabled size="50"><br><br>
Subject:&emsp;&emsp;<input type="text" required name="Subject" autofocus size="50"><br><br>
content:&emsp;&emsp;<textarea rows="10" cols="50" required name="content"></textarea><br><br>
Resume:&emsp;&emsp;&emsp;<input type="file" name="Resume" /><br><br>
&emsp;&emsp;&emsp;&emsp;<input type="submit" class="btn btn-primary btn-lg" value="Send Email">
</div>
</form> --%>
</body>
</html>