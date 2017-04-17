<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.img {
border: 2px solid #F0F1ED;
background-color:#F5F8E5;
padding: 15px 10px 63px 10px;
float:left;
margin-right:3px;
margin-top:5px;
display:inline-block; 
margin-left:262px;
color:black;
}
div.form {
width:80.35%;
padding: 20px 10px 52px 30px;
background-color:#CCDAF7;
color:black;
border: 2px solid #E1E1E1;
margin-left:262px;
margin-right:250px;
margin-top:346px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#C6CCDB;
border: 2px solid #BEBEBE  ;
margin-top:2px;
}
</style>


<title>Insert title here</title>
</head>
<body>

<div class="img">
        <b style="margin-left:160px;font-size:130%;">Interview Skills</b><br><br>
        <span>
            <img src="img/sub/interview.jpg" style="border-radius:9px;margin-left:70px;" 
            width="30%"  />
        
        <span style="float:right;width: 60%;font-size:120%;color:black;padding: 10px 10px 10px 10px;">
            <b style="color:black">Even the smartest and most qualified job seekers need to prepare for job interviews. 
            Why do you ask ? Interviewing is a learned skill, and there are no second chances to make a great first impression.</b>
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
<b><h3>5 interview tips to boost your chances of landing the job.</h3>
<h4>Practice good nonverbal communication</h4>
<h5>It's about demonstrating confidence: standing straight, making eye contact and connecting with a firm handshake. That first nonverbal impression can be a great beginning -- or quick ending -- to your interview.</h5>
<h4>Dress for the job or company</h4>
<h5>Today's casual dress codes do not give you permission to dress as "they" do when you interview. It is important to know what to wear to an interview and to be well-groomed. Whether you wear a suit or something less formal depends on the company culture and the position you are seeking. If possible, call to find out about the company dress code before the interview.</h5>
<h4>Listen</h4>
<h5>From the very beginning of the interview, your interviewer is giving you information, either directly or indirectly. If you are not hearing it, you are missing a major opportunity. Good communication skills include listening and letting the person know you heard what was said. Observe your interviewer, and match that style and pace.</h5>
<h4>Don't talk too much</h4>
<h5>Telling the interviewer more than he needs to know could be a fatal mistake. When you have not prepared ahead of time, you may ramble when answering interview questions, sometimes talking yourself right out of the job. Prepare for the interview by reading through the job posting, matching your skills with the position's requirements and relating only that information.</h5>
<h4>Don't be too familiar</h4>
<h5>The interview is a professional meeting to talk business. This is not about making a new friend. Your level of familiarity should mimic the interviewer's demeanor. It is important to bring energy and enthusiasm to the interview and to ask questions, but do not overstep your place as a candidate looking for a job.</h5>
</b></span>
</div>

</body>
</html>