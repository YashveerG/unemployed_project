<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.img {
border: 2px solid #CCD1D1;
background-color:#9BC7FA;
padding: 22px 10px 20px 10px;
float:left;
margin-right:3px;
margin-top:5px;
display:inline-block; 
margin-left:262px;
}
div.form {
width:80.35%;
padding: 20px 10px 52px 30px;
background-color:#D4E1F0;
border: 2px solid #87BDFB ;
margin-left:262px;
margin-right:250px;
margin-top:346px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#D6DBDF;
border: 2px solid #AEB6BF;
margin-top:30px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="img">
        <b style="margin-left:100px;font-size:130%;">Leadership Skills</b><br><br>
        <span>
            <img src="img/sub/lead.jpg" style="border-radius:9px;" 
            width="35%"  />
        
        <span style="float:right;width: 60%;font-size:120%;padding: 15px 10px 20px 10px;">
            <b>Whether one is an office manager or a project leader, all good leaders require a number of soft skills to help them positively interact with employees or team members. Employers seek these skills in the candidates they hire for leadership roles.<br>
            Leaders must master all forms of communication, including one-on-one, departmental, and full-staff conversations, as well as communication via the phone, email, and social media.
            
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
									<input type="number" class="form-control" name="mob_no" min="7000000000" max="9999999999" placeholder="Enter your 10-digit mobile number" autocomplete="off" required/>
								</div>
							</div>
						</div>
						
						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button> 
						</div>
 </div>
</form>
<div class="info">
<h3><b>
Top 5 Leadership Skills</h3><br>
<h3>1. Motivation</h3>
Leaders need to inspire their workers to go the extra mile for their organization; just paying a fair salary to employees is typically not enough inspiration (although it is important too). There are a number of ways to motivate your workers: you may build employee self-esteem through recognition and rewards, or by giving employees new responsibilities to increase their investment in the company.<br>
<br><h3>2. Delegating</h3>
Leaders who try to take on too many tasks by themselves will struggle to get anything done. These leaders often fear that delegating tasks is a sign of weakness, when in fact it is a sign of a strong leader.<br>
<br><h3>3. Positivity</h3>
A positive attitude can go a long way in an office. You should be able to laugh at yourself when something doesn't go quite as planned; this helps create a happy and healthy work environment, even during busy, stressful periods. Simple acts like asking employees about their vacation plans will develop a positive atmosphere in the office, and raise morale among staff members. If employees feel that they work in a positive environment, they will be more likely to want to be at work, and will therefore be more willing to put in the long hours when needed.<br>
<br><h3>4. Trustworthiness</h3>
Employees need to be able to feel comfortable coming to their manager or leader with questions and concerns. It is important for you to demonstrate your integrity - employees will only trust leaders they respect.
By being open and honest, you will encourage the same sort of honesty in your employees.<br>
<br><h3>5. Creativity</h3>
As a leader, you have to make a number of decisions that do not have a clear answer; you therefore need to be able to think outside of the box. Learning to try nontraditional solutions, or approaching problems in nontraditional ways, will help you to solve an otherwise unsolvable problem. Most employees will also be impressed and inspired by a leader who doesn't always choose the safe, conventional path.<br> 
</b></div>
</body>
</html>