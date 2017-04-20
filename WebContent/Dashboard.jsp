<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<script type="text/javascript">
function disableBackArrowKey()
{
	window.history.forward();
}

setTimeout("disableBackArrowKey()", 0);
</script>
</head>
<body onload="disableBackArrowKey()"> 			 
	<%
		String name = (String)session.getAttribute("hesaru"); 
	%>
		
	<div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Dashboard.jsp">Un-Employed</a>  
            </div>
            
<div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;"> Welcome, <%=name%> :) &nbsp; <a href="CandidateLogin.jsp" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">                
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
					<img src="bootstrap-alt/assets/img/find_user.png" class="user-image img-responsive"/>
					<!-- <input type="file" align="right" style="font-family: Verdana; font-size: 18px" />
					<input type="submit" value="Upload file" style="font-family: Verdana; font-size: 18px; margin-left: 130px"> -->       										
				</li>													  					
					
                    <li>
                        <a href="job_seeker"><i class="fa fa-user fa-3x"></i>JobSeeker Profile</a>
                    </li>
                    
                      <li>
                        <a href="JobOpenings.jsp"><i class="fa fa-briefcase fa-2x"></i>Job Openings</a>
                    </li>
                    
                    <li>
                        <a href="skillTest.jsp"><i class="fa fa-qrcode fa-3x"></i> Skill Analysis</a>  
                    </li>
                    
					<li>
                        <a href="InterviewQuestions.jsp"><i class="fa fa-bar-chart-o fa-3x"></i>Interview Questions</a>
                    </li>	
                    
                      <li>
                        <a href="referral_jobs.jsp"><i class="fa fa-table fa-3x"></i> Referral Jobs</a>
                    </li>
                    
                    <li>
                        <a href="Discussion_Forum.jsp"><i class="fa fa-edit fa-3x"></i>Discussion Forum</a>
                    </li>	
                    								
					<li>
                        <a href="design.jsp"><i class="fa fa-file fa-3x" aria-hidden="true"></i> Resume Builder </a>
                    </li>	
                    			
                     <li>
                        <a href="softskills.jsp"><i class="fa fa-edit fa-3x"></i> Soft Skills </a>
                    </li>
                </ul>                              
            </div>            
        </nav>                  
        <!-- /. NAV SIDE  -->
        <!-- <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Blank Page</h2>   
                        <h5>Welcome Jhon Deo , Love to see you back. </h5>
                       
                    </div>
                </div> -->
                 <!-- /. ROW  -->
                 <!-- <hr />
               
    </div> -->
             <!-- /. PAGE INNER  -->
            <!-- </div> -->
         <!-- /. PAGE WRAPPER  -->                  
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="bootstrap-alt/assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="bootstrap-alt/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="bootstrap-alt/assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="bootstrap-alt/assets/js/custom.js"></script>
</body>
</html>
