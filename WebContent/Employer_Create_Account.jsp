<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%-- <jsp:include page="HomePage_UnEm.jsp" />   --%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap-alt/assets/css/bootstrap.css">

<!-- Website CSS style -->
<!-- <link rel="stylesheet" type="text/css" href="bootstrap/css/main.css"> -->

<!-- Website Font style -->
<link rel="stylesheet" href="bootstrap-alt/assets/css/font-awesome.min.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<title>Un-Employed Employer's Registration Page</title>


</head>
<body>											
	<div class="container">  
			<div class="row main" align="center">  
				<div class="panel-heading">  
					<div class="panel-title text-center">
						<h1 class="title" style="color: green; margin-left: 120px"><u>Employer's Account Creation Form</u></h1>  
					</div>
				</div>
				
				<div class="main-login main-center">   
				<form class="form-horizontal" method="post" action="employer-create-account">  
				
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 485px;">Name</label>
							<div class="cols-sm-10" style="width: 520px;">  
								<div class="input-group" style="margin-left: 55px;"> 
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" name="name" placeholder="Name" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>
								</div>								
							</div>	
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 417px;">Company Name</label>
							<div class="cols-sm-10" style="width: 515px;">  
								<div class="input-group" style="margin-left: 55px;"> 
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" name="company name" placeholder="Company Name" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 20px;"/>									
								</div>								
							</div>	
						</div>
						
						<div class="form-group">
							<label for="mobile" class="cols-sm-2 control-label" style="float: left; margin-left: 417px;">Mobile number</label>
							<div class="cols-sm-10" style="width: 505px;">
								<div class="input-group" style="margin-left: 60px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
									<input type="number" class="form-control" name="Phone" placeholder="Eg:- 9984786341" autocomplete="off" min="7000000000" max="9999999999" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
				
				<div class="form-group">
							<label for="Employer Address" class="cols-sm-2 control-label" style="float: left; margin-left: 460px;">Address</label>
							<div class="cols-sm-10" style="width: 500px;">
								<div class="input-group" style="margin-left: 62px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
									<textarea class="form-control" name="Employer address" rows="3" placeholder="Address" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
								</div>
							</div>
						</div>
								
						<div class="form-group">
							<label for="mail" class="cols-sm-2 control-label" style="float: left; margin-left: 412px;">E-mail Address</label>
							<div class="cols-sm-10" style="width: 500px;">
								<div class="input-group" style="margin-left: 62px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="mail" placeholder="localpart@domain" required autocomplete="off" maxlength="70" style="font-family : Verdana; font-size: 20px;"/>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="pswd" class="cols-sm-2 control-label" style="float: left; margin-left: 445px;">Password</label>
							<div class="cols-sm-10" style="width: 490px;">
								<div class="input-group" style="margin-left: 65px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
									<input type="password" class="form-control" id="password" name="password" placeholder="* * * * * * * * * * * * * * *" required autocomplete="off" min="4" maxlength="25" style="font-family : Verdana; font-size: 20px;"/> 
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="pswd" class="cols-sm-2 control-label" style="float: left; margin-left: 385px;">Confirm Password</label>
							<div class="cols-sm-10" style="width: 485px;">
								<div class="input-group" style="margin-left: 68px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
									<input type="password" class="form-control" id="confirm_password" name="confirm_password"  placeholder="* * * * * * * * * * * * * * *" required autocomplete="off" min="4" maxlength="25" style="font-family : Verdana; font-size: 20px;"/><span id='message'></span> 
								</div>
							</div>
						</div>
					<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$('#password, #confirm_password').on('keyup', function () {
    if ($('#password').val() == $('#confirm_password').val()) {
        $('#message').html('Matching..Now Press Register Button..').css('color', 'green');
    } else
        $('#message').html('Not Matching..!').css('color', 'red');
});
</script>

<div class="form-group" style="width: 350px;margin-left: 20px;">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 132px;">Register</button> 
						</div>
						<div class="form-group" style="width: 350px;margin-left: 200px;">
						<p style="color: blue;">Already having an account ? Click <a href="Employer_Account_login.jsp"> here</a></p>
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>