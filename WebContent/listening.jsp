<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.img {
border: 2px solid #D98880  ;
background-color:#CD6155  ;
padding: 15px 10px 43px 10px;
float:left;
margin-right:3px;
margin-top:5px;
display:inline-block; 
margin-left:262px;
color: black;
}
div.form {
width:80.35%;
padding: 20px 10px 52px 30px;
background-color:#E19779  ;
color:black;
border: 2px solid #F39087  ;
margin-left:262px;
margin-right:250px;
margin-top:346px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#DB6E38  ;
border: 2px solid #F4C6C1   ;
margin-top:2px;
}
</style>
<title>Insert title here</title>
</head>
<body>

<div class="img">
        <b style="margin-left:155px;font-size:130%;">Listening Skills</b><br><br>
        <span>
            <img src="img/sub/listen.jpg" style="border-radius:9px;margin-left:70px;" 
            width="33%"  />
        
        <span style="float:right;width: 60%;font-size:120%;color:black;padding: 10px 10px 10px 10px;">
            <b style="color: #F2D7D5  ">
Listening is the ability to accurately receive and interpret messages in the communication process.
Listening is key to all effective communication. Without the ability to listen effectively, messages are easily misunderstood. As a result, communication breaks down and the sender of the message can easily become frustrated or irritated.
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
<b><h3>Good listening skills also have benefits in our personal lives, including:</h3>
<h4>A greater number of friends and social networks, improved self-esteem and confidence, higher grades at school and in academic work and even better health and general well-being.
Studies have shown that, whereas speaking raises blood pressure, attentive listening can bring it down.</h4>

<h4>Listening is Not the Same as Hearing<br>
Hearing refers to the sounds that enter your ears. It is a physical process that, provided you do not have any hearing problems, happens automatically.</h4>

<h4>Listening, however, requires more than that: it requires focus and concentrated effort, both mental and sometimes physical as well.</h4> 

<h4>Listening means paying attention not only to the story, but how it is told, the use of language and voice, and how the other person uses his or her body.  In other words, it means being aware of both verbal and non-verbal messages.  Your ability to listen effectively depends on the degree to which you perceive and understand these messages.</h4>

<h4>Listening is not a passive process. In fact, the listener can, and should, be at least as engaged in the process as the speaker. The phrase 'active listening' is used to describe this process of being fully involved.</h4>

<h4>Active Listening and Types of Listening for more information.<br>
The most basic and powerful way to connect to another person is to listen.  Just listen.  Perhaps the most important thing we ever give each other is our attention.</h4>
</div>

</body>
</html>