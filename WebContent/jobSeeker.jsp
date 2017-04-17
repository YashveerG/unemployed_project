<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

<%@page import="com.grid.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<jsp:include page="Dashboard.jsp" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Job-Seeker Profile</title>

<!-- BOOTSTRAP STYLES -->
<link href="bootstrap-alt/assets/css/bootstrap.css" rel="stylesheet" />

<!-- FONTAWESOME STYLES -->
<link href="bootstrap-alt/assets/css/font-awesome.css" rel="stylesheet" />

<!-- CUSTOM STYLES -->
<link href="bootstrap-alt/assets/css/custom.css" rel="stylesheet" />

<!-- GOOGLE FONTS -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script> 
<script type="text/javascript">
$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editNameFieldData').prop('readonly'))
	    {
			$('#editNameFieldData').prop('readonly', false)
			$('#editNameFieldData').focus();
	    }
    else
    {
        $('#editNameFieldData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editPswdFieldData').prop('readonly'))
	    {
			$('#editPswdFieldData').prop('readonly', false)			
	    }
    else
    {
        $('#editPswdFieldData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editMobNumFieldData').prop('readonly'))
	    {
			$('#editMobNumFieldData').prop('readonly', false)			
	    }
    else
    {
        $('#editMobNumFieldData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editDOBFieldData').prop('disabled'))
	    {
			$('#editDOBFieldData').prop('disabled', false)			
	    }
    else
    {
        $('#editDOBFieldData').prop('disabled', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editGenderFieldData').prop('disabled'))
	    {
			$('#editGenderFieldData').prop('disabled', false)			
	    }
    else
    {
        $('#editGenderFieldData').prop('disabled', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editAddressData').prop('readonly'))
	    {
			$('#editAddressData').prop('readonly', false)			
	    }
    else
    {
        $('#editAddressData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editJobPositionFieldData').prop('readonly'))
	    {
			$('#editJobPositionFieldData').prop('readonly', false)			
	    }
    else
    {
        $('#editJobPositionFieldData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editJobCategoryFieldData').prop('readonly'))
	    {
			$('#editJobCategoryFieldData').prop('readonly', false)			
	    }
    else
    {
        $('#editJobCategoryFieldData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editWorkExpInYearsData').prop('readonly'))
	    {
			$('#editWorkExpInYearsData').prop('readonly', false)			
	    }
    else
    {
        $('#editWorkExpInYearsData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editWorkExpInMonthsData').prop('readonly'))
	    {
			$('#editWorkExpInMonthsData').prop('readonly', false)			
	    }
    else
    {
        $('#editWorkExpInMonthsData').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editSalaryEarnedInLakhs').prop('readonly'))
	    {
			$('#editSalaryEarnedInLakhs').prop('readonly', false)			
	    }
    else
    {
        $('#editSalaryEarnedInLakhs').prop('readonly', true)
    }
   });
})


$(document).ready(function()
{
    $('#enableBtn').click(function()
    {
	    if($('#editSalaryEarnedInThousands').prop('readonly'))
	    {
			$('#editSalaryEarnedInThousands').prop('readonly', false)			
	    }
    else
    {
        $('#editSalaryEarnedInThousands').prop('readonly', true)
    }
   });
})
</script>
<title>Un-Employed Job Seeker Profile Page</title>
</head>
<body>
	
	<%
		List<Object> employeeList = (ArrayList<Object>)session.getAttribute("candInfo");
	%>
	<div class="container">
			<div class="row main" align="center">
				<div class="panel-heading">
					<div class="panel-title text-center">
						<h1 class="title">Job Seeker Profile</h1> 
					</div>
				</div>
				
				<div class="main-login main-center"> 
				<form class="form-horizontal" method="post" action="update">  
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label" style="float: left; margin-left: 500px;">Name</label>
							<div class="cols-sm-10" style="width: 515px;">
								<div class="input-group" style="margin-left: 80px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" id="editNameFieldData" name="name" placeholder="Name" autofocus autocomplete="off" value="<%=employeeList.get(0)%>" readonly/>   
								</div>								
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="mail" class="cols-sm-2 control-label" style="float: left; margin-left: 440px;">E-mail address</label>
							<div class="cols-sm-10" style="width: 505px;">
								<div class="input-group" style="margin-left: 83px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="mail" placeholder="localpart@domain" autocomplete="off" value="<%=employeeList.get(1)%>" readonly/>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="pswd" class="cols-sm-2 control-label" style="float: left; margin-left: 470px;">Password</label>
							<div class="cols-sm-10" style="width: 500px;">
								<div class="input-group" style="margin-left: 85px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
									<input type="password" class="form-control" id="editPswdFieldData" name="pswd" placeholder="* * * * * * * *" autocomplete="off" value="<%=employeeList.get(2)%>" readonly/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="mobile" class="cols-sm-2 control-label" style="float: left; margin-left: 430px;">Mobile number</label>
							<div class="cols-sm-10" style="width: 495px;">
								<div class="input-group" style="margin-left: 88px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
									<input type="number" class="form-control" id="editMobNumFieldData" name="mobile" placeholder="Eg:- 9984786341" min="7000000000" max="9999999999" autocomplete="off" value="<%=employeeList.get(3)%>" readonly/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="dob" class="cols-sm-2 control-label" style="float: left; margin-left: 445px;">Date of Birth</label>
							<div class="cols-sm-10" style="width: 490px;">
								<div class="input-group" style="margin-left: 90px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
									<input type="date" class="form-control" id="editDOBFieldData" name="dob" value="<%=employeeList.get(4)%>" disabled/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="selected_gender" class="cols-sm-2 control-label" style="float: left; margin-left: 478px;">Gender</label>
							<div class="cols-sm-10" style="width: 486px;">
								<div class="input-group" style="margin-left: 93px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<select class="form-control" name="gender" id="editGenderFieldData" disabled>   
									<%
										String[] genderArr = {"Male" , "Female"};
									
										for(int g=0;  g<genderArr.length;  g++)
										{
									%>
										<option <%if(genderArr[g].equals(employeeList.get(5))){ %> selected="selected"<% }%>><%=genderArr[g]%></option>
										
									<%
										}
									%>											
									</select>																																										
								</div>								
							</div>							
						</div>
						
						
						<div class="form-group">
							<label for="address" class="cols-sm-2 control-label" style="float: left; margin-left: 470px;">Address</label>
							<div class="cols-sm-10" style="width: 478px;">
								<div class="input-group" style="margin-left: 97px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
									<textarea class="form-control" name="location" rows="3" placeholder="Address" required id="editAddressData" style='font-size:20px; overflow-y:hidden;' onkeyup='this.rows = (this.value.split("\n").length||1);' readonly><%=employeeList.get(6)%></textarea>   
								</div>
							</div>
						</div>
						
											
						<div class="form-group">
							<label for="selJobRole" class="cols-sm-2 control-label" style="float: left; margin-left: 448px;">Job Position</label>
							<div class="cols-sm-10" style="width: 490px;">
								<div class="input-group" style="margin-left: 93px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
									<input type="text" class="form-control" id="editJobPositionFieldData" name="job_role" placeholder="Job Position" autocomplete="off" value="<%=employeeList.get(7)%>" readonly/>	
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="job_category" class="cols-sm-2 control-label" style="float: left; margin-left: 440px;">Job Category</label>
							<div class="cols-sm-10" style="width: 487px;">
								<div class="input-group" style="margin-left: 95px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
										<input type="text" class="form-control" id="editJobCategoryFieldData" name="job_category" placeholder="Job Category" autocomplete="off" value="<%=employeeList.get(8)%>" readonly/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="workExp" class="cols-sm-2 control-label" style="float: left; margin-left: 350px;">Work Experience(in years)</label>
							<div class="cols-sm-10" style="width: 480px;">
								<div class="input-group" style="margin-left: 98px;">
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
									<%String years="", months="";%>
									<input type="number" class="form-control" name="work_exp_Years" id="editWorkExpInYearsData" placeholder="Years" value="<%=(years=employeeList.get(9).toString().split(" ")[0]).substring(0,years.indexOf('.'))%>" min="0" max="40" autocomplete="off" style="font-family : Verdana; font-size: 20px;" readonly/>
																											
									<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
									<input type="number" class="form-control" name="work_exp_Months" id="editWorkExpInMonthsData" placeholder="Months" value="<%=(months=employeeList.get(9).toString().split(" ")[0]).substring(months.indexOf('.')+1)%>" min="0" max="11" autocomplete="off" style="font-family : Verdana; font-size: 20px;" readonly/>
									</div>																							
								</div>																
							</div>
						

						<div class="form-group">
							<label for="salary" class="cols-sm-2 control-label" style="float: left; margin-left: 370px;">Annual salary(in lakhs)</label>
							<div class="cols-sm-10" style="width: 475px;">
								<div class="input-group" style="margin-left: 101px;">
									<span class="input-group-addon">INR</span> 
									<%String lakhs="", thousands="";%>
									<input type="number" class="form-control" name="salary_Lakhs" id="editSalaryEarnedInLakhs" placeholder="Lakhs" value="<%=(lakhs=employeeList.get(10).toString().split(" ")[0]).substring(0, lakhs.indexOf('.'))%>" min="0" max="99" autocomplete="off" style="font-family : Verdana; font-size: 20px;" readonly/>
									
									<span class="input-group-addon">INR</span>
									<input type="number" class="form-control" name="salary_Thousands" id="editSalaryEarnedInThousands" placeholder="Thousands" value="<%=(thousands=employeeList.get(10).toString().split(" ")[0]).substring(thousands.indexOf('.')+1)%>" min="1" max="99" autocomplete="off" style="font-family : Verdana; font-size: 20px;" readonly/> 								
								</div>
							</div>
						</div>
						
						<br>						
						<table>
							<tr>						
								<td><button type="button" id="enableBtn" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 120px;">Edit Profile</button></td>													
								<td><button type="submit" class="btn btn-primary btn-lg btn-block login-button" style="margin-left: 150px;">Save</button></td>
							</tr>							
						</table>	
					</form>
				</div>
			</div>
		</div>
</body>
</html>