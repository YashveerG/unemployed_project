<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>


div.text {
		 background-size: 100%;
         border: 1px solid black;
        background-image: url("img/bb.jpeg");
    	 padding: 0px 0px 100px 400px;
		}
b.color {
   		color : #2D54D0;
   		font-family:'Arial Narrow';
   		font-size:120%;
   		}
div.text1 {
		
 		padding : 0px 0px 16px 30px;
		font-family:'Lucida Calligraphy';
		}
h1.font {
		font-family: 'Proxima Nova';
		font-style:  normal;
		font-weight: 400;
		color : white;
		}
h3.align {
     	padding : 0px 0px 0px 250px;
  		color : lightgreen;  
    	}
div.text2 {
		 width:100%;
         border: 0px solid black;
         background-color: white;
         font-family: 'Lucida Calligraphy';
         border-bottom: 2px solid #5A76CB;
    	 
		}
div.img {
    border: 1px solid #788FD8;
    border-radius: 9px;
   }
div.img:hover {
	 border-radius: 11px;
    border: 1px solid black;
		}
div.img img {
    width: 100%;
    height: auto;
	border-radius:10px 10px 0px 0px;
    }
div.desc {
    padding: 5px;
    text-align: center;
   	font-size:120%;
   	}
* {
    box-sizing: border-box;
}
.responsive {
    margin-left:45px;
    padding: 8px 4px ;
    float: left;
    width: 16%; 
    }
@media only screen and (max-width: 700px){
    .responsive {
        width: 49.99999%;
        margin: 2px 0;
    }
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title></head>
<body >
<br>
<div class="text"><br> 
      <h1 class="font">Welcome to leading Soft Skills Training Academy</h1>
            <div class="text1"><h3 class="align">Enhance <b class="color">YOUR PERSONALITY</b></h3>             
              <img src="img/com.jpg"  style="border-radius: 7px;" width="80%" height="500" alt="missing image"/>
            </div> 
</div><br>

<div class="text2"><h1 style="color:#465B9C; text-align:center; margin-left: 120px"><b>SOFT SKILLS TRAINING FOR CORPORATES</b></h1></div><br>

<div class="responsive" >
  <div class="img">
     <a  href="communication.jsp">
      <img src="img/commm.jpg"  alt="Trolltunga Norway" width="300" height="200">
    </a>
    <div class="desc"><b>Communication Skills</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="leadership.jsp">
      <img src="img/lead3.jpg" alt="Forest" width="600" height="400">
    </a>
    <div class="desc"><b>Leadership Skills</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a  href="timemang.jsp">
      <img src="img/time.jpg" alt="Northern Lights" width="600" height="400">
    </a>
    <div class="desc"><b>Time Management</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="teambuild.jsp">
      <img src="img/t.jpg" alt="Northern Lights" width="300" height="200">
    </a>
    <div class="desc"><b>Team Building</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="motivation.jsp">
      <img src="img/m.jpg" alt="Northern Lights" width="600" height="400">
    </a>
    <div class="desc"><b>Motivational Skills</b></div>
  </div>
</div>

<div class="responsive" >
  <div class="img">
    <a href="negotiation.jsp">
      <img src="img/nnn.jpg" alt="Northern Lights" width="600" height="400">
    </a>
    <div class="desc"><b>Negotiation Skills</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="listening.jsp">
      <img src="img/li.jpg" alt="Northern Lights" width="300" height="200">
    </a>
    <div class="desc"><b>Listening Skills</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="business.jsp">
      <img src="img/bb.jpg" alt="Northern Lights" width="600" height="400">
    </a>
    <div class="desc"><b>Business Etiquette</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="interveiw.jsp">
      <img src="img/inter.jpg" alt="Mountains" width="300" height="200">
    </a>
    <div class="desc"><b>Interview Skills</b></div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="problem.jsp">
      <img src="img/pp.jpg" alt="Mountains" width="300" height="200">
    </a>
    <div class="desc"><b>Problem Solving Skills</b></div>
  </div>
</div>

</body>
</html>