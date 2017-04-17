<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">

<!-- Website Font style -->
<link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap/css/custom.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<title>Un-Employed Employer's Job Posting Page</title>
</head>
<body>
 <div style="color: white;padding: 15px 50px 5px 50px;float: right;	font-size: 16px;">				
<a href="Homepage_UnEmployed.jsp" class="btn btn-danger square-btn-adjust">Logout</a></div>						
      <div class="container">  
			<div class="row main" align="center"> 	
		<div class="panel-heading">  
				<div class="panel-title text-center">
			<h3 class="title" style="color: green;"><u>Continue filling Employer's Job posting details..!!</u></h3>  
					</div>
				</div>
				
				<div class="main-login main-center">   
				<form class="form-horizontal" method="post" action="adminLink">  
						
					<div class="form-group">
							<label for="Job Title" class="cols-sm-2 control-label" style="float: left; margin-left: 348px;">Job Title</label>
							<div class="cols-sm-10" style="width: 512px;">
								<div class="input-group" style="margin-left: 70px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" name="Job Title" placeholder="Job Title" autofocus autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>	
						<div class="form-group">
							<label for="Job Id" class="cols-sm-2 control-label" style="float: left; margin-left: 360px;">Job Id</label>
							<div class="cols-sm-10" style="width: 515px;">
								<div class="input-group" style="margin-left: 74px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" name="Job Id" placeholder="Job Id" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="Job Location" class="cols-sm-2 control-label" style="float: left; margin-left: 312px;">Job Location</label>
							<div class="cols-sm-10" style="width: 515px;">
								<div class="input-group" style="margin-left: 75px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" name="Job Location" placeholder="Job Location" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
					<div class="form-group">
							<label for="Select Category" class="cols-sm-2 control-label" style="float: left; margin-left: 250px;">Select a Job Category</label>
							<div class="cols-sm-10" style="width: 518px;">
								<div class="input-group" style="margin-left: 78px;">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<select class="form-control" name="selectedCategory" style="font-family : Verdana; font-size: 20px;">																							
									<option>Walkins</option>
									<option>Interviews</option>
									<option>Internships</option>																							 									
								</select>	   																																																																				
								</div>								
							</div>							
						</div>
						
						<div class="form-group">
							<label for="Job Details" class="cols-sm-2 control-label" style="float: left; margin-left: 320px;">Job Details</label>
							<div class="cols-sm-10" style="width: 520px;">
								<div class="input-group" style="margin-left: 82px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
									<textarea class="form-control" name="Job Details" rows="3" placeholder="Job Details" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="Job Links" class="cols-sm-2 control-label" style="float: left; margin-left: 325px;">Job Links</label>
							<div class="cols-sm-10" style="width: 523px;">
								<div class="input-group" style="margin-left: 85px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
									<textarea class="form-control" name="Job Links" rows="3" placeholder="Enter job links(if any)" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="workExp" class="cols-sm-2 control-label" style="float: left; margin-left: 280px;">Work Experience</label>
							<div class="cols-sm-10" style="width: 521px;">
								<div class="input-group" style="margin-left: 83px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span> 
									<input type="number" class="form-control" name="workExpInYears" placeholder="Years" min="0" max="40" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
									
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
									<input type="number" class="form-control" name="workExpInMonths" placeholder="Months" min="0" max="11" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>									
									</div>																							
								</div>																
							</div>
						
						
						<div class="form-group">
							<label for="Salary" class="cols-sm-2 control-label" style="float: left; margin-left: 240px;">Annual Salary/Stipend</label>
							<div class="cols-sm-10" style="width: 520px;">
								<div class="input-group" style="margin-left: 84px;">
									<span class="input-group-addon">INR</span> 
									<input type="number" class="form-control" name="SalaryinLakhs" placeholder="Lakhs" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
									
									<span class="input-group-addon">INR</span>
									<input type="number" class="form-control" name="SalaryinThousands" placeholder="Thousands" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>																					
								</div>
							</div>
						</div>
						
						
			         <div class="form-group">
							<label for="dob" class="cols-sm-2 control-label" style="float: left; margin-left: 315px;">Select Date</label>
							<div class="cols-sm-10" style="width: 520px;">
								<div class="input-group" style="margin-left: 85px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
									<input type="date" class="form-control" name="date" style="font-family : Verdana; font-size: 20px;"/>
								</div>
						</div>
							</div>
						
						
						<div class="form-group" style="width: 400px;">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 80px;">Submit</button> 
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>