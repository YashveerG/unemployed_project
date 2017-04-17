<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ include file="Dashboard.jsp"%>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dashboard</title>

<!-- BOOTSTRAP STYLES-->
<link href="bootstrap-alt/assets/css/bootstrap.css" rel="stylesheet" />

<!-- FONTAWESOME STYLES-->
<link href="bootstrap-alt/assets/css/font-awesome.css" rel="stylesheet" />

<!-- CUSTOM STYLES-->
<link href="bootstrap-alt/assets/css/custom.css" rel="stylesheet" />

<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<title>Resume Builder</title>
</head>
<style>
body {

font-family: "Lato", sans-serif;
/*background-color:#008CBA;*/
/*background-image:url('images/images2.jpg');*/
}

/*div.button {
     float:left;
    background-color:#008CBA; 
    width: 200px;
    color: black;
    padding: 10px 550px;
    text-align:left ;
    text-decoration: none;
    font-size: 16px;
    padding: 14px 160px;
    font-color:#e7e7e7;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}*/

/* Float the list items side by side */
div.tab{
       float: center;
       }

/* Style the links inside the list items*/ 
div.tab a {
    display: inline-block;
    background-color: #008CBA;
    color: black;
    text-align: center;
    padding: 14px 10px;
    text-decoration: none;
    transition: 0.3s;
    font-size:18px;
    border-radius:200%;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
}

/* Change background color of links on hover */
div.tab a:hover {
    background-color: #008CBA;
    color:blue;
}

/* Create an active/current tablink class */
div.tab a:focus, .active {
    background-color:#008CBA;
    color:blue;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 16px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
h1{
   font-color:#008CBA;
   font-size:50px;
}
.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 13px;
  padding: 10px;
  width: 180px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 10px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>

<body>
<div class="tab" align="center" style="margin-left:250px;">
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Personal Information')">Personal <br>Details</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Educational Background')">Educational<br>Background</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Technical Skills')">Technical<br>Skills</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Work Experience')">Work<br>Experience</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Carrier objective')">Carrier<br>Objective</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Extra-curricular Activities')">Extra-curricular<br>activities</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Additional Information')">Additional<br>Information</a><br><br>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Projects')">Projects</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Certification')">Certifications</a>
<a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Internship')">Internships</a>
</div>

<%!
	static Connection con;
	static Statement st;
	static ResultSet res, res1, res2, res3;
%>

<div id="Personal Information" class="tabcontent" style="margin-left:450px;">
<br> <center> <h1>PERSONAL DETAILS</h1></center>
	<form action="personal_save" method="post">
	<div class="form-group">
	<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Name</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input type="text" class="form-control" name="name" placeholder="fullname" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
	</div>
	</div>
	</div>
    
    
    <div class="form-group">
	<label for="dob" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Date of Birth</label>
	<div class="cols-sm-10" style="width: 504px;">
	<div class="input-group" style="margin-left:200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	<input type="date" class="form-control" name="dob" required style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
    
    <div class="form-group">
	<label for="mail" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">E-mail Address</label>
	<div class="cols-sm-10" style="width: 510px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
	<input type="email" class="form-control" name="mail" placeholder="localpart@domain" required autocomplete="off" maxlength="70" style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
						
    <div class="form-group">
    <label for="address" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Address</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	<textarea class="form-control" name="address" rows="3" required placeholder="Address" style='font-size:15px; width:300px;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
	</div>
	</div>
    </div>
   
   <div class="form-group">
	<label for="mobile" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Mobile number</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
    <input type="number" class="form-control" name="phone"  placeholder="Eg:- 9984786341" required autocomplete="off"  maxlength="10" style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
	
