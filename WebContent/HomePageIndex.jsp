<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Homepage_UnEmployed.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap-alt/assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-alt/assets/js/bootstrap.min.js">
<script src="bootstrap-alt/assets/js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.1-min.js"></script>
<link rel="stylesheet" href="bootstrap-alt/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

<title>Un-Employed Home Page</title>
<style type="text/css">
   *{
	margin:auto;
	padding:0px;
	}
.MainDiv{
background-image: url("images/bgblue.png");
	
	}
	
.menubar{



}	
.AutoScroll {
        background-color: #191919;
        color: #fff;
        position: relative;
        top: 90px;
        max-height: 250px;
        max-width:400px;
        bottom:50px;
        overflow-y: scroll;
        padding: 20px;
        border: 1px solid #121212;
        float: left;
        overflow: hidden;
        
        
      }
      
      .outer {
        position: relative;
        top: 70px;
        color: Green;
      }
      
.bannerbtmdiv{
	width:237px;
	height:150px;
	
	float:left;
	
	margin-left:100px;
	
}
.bannerbtmdiv  a {
	 color:BLUE;
	 text-decoration:none;
}
.bannerbtmdiv a:hover{
	 color:#4a0101;
	 text-decoration:none;
}

   
</style>

</head>
<body>	
	<div class="MainDiv" style="height: 1150px" >
	
		<!-- #region Jssor Slider Begin -->

    <!-- Generator: Jssor Slider Maker -->
    <!-- Source: http://www.jssor.com/demos/html5-ad.slider -->
    
    <!-- This demo works with jquery library -->

    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/jssor.slider-21.1.5.mini.js"></script>
    <!-- use jssor.slider-21.1.5.debug.js instead for debug -->
    <script>
        jQuery(document).ready(function ($) {
            
            var jssor_html5_AdWords_SlideoTransitions = [
              [{b:-1,d:1,o:-1,rY:-120},{b:2600,d:500,o:1,rY:120,e:{rY:17}}],
              [{b:-1,d:1,o:-1},{b:1480,d:20,o:1},{b:1500,d:500,y:-20,e:{y:19}},{b:2300,d:300,x:-20,e:{x:19}},{b:3100,d:300,o:-1,sY:9}],
              [{b:-1,d:1,o:-1},{b:2300,d:300,x:20,o:1,e:{x:19}},{b:3100,d:300,o:-1,sY:9}],
              [{b:-1,d:1,sX:-1,sY:-1},{b:0,d:1000,sX:2,sY:2,e:{sX:7,sY:7}},{b:1000,d:500,sX:-1,sY:-1,e:{sX:16,sY:16}},{b:1500,d:500,y:20,e:{y:19}}],
              [{b:1000,d:1000,r:-30},{b:2000,d:500,r:30,e:{r:2}},{b:2500,d:500,r:-30,e:{r:3}},{b:3000,d:3000,x:70,y:40,rY:-20,tZ:-20}],
              [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
              [{b:-1,d:1,o:-1,r:30},{b:1000,d:1000,o:1}],
              [{b:-1,d:1,o:-1},{b:2780,d:20,o:1},{b:2800,d:500,y:-70,e:{y:3}},{b:3300,d:1000,y:180},{b:4300,d:500,y:-40,e:{y:3}},{b:5300,d:500,y:-40,e:{y:3}},{b:6300,d:500,y:-40,e:{y:3}},{b:7300,d:500,y:-40,e:{y:3}},{b:8300,d:400,y:-30}],
              [{b:-1,d:1,c:{y:200}},{b:4300,d:4400,c:{y:-200},e:{c:{y:1}}}],
              [{b:-1,d:1,o:-1},{b:4300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:5300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:6300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:7300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:8300,d:20,o:1}],
              [{b:2000,d:1000,o:-0.5,r:180,sX:4,sY:4,e:{r:5,sX:5,sY:5}},{b:3000,d:1000,o:-0.5,r:180,sX:-4,sY:-4,e:{r:6,sX:6,sY:6}}],
              [{b:-1,d:1,o:-1,c:{m:-35.0}},{b:0,d:1500,x:150,o:1,e:{x:6}}],
              [{b:-1,d:1,o:-1,c:{y:35.0}},{b:0,d:1500,x:-150,o:1,e:{x:6}}],
              [{b:-1,d:1,o:-1},{b:6500,d:2000,o:1}],
              [{b:-1,d:1,o:-1},{b:2000,d:1000,o:0.5,r:180,sX:4,sY:4,e:{r:5,sX:5,sY:5}},{b:3000,d:1000,o:0.5,r:180,sX:-4,sY:-4,e:{r:6,sX:6,sY:6}},{b:4500,d:1500,x:-45,y:60,e:{x:12,y:3}}],
              [{b:-1,d:1,o:-1},{b:4500,d:1500,o:1,e:{o:5}},{b:6500,d:2000,o:-1,r:10,rX:30,rY:20,e:{rY:6}}]
            ];
            
            var jssor_html5_AdWords_options = {
              $AutoPlay: true,
              $Idle: 1600,
              $SlideDuration:500,
              $SlideEasing: $Jease$.$InOutSine,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_html5_AdWords_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $ChanceToShow: 1
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $ActionMode: 2
              }
            };
            
            var jssor_html5_AdWords_slider = new $JssorSlider$("jssor_html5_AdWords", jssor_html5_AdWords_options);
        });
    </script>

    <style>
        
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('img/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 12 css */
        /*
        .jssora12l                  (normal)
        .jssora12r                  (normal)
        .jssora12l:hover            (normal mouseover)
        .jssora12r:hover            (normal mouseover)
        .jssora12l.jssora12ldn      (mousedown)
        .jssora12r.jssora12rdn      (mousedown)
        */
        .jssora12l, .jssora12r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 30px;
            height: 46px;
            cursor: pointer;
            background: url('img/a12.png') no-repeat;
            overflow: hidden;
        }
        .jssora12l { background-position: -16px -37px; }
        .jssora12r { background-position: -75px -37px; }
        .jssora12l:hover { background-position: -136px -37px; }
        .jssora12r:hover { background-position: -195px -37px; }
        .jssora12l.jssora12ldn { background-position: -256px -37px; }
        .jssora12r.jssora12rdn { background-position: -315px -37px; }
    </style>

