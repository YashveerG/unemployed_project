<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">

<!-- Website CSS style -->
<!-- <link rel="stylesheet" type="text/css" href="bootstrap/css/main.css"> -->

<!-- Website Font style -->
<link rel="stylesheet" href="bootstrap/css/font-awesome.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<title>Login PAGE</title>
<!-- BOOTSTRAP STYLES-->
<!-- <link href="bootstrap/css/bootstrap.css" rel="stylesheet" /> -->

<!-- FONTAWESOME STYLES-->
<!-- <link href="bootstrap/css/font-awesome.css" rel="stylesheet" /> -->

<!-- CUSTOM STYLES-->
<!-- <link href="bootstrap/css/custom.css" rel="stylesheet" /> -->

<!-- GOOGLE FONTS-->
<!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> -->
<title>Un-Employed Login Page</title>
</head>
<body>
	<div class="container">
			<div class="row main">
				<div class="panel-heading">
					<div class="panel-title text-center">
						<h1 class="title">Login Form</h1> 
					</div>
				</div>
				
				<div class="main-login main-center"> 
				<form class="form-horizontal" method="post" action="admin_login_success.jsp"> 
												
						<div class="form-group">
							<label for="mail" class="cols-sm-2 control-label">E-mail address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
									<input type="email" class="form-control" name="mayl" placeholder="localpart@domain" autofocus required/>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="pswd" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="pass" placeholder="* * * * * * * *" required/>
								</div>
							</div>
						</div>
						
						 						
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Login</button> 
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>