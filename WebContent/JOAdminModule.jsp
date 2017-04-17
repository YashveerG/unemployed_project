<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bs-binary-admin/assets/css/bootstrap.css">

<!-- Website CSS style -->
<!-- <link rel="stylesheet" type="text/css" href="bootstrap/css/main.css"> -->

<!-- Website Font style -->
<link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<title>Job Openings Admin Module</title>
</head>
<body>
	<div class="container" align="center">  
			<div class="row main">
				<div class="panel-heading">
					<div class="panel-title text-center">
						<h1 class="title">Job Openings Admin Module</h1> 
					</div>
				</div>
				
				<div class="main-login main-center"> 
				<form class="form-horizontal" method="post" action="addJOLinkingPage.jsp" style="width: 511px">  
				
						<div class="form-group"> 
							<label for="selIndustry" class="cols-sm-2 control-label"></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
									
									<select class="form-control" name="selCategory" style="width: 515px">
										<option style="font-size:20px;"><h2 align="center">---------------------------------Select category---------------------------------------</h2></option> 
										<option style="font-size:20px;">Walkins</option>
										<option style="font-size:20px;">Interviews</option>
										<option style="font-size:20px;">Internships</option>
										</select>									
								</div>
							</div>
						</div>
						
								
					 <div class="form-group">
							<label for="name" class="cols-sm-2 control-label"></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i></i></span>
									<textarea class="form-control" name="Job Details" placeholder="Enter job details" required style='font-size:20px; width:100%; overflow-y:hidden;' onkeyup='this.rows = (this.value.split(" ").length||1);'></textarea> 
								</div>								
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="mail" class="cols-sm-2 control-label"></label> 
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i></i></span>
									<textarea class="form-control" name="Apply button" placeholder="Enter the links and the Apply button link" required style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split(" ").length||1);'></textarea>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Add</button> 
						</div>												
					</form>
				</div>
			</div>
		</div>
</body>
</html>