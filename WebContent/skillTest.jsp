<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- BOOTSTRAP STYLES-->
<link href="bootstrap-alt/assets/css/bootstrap.css" rel="stylesheet" />

<!-- FONTAWESOME STYLES-->
<link href="bootstrap-alt/assets/css/font-awesome.css" rel="stylesheet" />

<!-- CUSTOM STYLES-->
<link href="bootstrap-alt/assets/css/custom.css" rel="stylesheet" />

<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

<style type="text/css">
*
{
	margin: auto;
	padding:0px;

}

body
{
	background:#2d2b2b;
}
   
.selopt
{
   box-shadow: 4px 4px 10px 0px #4d49f7;
   border: none;
   outline: none;
   border-radius:8px;
   padding: 20px;		
}

#MainDiv
{
   width: 100%;
   height:100%;
}

.sel1
{
	width: 100%;
	height: auto; 
	float: left;
	margin-left:100px; 
}

.subjs
{
	 width: 100%;
	 height: auto;
	 margin-left: 10px;
	 margin-top:40px;
}	

@MEDIA only screen and (max-width:700px)
{
	.sel1,.subjs
	{
	  width:100px;
	  margin: 6px 0;
	}
}

</style>
</head>
<body>

<div id="MainDiv" style="width: 80%">   
<div class="sel1">
<p align="center" style="font-variant: small-caps;font-family: verdana;font-weight: bold; font-size: 30px;margin-right:800px; color: #ffffff;"><u>IT/ITes</u></p>
<div class="subjs">
<table>
				<tr>
	<td class="selopt"><a href="SkillsServlet?subject=C"><img height="200" width="200" src="images/Cprogramming.png"/></a></td>
	<td class="selopt"><a href="SkillsServlet?subject=CPlusPlus"><img height="200" width="200" src="images/C++-Logo.png"/></a></td>
	<td class="selopt"><a href="SkillsServlet?subject=Java"><img height="200" width="200" src="images/Java-logo.png"/></a></td>
	<td class="selopt"><a href="SkillsServlet?subject=Android"><img height="200" width="200" src="images/Android.png"/></a></td>
</tr>
<tr><td><br></td></tr>
<tr><td><br></td></tr>
<tr>
	<td class="selopt"><a href="SkillsServlet?subject=HTML"><img height="200" width="200" src="images/HTML5.png"/></a></td>
	<td class="selopt"><a href="SkillsServlet?subject=CSS"><img height="200" width="200" src="images/CSS3_Logo.png"/></a></td>
	<td class="selopt"><a href="SkillsServlet?subject=SQL"><img height="200" width="200" src="images/sql.png"/></a></td>
	<td class="selopt"><a href="SkillsServlet?subject=JS"><img height="200" width="200" src="images/javascript-logo.png"/></a></td>
	
</tr>
</table>
</div>
</div>
</div>
<input type="hidden" name="count" value="0"/>
</body>
</html>