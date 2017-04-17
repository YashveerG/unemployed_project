<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.img {
border: 2px solid #CCD1D1;
background-color:#D6D5D5  ;
padding: 15px 10px 10px 10px;
float:left;
margin-right:3px;
margin-top:5px;
display:inline-block; 
margin-left:263px;
color: #4E0902;
}
div.form {
width:80.35%;
padding: 20px 10px 53px 30px;
background-color:#CEA39F;
border: 2px solid #E1E1E1;
margin-left:262px;
margin-right:250px;
margin-top:346px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#CAC3C2;
border: 2px solid #E4CAC8;
margin-top:2px;
}
</style>

<title>Insert title here</title>
</head>
<body>

<div class="img">
        <b style="margin-left:100px;font-size:130%;">Motivation Skills</b><br><br>
        <span>
            <img src="img/sub/mo.jpg" style="border-radius:9px;margin-left:70px;" 
            width="25%"  />
        
        <span style="float:right;width: 60%;font-size:120%;color:black;padding: 10px 10px 10px 10px;">
            <b style="color: #4E0902;">What Are Motivational Skills?<br>

Motivational skills in the workplace can be defined as actions or strategies that will elicit a desired behavior or response by a stakeholder.
Motivational tactics will vary given the style of the motivator, their relationship with the target of the motivation, and the personality of the individual to be motivated.
</b>
        </span></span>
 </div>
 <form action="storecomm.jsp" method="post">
<div class="form">
 			<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="name" class="cols-sm-2 control-label">Name</label>
							<div class="cols-sm-9">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" name="user" placeholder="Enter your name" autofocus autocomplete="off" required width="1000%" />
								</div>								
							</div>
						</div>
 
 
 						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="mail" class="cols-sm-2 control-label">E-mail address</label>
							<div class="cols-sm-10">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="email" placeholder="localpart@domain" autocomplete="off" required/>
								</div>
							</div>
						</div>
 						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="subject" class="cols-sm-2 control-label">Subject</label>
							<div class="cols-sm-10">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
									<input type="text" class="form-control" name="subject" placeholder="Type your required skill" autocomplete="off" />
								</div>
							</div>
						</div>
						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="mobile" class="cols-sm-2 control-label">Mobile number</label>
							<div class="cols-sm-10">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
									<input type="text" class="form-control" name="mob_no" maxlength="10" placeholder="Enter your 10-digit mobile number" autocomplete="off" required/>
								</div>
							</div>
						</div>
						
						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button> 
						</div>
 </div>

</form>
<div class="info" >
<span style="color: black;">
<b><h3>Steps in the Motivational Process</h3>
<h4>
1. Assessing the preferences and personality characteristics of the individual or group to be motivated.<br><br>

2. Defining motivational strategies appropriate for that target.<br><br>

3. Conveying expectations for performance to or achieving desired outcomes from the object of the motivation.<br><br>

4. Communicating benefits, rewards, or sanctions if expectations are (or are not) met.<br><br>

5. Providing feedback regarding progress or lack of progress towards desired outcomes.<br><br>

6. Addressing problems or obstacles that are limiting success.<br><br>

7. Providing rewards for desired outcomes.<br><br>

8. Issuing warnings prior to enacting sanctions.<br><br>

9. Publicly recognizing others who have responded in the desired manner.</h4>
</b></span>
</div>

</body>
</html>