<div class="banner1" >
<div id="jssor_html5_AdWords" style="position: relative; margin: 0 auto; top: 5px; left: 0px; width:1345px; height: 400px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1345px; height: 400px; overflow: hidden;">
            <div data-p="68.75" style="display: none;">
                <img data-u="image" src="img/unemp1.jpg" />
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/unemp2.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/unemp3.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/unemp4.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/unemp5.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/unemp6.jpg" />
               
            </div>
            
        
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:600px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora12l" style="top:0px;left:0px;width:30px;height:46px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora12r" style="top:0px;right:0px;width:30px;height:46px;" data-autocenter="2"></span>
    </div>
</div>
<div class="scrollerauto"  >
 <div class="container" >
      <div class="row">
        <div class="col-sm-5 col-md-4">
          <h2 class="outer">INTERVIEWS</h2>
          <div class="AutoScroll scroller" id="id" data-config='{"delay" : 4000 , "amount" : 100}'>
            <div>
              <h4 style="color:#45acc2; ">Company: Nineleaps Technology Solutions Pvt. Ltd</h4>
               <p>Job Position: Developer</p>
              <p>Location: Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: EMC2</h4>
              <p>Job Position: Associate Client Ops Analyst</p>
              <p>Location: Bangalore</p>
             
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: Happiest Minds Technologies Pvt.Ltd</h4>
              <p>Job Position: DevOps role(Testing)</p>
              <p>Location: Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: WIPRO</h4>
              <p>Job Position: Technical Support</p>
              <p>Location: Bangalore</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Company: Mercedes-Benz</h4>
              <p>Job Position: Software Developer/Securit Analyst</p>
              <p>Location: Pune, Bangalore</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Urgent Requirement</h4>
              <p>Job Position: Manual Test Engineer</p>
              <p>Location: Pune/Mumbai</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Company: Synechron Technologies Pvt. Limited</h4>
              <p>Job Position: Web Systems Analyst</p>
              <p>Location: Bangalore</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Company: TechChefs</h4>
              <p>Job Position: Java Freshers</p>
              <p>Location: Bangalore</p>
            </div>
          </div>
        </div>

        <div class="col-sm-5 col-md-4">
          <h2 class="outer">INTERNSHIPS</h2>
          <div class="AutoScroll id-2">
            <div>
              <h4 style="color:#45acc2; ">Company:PUMA SPORTS INDIA</h4>
              <p>Internship Category: Graphic Design</p>
              <p>Location: Pune, Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: Niki</h4>
              <p>Internship Category: Software Development</p>
              <p>Location: Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Startup culture</h4>
              <p>Internship Category:Android Developer</p>
              <p>Location: Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: Peopleclick Techno Solutions</h4>
              <p>Internship Category:PHP</p>
              <p>Location: Bangalore</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Web Development Internship</h4>
              <p>Internship Category: HTML/CSS/JS</p>
              <p>Location: Gurgaon</p>
            </div>
            
             <div>
              <h4 style="color:#45acc2; ">Web Development (Node JS & Backend)</h4>
              <p>Internship Category: JavaScript and AngularJS and Node.js</p>
              <p>Location: Bangalore</p>
            </div>
            
             <div>
              <h4 style="color:#45acc2; ">Company: Yokogawa </h4>
              <p>Internship Category: HTML/CSS/JS</p>
              <p>Location: Gurgaon</p>
            </div>
            
             <div>
              <h4 style="color:#45acc2; ">Web Development Internship</h4>
              <p>Internship Category: E n E, Instrumentation & Mech</p>
              <p>Location: Bangalore</p>
            </div>
          </div>
        </div>
        
        <div class="col-sm-5 col-md-4">
          <h2 class="outer">WALK-INS</h2>
          <div class="AutoScroll id-2">
            <div>
              <h4 style="color:#45acc2; ">Company: Eveningflavors.com</h4>
              <p>Job Position: Java Developer/Programmer</p>
              <p>Location: Pune, Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: EMC2</h4>
              <p>Job Position: Associate Client Ops Analyst</p>
              <p>Location: Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: Nineleaps Technology Solutions Pvt. Ltd</h4>
              <p>Job Position: Developer</p>
              <p>Location: Bangalore</p>
            </div>

            <div>
              <h4 style="color:#45acc2; ">Company: Quintiles IMS</h4>
              <p>Job Position: Developer</p>
              <p>Location: Bangalore</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Company: POEL</h4>
              <p>Job Position: Software Trainee</p>
              <p>Location: Bangalore/ Mumbai</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Company: Siemens Technology and Services Pvt Ltd</h4>
              <p>Job Position: Junior Specialist</p>
              <p>Location: Bangalore</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Company: Experis IT Private Limited</h4>
              <p>Job Position: Developer</p>
              <p>Location: Bangalore</p>
            </div>
            
            <div>
              <h4 style="color:#45acc2; ">Company:Intelenet is hiring for Flipkart</h4>
              <p>Job Position: Voice based Support</p>
              <p>Location: Bangalore</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="js/autoscroll.js"></script>
    <script type="text/javascript">
      $(".id-2").scroller();
    </script>
