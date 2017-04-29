<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.img {
border: 2px solid #A8C2CD  ;
background-color:#7B9FAF    ;
padding: 15px 10px 43px 10px;
float:left;
margin-right:3px;
margin-top:5px;
display:inline-block; 
margin-left:262px;
color: #4E0902;
}
div.form {
width:80.35%;
padding: 20px 10px 52px 30px;
background-color:#C0C5C8  ;
border: 2px solid #AAACAD  ;
margin-left:262px;
margin-right:250px;
margin-top:346px;
color:black;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#7A9E83;
border: 2px solid #7C888E;
margin-top:30px;
}
</style>
<title>Insert title here</title>
</head>
<body>

<div class="img">
        <b style="margin-left:155px;font-size:130%;">Negotiation Skills</b><br><br>
        <span>
            <img src="img/sub/negoti.jpeg" style="border-radius:9px;margin-left:70px;" 
            width="33%"  />
        
        <span style="float:right;width: 60%;font-size:120%;color:black;padding: 10px 10px 10px 10px;">
            <b style="color: #4E0902;">
Negotiation is a method by which people settle differences. It is a process by which compromise or agreement is reached while avoiding argument and dispute.
In any disagreement, individuals understandably aim to achieve the best possible outcome for their position (or perhaps an organisation they represent). However, the principles of fairness, seeking mutual benefit and maintaining a relationship are the keys to a successful outcome.
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
<div class="info" >
<span style="color: black;">
<b><h3>Stages of Negotiation</h3>
In order to achieve a desirable outcome, it may be useful to follow a structured approach to negotiation. For example, in a work situation a meeting may need to be arranged in which all parties involved can come together.
<br><b><h3>The process of negotiation includes the following stages:</h3></b>
<h4>1. Preparation</h4>
Before any negotiation takes place, a decision needs to be taken as to when and where a meeting will take place to discuss the problem and who will attend.  Setting a limited time-scale can also be helpful to prevent the disagreement continuing.
This stage involves ensuring all the pertinent facts of the situation are known in order to clarify your own position.  In the work example above, this would include knowing the rules of your organisation, to whom help is given, when help is not felt appropriate and the grounds for such refusals.  Your organisation may well have policies to which you can refer in preparation for the negotiation.
Undertaking preparation before discussing the disagreement will help to avoid further conflict and unnecessarily wasting time during the meeting.<br>

<h4>2. Discussion</h4>
During this stage, individuals or members of each side put forward the case as they see it, i.e. their understanding of the situation. 
Key skills during this stage include questioning, listening and clarifying.
Sometimes it is helpful to take notes during the discussion stage to record all points put forward in case there is need for further clarification.  It is extremely important to listen, as when disagreement takes place it is easy to make the mistake of saying too much and listening too little.  Each side should have an equal opportunity to present their case.<br>

<h4>3. Clarifying Goals</h4>
From the discussion, the goals, interests and viewpoints of both sides of the disagreement need to be clarified. 
It is helpful to list these factors in order of priority.  Through this clarification it is often possible to identify or establish some common ground. Clarification is an essential part of the negotiation process, without it misunderstandings are likely to occur which may cause problems and barriers to reaching a beneficial outcome.

<h4>4. Negotiate Towards a Win-Win Outcome</h4>
This stage focuses on what is termed a 'win-win' outcome where both sides feel they have gained something positive through the process of negotiation and both sides feel their point of view has been taken into consideration. 
A win-win outcome is usually the best result. Although this may not always be possible, through negotiation, it should be the ultimate goal.
Suggestions of alternative strategies and compromises need to be considered at this point.  Compromises are often positive alternatives which can often achieve greater benefit for all concerned compared to holding to the original positions.

<h4>5. Agreement</h4>
Agreement can be achieved once understanding of both sides’ viewpoints and interests have been considered. 
It is essential to for everybody involved to keep an open mind in order to achieve an acceptable solution.  Any agreement needs to be made perfectly clear so that both sides know what has been decided.</b></span>

</div>
</body>
</html>