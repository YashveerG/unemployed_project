<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Interview Questions and Answers</title>
</head>
<body>
	<div class="container" align="center">  
			<div class="row main">
				<div class="panel-heading">
					<div class="panel-title text-center">
						<h1 class="title">Interview Questions & Answers Admin Module</h1> 
					</div>
				</div>
				
				<div class="main-login main-center"> 
				<form class="form-horizontal" method="post" action="add_interview_questions" style="width: 511px">  
				
						<div class="form-group"> 
							<label for="selIndustry" class="cols-sm-2 control-label"></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
									
									<select class="form-control" name="selected_technology" style="width: 500px;">
										<option>---------------------------------Select a technology---------------------------------------</option>										
										<option>C</option>
										<option>CPlusPlus</option>
										<option>Java</option>	
										<option>Android</option>
										<option>HTML</option>
										<option>CSS</option>	
										<option>SQL</option>	
										<option>JS</option>																																																																								
									</select>									
								</div>
							</div>
						</div>
						
								
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label"></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-question-sign"></i></span>
									<textarea class="form-control" name="prashne" placeholder="Question" required style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>								
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="mail" class="cols-sm-2 control-label"></label> 
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
									<textarea class="form-control" name="uttara" placeholder="Answer" required style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Save</button> 
						</div>												
					</form>
				</div>
			</div>
		</div>
</body>
</html>