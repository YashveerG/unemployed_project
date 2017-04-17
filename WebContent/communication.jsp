<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div.talign {
background-color:#E5E8E8 ;
border: 2px solid #D6DBDF  ;
font-size:120%;
margin-right:3px;
margin-left:262px;
margin-top:3px;
padding: 22px 10px 0px 100px;
}
img {
border-radius:10px;
margin-left:1px;
margin-top:20px;
}
div.align{
margin-left:6px;
}
div.form {
width:80.35%;
padding: 20px 10px 26px 30px;
background-color:#FEF5E7;
border: 2px solid #FEF9E7  ;
margin-left:262px;
margin-right:250px;
margin-top:1px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#D6DBDF  ;
margin-top:4px;
border: 2px solid #EAECEE ;
}
</style>
</head>
<body>
<form action="storecomm.jsp" method="post">
 <div class="talign"><b>Communication Skills</b><br>
    <img src="img/sub/com..jpg"  alt="Communication image" width="30%" >
     <div class="align">
      <p><b>The ability to communicate effectively with superiors, colleagues, and staff is essential, no matter what industry you work in.
         Workers in the digital age must know how to effectively convey and receive messages in person as well as via phone,
         email and social media.
      </b></p>
     </div>
 </div>
<div class="form">
 			<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="name" class="cols-sm-2 control-label">Name</label>
							<div class="cols-sm-9">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" name="user" placeholder="Enter your name" autofocus autocomplete="off" maxlength="55" required width="1000%" />
								</div>								
							</div>
						</div>
 
 
 						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="mail" class="cols-sm-2 control-label">E-mail address</label>
							<div class="cols-sm-10">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="email" placeholder="localpart@domain" autocomplete="off" maxlength="50" required/>
								</div>
							</div>
						</div>
 						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="subject" class="cols-sm-2 control-label">Subject</label>
							<div class="cols-sm-10">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
									<input type="text" class="form-control" name="subject" placeholder="Type your required skill" maxlength="40" autocomplete="off" />
								</div>
							</div>
						</div>
						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<label for="mobile" class="cols-sm-2 control-label">Mobile number</label>
							<div class="cols-sm-10">
								<div class="input-group" >
									<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
									<input type="text" class="form-control" name="mob_no" maxlength="10" placeholder="Enter your 10-digit mobile number" autocomplete="off" required  />
								</div>
							</div>
						</div>
						
						<div class="form-group" style="margin-left:300px;margin-right:350px;">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button> 
						</div>
 </div>

<div class="info">
<h3><b>
Top 5 Communication Skills<br>
Here are the top 5 communication skills that will help you stand out in today's job market.</b></h3><br><br>
<h3>1. Listening</h3>
        Being a good listener is one of the best ways to be a good communicator.
        No one likes communicating with someone who only cares about putting in her two cents, and does not take the time
	    to listen to the other person. Instead, practice active listening. Active listening involves paying close attention
        to what the other person is saying, asking clarifying questions, and rephrasing what the person says to ensure 
        understanding ("So, what you're saying is....."). Through active listening, you can better understand what the other
        person is trying to say, and can respond appropriately.<br>
<br><h3>2. Nonverbal Communication</h3>
Your body language, eye contact, hand gestures, and tone all color the message you are trying to convey. A relaxed, 
open stance (arms open, legs relaxed), and a friendly tone will make you appear approachable, and will encourage 
others to speak openly with you. Eye contact is also important; you want to look the person in the eye to 
demonstrate that you are focused on the person and the conversation (however, be sure not to stare at the person,
which can make him or her uncomfortable).
Also pay attention to other people's nonverbal signals while you are talking. Often, nonverbal signals convey how
a person is really feeling. For example, if the person is not looking you in the eye, he or she might be 
uncomfortable or hiding the truth.<br>

<br><h3>3. Clarity and Concision</h3>
Try to convey your message in as few words as possible.
Say what you want clearly and directly, whether you're speaking to someone in person, on the phone, or via email. 
If you ramble on, your listener will either tune you out or will be unsure of exactly what you want. Think about 
what you want to say before you say it; this will help you to avoid talking excessively and/or confusing your 
audience.<br>

<br><h3>4. Friendliness</h3>
Through a friendly tone, a personal question, or simply a smile, you will encourage your coworkers to engage in open
and honest communication with you. This is important in both face-to-face and written communication. When you can,
personalize your emails to coworkers and/or employees - a quick "I hope you all had a good weekend" at the start
of an email can personalize a message and make the recipient feel more appreciated.<br>

<br><h3>5. Confidence</h3>
It is important to be confident in all of your interactions with others. Confidence ensures your coworkers that you
believe in and will follow through with what you are saying.
Exuding confidence can be as simple as making eye contact or using a firm but friendly tone (avoid making statements
sound like questions). Of course, be careful not to sound arrogant or aggressive. Be sure you are always listening
to and empathizing with the other person.<br>
</b></div>
</form>
</body>
</html>