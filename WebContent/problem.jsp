<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.img {
border: 2px solid #F0F1ED;
background-color:#1C1C1D  ;
padding: 15px 10px 73px 10px;
float:left;
margin-right:3px;
margin-top:2px;
display:inline-block; 
margin-left:262px;
color:white;
}

div.form {
width:80.35%;
padding: 20px 10px 53px 30px;
background-color:#797C82  ;
color:black;
border: 2px solid #E1E1E1;
margin-left:262px;
margin-right:250px;
margin-top:346px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#CBCCCF  ;
border: 2px solid #BEBEBE  ;
margin-top:2px;
}
</style>
<title>Insert title here</title>
</head>
<body>

<div class="img">
        <b style="margin-left:160px;font-size:110%;">Problem solving Skills</b><br><br>
        <span>
            <img src="img/sub/problem.jpg" style="border-radius:9px;margin-left:70px;" 
            width="30%"  />
        
        <span style="float:right;width: 60%;font-size:120%;color:white;padding: 10px 10px 10px 10px;">
            <b style="color:white">Everybody can benefit from having good problem solving skills as we all encounter problems on a daily basis; some of these problems are obviously more severe or complex than others.
            It would be wonderful to have the ability to solve all problems efficiently and in a timely fashion without difficulty, unfortunately there is no one way in which all problems can be solved.
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
<span style="color: black;font-size:110%;">
<h3>Stages Of Problem Solving Skill</h3>
<b>Problem Identification:<br>
This stage involves: detecting and recognising that there is a problem; identifying the nature of the problem; defining the problem.<br><br>
Structuring the Problem:<br>
This stage involves: a period of observation, careful inspection, fact-finding and developing a clear picture of the problem.<br><br>
Looking for Possible Solutions:<br>
During this stage you will generate a range of possible courses of action, but with little attempt to evaluate them at this stage.<br><br>
Making a Decision:<br>
This stage involves careful analysis of the different possible courses of action and then selecting the best solution for implementation.<br><br>
Implementation:<br>
This stage involves accepting and carrying out the chosen course of action.<br><br>
Monitoring/Seeking Feedback:<br>
The last stage is about reviewing the outcomes of problem solving over a period of time, including seeking feedback as to the success of the outcomes of the chosen solution.
</b></span>
</div>


</body>
</html>