<div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<br>
<div id="Educational Background" class="tabcontent" style="margin-left:450px;">
<br><center><h1>Educational Background</h1></center>
<form action="education_save" method="post">
  <div class="form-group">
	<label for="pgdgree" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Post Graduation <br>Degree</label>
	  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
 <%
  try
  {
	   con = DBConnect.getDBConnection();
	   st=con.createStatement();
	   
	   res=st.executeQuery("Select pg_degree FROM degree");
	     
       %>
       <select name="pg_degree" class="form-control" autofocus autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;">
       <option>----Select PG Degree-----</option>
         
      <%  while(res.next()){ %>
            <option><%= res.getString("pg_degree")%></option>
        <% }
  }
 
  catch(Exception e)
  {
	  out.print("<h1 style='color:red' align='center'>" + e.getMessage() + "</h1>");
  } %>
   </select>
   </div>
   </div>
  </div>
  <br>
  <div class="form-group">
	<label for="pgcollege" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">College</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="pg_college" placeholder="college name"  autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
  
  <div class="form-group">
	<label for="pguniverity" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">University</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="pg_university" placeholder="university" autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
	
	 <div class="form-group">
	<label for="pgyear" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Graduation Year</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    <input type="number" class="form-control" name="pg_year"  placeholder="Eg:- 2010" autocomplete="off"  maxlength="4" style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
 
   <div class="form-group">
	<label for="pgaggregate" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Aggregate</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-star-empty"></i></span>
    <input type="text" class="form-control" name="pg_aggregate"  placeholder="Eg:- 90.3" autocomplete="off"  style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
	  <div class="form-group">
	<label for="ug" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Under Graduation<br>Degree</label>
	  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
    <%
  try
  {
	   con = DBConnect.getDBConnection();
	   st=con.createStatement();
	   
       res1=st.executeQuery("select ug_degree from degree");%>
       
       <select name="ug_degree" class="form-control" required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;">
       <option>----Select UG Degree---</option>
     
       <%  while(res1.next()){ %>
            <option><%= res1.getString("ug_degree")%></option>
        <% }
  }
    
  catch(Exception e)
  {
	  out.print("<h1 style='color:red' align='center'>" + e.getMessage() + "</h1>");
  } %>
   </select>
   </div>
   </div>
  </div>
  <br>
  <div class="form-group">
	<label for="ugcollege" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">College</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="ug_college" placeholder="college name" required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
  
  <div class="form-group">
	<label for="uguniverity" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">University</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="ug_university" placeholder="university" required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
	
	 <div class="form-group">
	<label for="ugyear" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Graduation Year</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    <input type="number" class="form-control" name="ug_year"  placeholder="Eg:- 2010" required autocomplete="off"  maxlength="4" style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
 
   <div class="form-group">
	<label for="ugaggregate" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Aggregate</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-star-empty"></i></span>
    <input type="text" class="form-control" name="ug_aggregate"  placeholder="Eg:- 90.3" required autocomplete="off"  style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
	
		  <div class="form-group">
	<label for="pudegree" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">College<br>Stream</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
   <%
  try
  {
	   con = DBConnect.getDBConnection();
	   st=con.createStatement();
	   
       res2=st.executeQuery("select college_stream from degree");%>
      
       <select name="pu_degree" class="form-control" required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;">
       <option>---Select College Stream---</option>
       <%  while(res2.next())
       	   {    	      
    	     %>
       <option><%= res2.getString("college_stream")%></option>
   		<% }
 }
   
 catch(Exception exc)
 {
	out.print("<h1 style='color:red' align='center'>" + exc.getMessage() + "</h1>");
 } %>
   </select>
   </div>
   </div>
  </div>
  
  <br>
  <div class="form-group">
	<label for="pucollege" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">College name</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="pu_college" placeholder="college name" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
  
  <div class="form-group">
	<label for="pu_board" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Board</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="pu_board" placeholder="university" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
	
	 <div class="form-group">
	<label for="puyear" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Completion Year</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    <input type="number" class="form-control" name="pu_year"  placeholder="Eg:- 2010" required autocomplete="off"  maxlength="4" style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
 
   <div class="form-group">
	<label for="puaggregate" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Aggregate</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-star-empty"></i></span>
    <input type="text" class="form-control" name="pu_aggregate"  placeholder="Eg:- 90.3" required autocomplete="off"  style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
	
	  <div class="form-group">
  <label for="school_degree" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">School-Stream</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
   <%
  try
  {
	   con = DBConnect.getDBConnection();
	   st=con.createStatement();
	   
       res3=st.executeQuery("select school_stream from degree");%>
      
       <select name="school_degree" class="form-control" required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;">
       <option>---Select School Stream---</option>
       <%  while(res3.next()){ %>
       <option><%= res3.getString("school_stream")%></option>
   <% }
  }
   
  catch(Exception ex)
  {
	out.print("<h1 style='color:red' align='center'>" + ex.getMessage() + "</h1>");
  } %>
   </select>
   </div>
   </div>
  </div>

  
  
  <div class="form-group">
	<label for="school" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">School Name</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="school" placeholder="school name" required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
  
  <div class="form-group">
	<label for="board" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Board</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" name="board" placeholder="board" autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
	
	 <div class="form-group">
	<label for="schoolyear" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Completion year</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    <input type="number" class="form-control" name="year"  placeholder="Eg:- 2010" required autocomplete="off"  maxlength="4" style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
 
   <div class="form-group">
	<label for="aggregate" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Aggregate</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-star-empty"></i></span>
    <input type="text" class="form-control" name="aggregate"  placeholder="Eg:- 90.3" required autocomplete="off"  style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
  
	
	
 <div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<br>