</div>
<div style="float:left; margin-top: 150px;  margin-left: 80px;">

<hr style="margin-left: 50px;width: 1100px;">

<div class="bannerbtmdiv" >

<p style="float:left; color:Green; font-size:14px; font-weight:bold; font-family:arial; margin-top:2px; margin-left:5px;">INFORMATION</p>
<div class="information" style="margin-top:5px; width:220px; height:100px; margin-left:5px; float:left;">

<a href="aboutus.jsp" style="padding-right:15px; padding-left:15px;  border-right:2px; font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; ">ABOUT US<br></a>
<a href="services.jsp" style="padding-right:15px; padding-left:15px;  border-right:2px; font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; ">CUSTOMER SERVICE<br></a>
<a href="SiteMap.jsp" style="padding-right:15px; padding-left:15px;  border-right:2px;font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; ">SITE MAP<br></a>

<a href="Reachus.jsp" style="padding-right:15px; padding-left:15px;  border-right:2px; font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; ">CONTACT </a>
</div>


</div>


<div class="bannerbtmdiv" >

<p style="float:left; color:GREEN; font-size:14px; font-weight:bold; font-family:arial; margin-top:5px; margin-left:5px;">MY ACCOUNT</p>
<div class="myacct" style="margin-top:15px; width:220px; height:100px; margin-left:5px; float:left;">

<a href="CandidateLogin.jsp" style="padding-right:15px; padding-left:15px;  border-right:2px; font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; ">SIGN IN<br></a>
<a href="CandidateRegistration.jsp" style="padding-right:15px; padding-left:15px;  border-right:2px; font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; ">REGISTER<br></a>
<!-- <a href="Help.jsp" style="padding-right:15px; padding-left:15px;  border-right:2px; font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; ">HELP</a> -->

</div>


</div>

<div class="bannerbtmdiv" >
<p style="float:left; color:GREEN; font-size:14px; font-weight:bold; font-family:arial; margin-top:5px; margin-left:5px;">LOCATION</p>
<br><p style="float:left; font-family:Arial Rounded MT Bold; font-weight:600; font-size:14px; color:BLUE; margin-top:15px; margin-left:10px;">363, 16th Main Rd, 4th T Block East, Pattabhirama Nagar, Jayanagar, Bengaluru, Karnataka 560041</p>


<p style="float:left; font-family:Arial Rounded MT Bold;font-weight:600; font-size:18px; color:#108b07; margin-top:15px; margin-left:10px;">Tel No. 080 4155 4144</p>



</div>



</div>
</div>
</body>
</html>