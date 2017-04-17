<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.img {
border: 2px solid #563928    ;
background-color:#5F4130;
padding: 15px 10px 37px 10px;
float:left;
margin-right:3px;
margin-top:5px;
display:inline-block; 
margin-left:262px;
color: #FFA877;
}
div.form {
width:80.35%;
padding: 20px 10px 52px 30px;
background-color:#FFA877;
border: 2px solid #E6B0AA ;
margin-left:262px;
margin-right:250px;
margin-top:346px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#B96535;
border: 2px solid #F4C6C1   ;
margin-top:2px;
}
</style>

<title>Insert title here</title>
</head>
<body>

<div class="img">
        <b style="margin-left:155px;font-size:130%;">Business Etiquette</b><br><br>
        <span>
            <img src="img/sub/business.jpg" style="border-radius:9px;margin-left:70px;" 
            width="30%"  />
        
        <span style="float:right;width: 60%;font-size:120%;color:black;padding: 10px 10px 10px 10px;">
            <b style="color: #FFA877  ">
In the business world, good manners is essential for getting ahead. Proper etiquette can help people land jobs, get promotions and establish excellent relationships with others. The most successful businessmen and women know how to turn on the charm and exhibit their best business etiquette to get the job done professionally and effectively.
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
<b><h3>Six Basic Rules of Business Etiquette</h3>
<h3>Meetings</h3>
<h4>The Society for Technical Communication says it is proper business etiquette to show up on time, or, preferably, a few minutes early to meetings. Come prepared with pen and paper.</h4>

<h3>Attire</h3>
<h4>The way you dress impacts whether you have good business etiquette. The business world is professional, and the people who work in it must dress to reflect that level of professionalism. As such, make sure your clothes are clean and pressed, and that you wear suits, blouses, skirts, blazers, ties or other clothing that makes a good impression.</h4>

<h3>Politeness</h3>
<h4>Remember to always say please and thank you when you interact with others, in person or over written correspondence. Being polite makes you pleasant to work with and shows respect.</h4>

<h3>Best Behavior</h3>
<h4>To be on your best behavior, always give others your utmost attention when they are speaking or conducting a presentation. Put your cell phone away during this time and do not engage in side conversations with coworkers.</h4>

<h3>Handshake</h3>
<h4>Shaking hands with your business counterparts establishes rapport and is in good form. For international interactions, research how that culture greets one another professionally in business, as not all countries see shaking hands as a form of respect.</h4>

<h3>Table Manners</h3>
<h4>There will be times when you have to attend a business luncheon. According to the University of Delaware, some tableside manners to practice are not speaking with your mouth full, using your napkin and not setting bags or briefcases on the table.</h4>

<h3>Diplomacy</h3>
<h4>Ravenwerks, an organization for global ethics, etiquette and effectiveness, says to always be diplomatic when engaged in a business conversation, even if you disagree with what others are saying. Apologize if you step on other peoples' toes, but do not be afraid to hold true to your convictions.</h4>

<h3>Tone</h3>
<h4>Never raise your voice to others in the work environment, or use foul language toward them. Keep your tone as neutral as possible, and avoid "talking down" to others.</h4>

<h3>Following Up</h3>
<h4>Following up correspondence is seen as a proper gesture. After working with a client, customer or coworker it is in good form to send a thank-you email or note, recognizing their business or efforts.</h4>
</div>

</body>
</html>