<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<jsp:include page="Homepage_UnEmployed.jsp" />   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">

<!-- Website CSS style -->
<!-- <link rel="stylesheet" type="text/css" href="bootstrap/css/main.css"> -->

<!-- Website Font style -->
<link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<title>Un-Employed Registration Page</title>
</head>
<body>
	
	<div style="float: right; margin-top: 50px; margin-right: 40px">
		<span><b style="color: maroon;">If you have already Registered</b></span>
		
		<a href="CandidateLogin.jsp">
			<button type="button" class="btn btn-primary btn-lg btn-block login-button" style="margin-top: 10px">Login</button>	
		</a>					
	</div>	
	
												
	<div class="container" align="center">   
			<div class="row main">
				<div class="panel-heading">  
					<div class="panel-title text-center">
						<h1 class="title" style="color: green; margin-left: 170px"><u>Registration Form</u></h1>																
					</div>					
				</div>
				
				
				<div class="main-login main-center">   				
				<form class="form-horizontal" method="post" action="candidate_register">  
				
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 417px;">Name</label>
							<div class="cols-sm-10" style="width: 510px;">  
								<div class="input-group" style="margin-left: 74px;"> 
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" name="name" placeholder="Name" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>								
							</div>	
						</div>
						
												
						<div class="form-group">
							<label for="mail" class="cols-sm-2 control-label" style="float: left; margin-left: 352px;">E-mail Address</label>
							<div class="cols-sm-10" style="width: 510px;">
								<div class="input-group" style="margin-left: 74px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="mail" placeholder="Enter your Gmail address" required autocomplete="off" maxlength="70" style="font-family : Verdana; font-size: 20px;" />																
								</div>
							</div>
						</div>
						
											
						<div class="form-group">
							<label for="pswd" class="cols-sm-2 control-label" style="float: left; margin-left: 388px;">Password</label>
							<div class="cols-sm-10" style="width: 510px;">
								<div class="input-group" style="margin-left: 74px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
									<input type="password" class="form-control" name="pswd" required placeholder="Enter your Gmail password"  autocomplete="off" min="4" maxlength="25" style="font-family : Verdana; font-size: 20px;"/> 
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="mobile" class="cols-sm-2 control-label" style="float: left; margin-left: 351px;">Mobile number</label>
							<div class="cols-sm-10" style="width: 502px;">
								<div class="input-group" style="margin-left: 77px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
									<input type="number" class="form-control" name="mobile" required placeholder="Eg:- 9984786341"  autocomplete="off" min="7000000000" max="9999999999" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="dob" class="cols-sm-2 control-label" style="float: left; margin-left: 368px;">Date of Birth</label>
							<div class="cols-sm-10" style="width: 504px;">
								<div class="input-group" style="margin-left: 76px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
									<input type="date" class="form-control" name="dob" required style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="gender" class="cols-sm-2 control-label" style="float: left; margin-left: 403px;">Gender</label>
							<div class="cols-sm-10" style="width: 503px;">
								<div class="input-group" style="margin-left: 78px;">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<select class="form-control" name="gender" required style="font-family : Verdana; font-size: 20px;">																							
									<option>Male</option>
									<option>Female</option>																							 									
								</select>	   																																																																				
								</div>								
							</div>							
						</div>
						
						<div class="form-group">
							<label for="address" class="cols-sm-2 control-label" style="float: left; margin-left: 397px;">Address</label>
							<div class="cols-sm-10" style="width: 502px;">
								<div class="input-group" style="margin-left: 78px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
									<textarea class="form-control" name="address" rows="3" required placeholder="Address" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="selectedJobRole" class="cols-sm-2 control-label" style="float: left; margin-left: 367px;">Job Position</label>
							<div class="cols-sm-10" style="width: 505px;">
								<div class="input-group" style="margin-left: 77px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" required name="job_position" placeholder="Job position" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="selectedJobCategory" class="cols-sm-2 control-label" style="float: left; margin-left: 361px;">Job Category</label>
							<div class="cols-sm-10" style="width: 504px;">
								<div class="input-group" style="margin-left: 78px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" required name="job_category" placeholder="Job category" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="workExp" class="cols-sm-2 control-label" style="float: left; margin-left: 340px;">Work Experience</label>
							<div class="cols-sm-10" style="width: 510px;">
								<div class="input-group" style="margin-left: 77px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span> 
									<input type="number" class="form-control" name="work_exp_years" required  min="0" max="40" placeholder="Years" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
									
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
									<input type="number" class="form-control" name="work_exp_months" required  min="0" max="11" placeholder="Months"  autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>									
									</div>																							
								</div>																
							</div>
						
						
						<div class="form-group">
							<label for="salary" class="cols-sm-2 control-label" style="float: left; margin-left: 318px;">Annual Salary(CTC)</label>
							<div class="cols-sm-10" style="width: 500px;">
								<div class="input-group" style="margin-left: 80px;">
									<span class="input-group-addon">INR</span> 
									<input type="number" class="form-control" name="salary_lakhs" min="0" max="99" required placeholder="Lakhs" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
									
									<span class="input-group-addon">INR</span>
									<input type="number" class="form-control" name="salary_thousands" min="1" max="99" required placeholder="Thousands" autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>																					
								</div>
							</div>
						</div>
						
																							
						<div class="form-group" style="width: 400px;">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 132px;">Register</button> 
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>