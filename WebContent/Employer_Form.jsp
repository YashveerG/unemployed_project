<jsp:include page="Homepage_UnEmployed.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bs-binary-admin/assets/css/bootstrap.css">

<!-- Website CSS style -->
<!-- <link rel="stylesheet" type="text/css" href="bootstrap/css/main.css"> -->

<!-- Website Font style -->
<link rel="stylesheet" href="bs-binary-admin/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="bs-binary-admin/assets/css/custom.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.c
om/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<title>Un-Employed Employer's Registration Page</title>

</head>
<body>	
<div class="MainDiv" >										
	<div class="container">  
			<div class="row main" align="center">  
				<div class="panel-heading">  
					<div class="panel-title text-center">
						<h1 class="title" style="color: green;"><u>Start Filling Employer's Information...!!</u></h1>  
					</div>
				</div>
				
				<div class="main-login main-center">   
				<form class="form-horizontal" method="post" action="JOAdminLinkingPage.jsp">  
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Name</label>
							<div class="cols-sm-10" style="width: 545px;">  
								<div class="input-group" style="margin-left: 148px;"> 
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" name="Name" placeholder="Name" autofocus autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>								
							</div>	
						</div>
						
						<div class="form-group">
							<label for="mail" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">E-mail Address</label>
							<div class="cols-sm-10" style="width: 515px;">
								<div class="input-group" style="margin-left: 84px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="Email Id" placeholder="localpart@domain" autocomplete="off" maxlength="70" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="mobile" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Mobile number</label>
							<div class="cols-sm-10" style="width: 510px;">
								<div class="input-group" style="margin-left: 86px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
									<input type="number" class="form-control" name="Phone" placeholder="Eg:- 9984786341" autocomplete="off" min="7000000000" max="9999999999" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="Company Name" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Company Name</label>
							<div class="cols-sm-10" style="width: 510px;">
								<div class="input-group" style="margin-left: 80px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" name="Company Name" placeholder="Company Name" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
					<div class="form-group">
							<label for="Job Title" class="cols-sm-2 control-label" style="float: left; margin-left: 348px;">Job Title</label>
							<div class="cols-sm-10" style="width: 489px;">
								<div class="input-group" style="margin-left: 130px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" name="Job Title" placeholder="Job Title" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>	
						<div class="form-group">
							<label for="Job Id" class="cols-sm-2 control-label" style="float: left; margin-left: 348px;">Job Id</label>
							<div class="cols-sm-10" style="width: 489px;">
								<div class="input-group" style="margin-left: 146px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" name="Job Id" placeholder="Job Id" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="Job Location" class="cols-sm-2 control-label" style="float: left; margin-left: 348px;">Job Location</label>
							<div class="cols-sm-10" style="width: 489px;">
								<div class="input-group" style="margin-left: 98px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" name="Job Location" placeholder="Job Location" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
					<div class="form-group">
							<label for="Select Category" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Select Category</label>
							<div class="cols-sm-10" style="width: 527px;">
								<div class="input-group" style="margin-left: 80px;">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<select class="form-control" name="selCategory" style="font-family : Verdana; font-size: 20px;">																							
									<option>Walkins</option>
									<option>Interviews</option>
									<option>Internships</option>																							 									
								</select>	   																																																																				
								</div>								
							</div>							
						</div>
						
						<div class="form-group">
							<label for="Job Details" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Job Details</label>
							<div class="cols-sm-10" style="width: 518px;">
								<div class="input-group" style="margin-left: 110px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
									<textarea class="form-control" name="Job Details" rows="3" placeholder="Job Details" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="Job Links" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Job Links</label>
							<div class="cols-sm-10" style="width: 518px;">
								<div class="input-group" style="margin-left: 120px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
									<textarea class="form-control" name="Job Links" rows="3" placeholder="Enter if any job links" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="workExp" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Work Experience</label>
							<div class="cols-sm-10" style="width: 525px;">
								<div class="input-group" style="margin-left: 75px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span> 
									<input type="number" class="form-control" name="workExpInYears" placeholder="Years" min="0" max="40" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
									
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
									<input type="number" class="form-control" name="workExpInMonths" placeholder="Months" min="0" max="11" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>									
									</div>																							
								</div>																
							</div>
						
						
						<div class="form-group">
							<label for="Salary" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Annual Salary(CTC)</label>
							<div class="cols-sm-10" style="width: 560px;">
								<div class="input-group" style="margin-left: 55px;">
									<span class="input-group-addon">INR</span> 
									<input type="number" class="form-control" name="SalaryinLackhs" placeholder="Lakhs" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
									
									<span class="input-group-addon">INR</span>
									<input type="number" class="form-control" name="SalaryinThousands" placeholder="Thousands" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>																					
								</div>
							</div>
						</div>
						
						
			         <div class="form-group">
							<label for="dob" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Select Date</label>
							<div class="cols-sm-10" style="width: 493px;">
								<div class="input-group" style="margin-left: 110px;">
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
		</div>
</body>
</html>