<div id="Technical Skills" class="tabcontent" style="margin-left:450px;">
  <br> <center><h1>Technical Skills</h1></center>
  
  <form action="technical_save" method="post">
   <div class="form-group">
	<label for="skills" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Skills</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
  <input type="text" class="form-control" name="skills" placeholder="eg:c,c++" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
<div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>


<div id="Work Experience" class="tabcontent" style="margin-left:450px;">
 <br><center><h1>Work Experience</h1></center>
  <form action="workexperience_save" method="post"> 
 <div class="form-group">
<label for="company" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Company</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
  <input type="text" class="form-control" name="company" placeholder="eg:Grid R&D" autofocus required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
</div>
	</div>
	</div>
  <div class="form-group">
	<label for="position" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Position</label>
  <div class="cols-sm-10" style="width: 510px;">  
  <div class="input-group" style="margin-left: 200px;"> 
  <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
  <input type="text" class="form-control" name="position" placeholder="eg:Team Lead"  required autocomplete="off" style="font-family : Verdana; font-size: 15px;width:300px;"/>
  </div>
	</div>
	</div>
 
 <div class="form-group">
	<label for="totalyears" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Total Years</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    <input type="number" class="form-control" name="years_of_experience"  placeholder="Eg:- 3" required autocomplete="off"  style="font-family : Verdana; font-size: 15px;width: 300px;"/>
	</div>
	</div>
	</div>
  
 
<div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<div id="Certification" class="tabcontent" style="margin-left:450px;">
<br><center> <h1>Certifications</h1></center>
<form action="certification_save" method="POST">
<div class="form-group">
    <label for="certfication" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Descripton</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	<textarea class="form-control" name="certification_desc" rows="3" autofocus required placeholder="give the description " style='font-size:15px; width:300px;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
	</div>
	</div>
    </div>
 <div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<div id="Carrier objective" class="tabcontent" style="margin-left:450px;">
<br> <center><h1>Career Objective</h1></center>
<form action="careerObjective_save" method="Post">
<div class="form-group">
    <label for="career" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Decription</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	<textarea class="form-control" name="career_desc" rows="3" autofocus required placeholder="give the description" style='font-size:15px; width:300px;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
	</div>
	</div>
    </div>
 <div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<div id="Projects" class="tabcontent" style="margin-left:450px;">
<br><center> <h1>Projects</h1></center>
<form action="projects_save" method="post">
<div class="form-group">
    <label for="projects" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Descripton</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	<textarea class="form-control" name="project_desc" rows="3" autofocus required placeholder="give the description " style='font-size:15px; width:300px;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
	</div>
	</div>
	</div>
<div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<div id="Internship" class="tabcontent" style="margin-left:450px;">
<br> <center><h1>Internships</h1></center>
<form action="internship_save" method="post">
<div class="form-group">
  <label for="internship" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Descripton</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	<textarea class="form-control" name="internship_desc" rows="3" autofocus  required placeholder="give the description " style='font-size:15px; width:300px;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
	</div>
	</div>
    </div>
<div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<div id="Extra-curricular Activities" class="tabcontent" style="margin-left:450px;">
<br><center> <h1>Extra-curricular Activities</h1></center>
<form action="extra_save" method="post">
<div class="form-group">
    <label for="extra" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Descripton</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	<textarea class="form-control" name="extracurricular_desc" rows="3" autofocus required placeholder="give the description " style='font-size:15px; width:300px;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
	</div>
	</div>
    </div>
<div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<div id="Additional Information" class="tabcontent" style="margin-left:450px;">
<br> <center><h1>Additional Information</h1></center>
<form action="add_save" method="post">
<div class="form-group">
    <label for="add" class="cols-sm-2 control-label" style="float: left; margin-left: 50px;">Descripton</label>
	<div class="cols-sm-10" style="width: 502px;">
	<div class="input-group" style="margin-left: 200px;">
	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	<textarea class="form-control" name="additional_desc" rows="3" autofocus required placeholder="give the description " style='font-size:15px; width:300px;' onkeyup='this.rows = (this.value.split("\n").length||1);'></textarea> 
	</div>
	</div>
    </div>
<div class="form-group" style="width: 50px;">
<table>
<tr><td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 200px;width:175px;">Save</button> </td>
<td><button type="reset" class="btn btn-primary btn-lg btn-block login-button" style="margin-left:10px;width:175px;">Reset</button></td> 
</tr>
</table>
</div>
</form>
</div>

<div align="center">

<form action="display" method="post">  
<!--<input type="submit" value="View Resume" style="color:white;background-color:orange;border:2px solid #336600;padding:8px;width:150px"/>-->
	<button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="color : white;  background-color : orange;  border : 2px solid #336600;  padding : 8px;  width : 150px">View Resume</button>
</form>
</div>

<script>



function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
     
</body>
</html> 

