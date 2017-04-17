<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <jsp:include page="Homepage_UnEmployed.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap-alt/assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-alt/assets/css/custom.css">
<!-- Website CSS style -->
<!-- <link rel="stylesheet" type="text/css" href="bootstrap/css/main.css"> -->

<!-- Website Font style -->
<link rel="stylesheet" href="bootstrap-alt/assets/css/font-awesome.min.css">
		
<!-- Google Fonts -->	
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

<title>Insert title here</title>
<style type="text/css">
.MainDiv{
background-image: url("images/bgblue.png");
	
	}



</style>
</head>
<body background="images/bgblue.png">
<div class="MainDiv" style="height: 1200px">
 <div class="section empMain" style="margin-left: 300px;margin-top:50px; ">
    <div class="container-fluid cta">
    <div class="span6 hero pull-right   "></div>
    <div class="row-fluid">
      <div class="span5 cta-copy">
        <h1 style="font-family: arial;color: #e1b211;margin-left:120px;  font-weight: bolder;">Your next hire is here.</h1>

        <h1  style=" font-family: arial;color: #e90000; font-variant: small-caps;font-weight: bold; ">Un-Employed Job Portal</h1>
        <p style="color:#ececec;  font-size: 18px; font-family: arial;font-variant: small-caps;"> helps millions of employers find the right fit every day. Start hiring now on the world's #1 job site.</p>
            <a href="Employer_Create_Account.jsp" onmousedown="this.href = appendParamsOnce(this.href, '&isid=hire&ikw=toppostjob')" class="btn btn-primary btn-lg ">Post Job</a>
            </div>
    </div>
  </div>
</div>
</div>
</body>
</html>