<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div.img {
border: 2px solid #CCD1D1;
background-color:#23920A;
padding: 22px 10px 58px 10px;
float:left;
margin-right:3px;
margin-top:5px;
display:inline-block; 
margin-left:262px;
}
div.form {
width:80.35%;
padding: 20px 10px 52px 30px;
background-color:#98EA85;
border: 2px solid #E1E1E1;
margin-left:262px;
margin-right:250px;
margin-top:346px;
}
div.info {
padding: 10px 0px 10px 30px;
background-color:#619A54;
border: 1px solid #9CFE86;
margin-top:30px;
}
</style>
</head>
<body>

<div class="img">
        <b style="margin-left:100px;font-size:130%;color:black;">Team Building</b><br><br>
        <span>
            <img src="img/sub/Te@m.jpg" style="border-radius:9px;margin-left:70px;" 
            width="30%"  />
        
        <span style="float:right;width: 60%;font-size:120%;color:black;padding: 15px 10px 20px 10px;">
            <b style="color: #F7EDED;">What is Team Building ?</b><br>
<b>The ability to build cohesive working units is a highly valued skill for most employers.
Team building is a process by which individual members of a department or inter-departmental group are encouraged to develop a more collaborative working relationship.  
Managers, supervisors, and outside consultants seek to instil a cooperative spirit within team members as well as an understanding and appreciation of the roles which fellow employees play.
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
<h3>How Teams Add Value to an Organization</h3>
<h4>Employers believe that highly collaborative teams will add value through greater productivity, higher morale, less counter-productive conflict and better customer relations.  Some organizations use team building to spur productive competition between groups such as sales teams covering different products or regions.</h4>
<br>
<br><h3>Successful Team Building</h3>
<h4>A group process whereby members feel invested in the direction taken and results achieved by the collective is a critical element in team building.  Individuals need to have input towards developing group objectives and defining the strategies employed to reach those goals.</h4>
<br><h3>Show the Employer You Have the Right Skills</h3>
<h4>When you are applying for a job where team building is listed in the qualifications, be sure to incorporate your most relevant skills into your resume and cover letters.<br><br>
Also share examples of how you have successfully grown a team during job interviews. Review these teamwork interview questions before you interview.<br>
<br>Examples of Team Building Skills<br><br>
A-D<br><br>
Adaptability to changing circumstances<br>
Addressing behavior which disrupts group harmony<br>
Assessing group progress<br><br>

Brainstorming strategies and solutions freely<br><br>

Coaching<br>
Collaboration<br>
Communication<br>
Conflict Resolution<br>
Cooperation by managers of departments comprising cross functional teams<br>
Cultivating positive group leaders<br><br>

Decision Making<br>
Defining work roles clearly<br>
Delegating tasks to appropriate members<br>
</h4></span>
</b>
</div>

</body>
</html>