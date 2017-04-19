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
   *{
	margin:auto;
	padding:0px;


}
body{
	background:#2d2b2b;
}
   
   .selopt{
 			box-shadow: 4px 4px 10px 0px #4d49f7;
 			border: none;
			outline: none;
			border-radius:8px;
			padding: 20px;
			
			
			}
	.MainDiv{
	
	width: 100%;
	height:100%;
	
	}
	.banner1{
	width:100%; 
	height: auto; 
	float: left; 
	margin-left:130px; 
	margin-top: 30px;
	
	}
	.sel1{
	width: 100%;
	height: auto; 
	float: left;
	margin-left:100px; 
	}
	.subjs{
	 width: 100%;
	 height: auto;
	 margin-left: 10px;
	 margin-top:40px;
	
	}	
	@MEDIA only screen and (max-width:700px){
	.sel1,.subjs{
	
	width:100px;
	margin: 6px 0;
	}
	
}
	

</style>
</head>
<body>

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
<div class="MainDiv" style="width: 80%">
<div class="banner1" >
<div id="jssor_html5_AdWords" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width:1000px; height: 300px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1000px; height: 300px; overflow: hidden;">
            <div data-p="68.75" style="display: none;">
                <img data-u="image" src="img/Interview1m.jpg" />
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/quest n ans12.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/interview13.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/Interview14.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/Interview15.jpg" />
               
            </div>
            <div data-p="68.75" data-po="70% 50%" style="display: none;">
                <img data-u="image" src="img/Interview16.jpg" />
               
            </div>
            <div data-p="68.75" style="display: none;">
                <img data-u="image" src="img/Interview17L.jpg" />
                <div data-u="caption" data-t="14" style="position: absolute; top: 90px; left: 75px; width: 150px; height: 70px;">
                    <div data-u="caption" data-t="15" style="position: absolute; top: 0px; left: -150px; width: 150px; height: 70px; background-color: rgba(229,252,247,0.35); font-size: 30px; line-height: 70px; text-align: center;">Present</div>
                    <div data-u="caption" data-t="16" style="position: absolute; top: 0px; left: 150px; width: 150px; height: 70px; background-color: rgba(229,252,247,0.35); font-size: 30px; line-height: 70px; text-align: center;">Present</div>
                </div>
                <div data-u="caption" data-t="17" style="position: absolute; top: 70px; left: 85px; width: 150px; height: 70px; font-size: 50px; color: #ffffff; line-height: 70px; text-align: center;"></div>
                <div data-u="caption" data-t="18" style="position: absolute; top: 90px; left: 75px; width: 160px; height: 70px; background-color: rgba(229,252,247,0.35); font-size: 30px; line-height: 70px; text-align: center;">Your Ideas</div>
                <div data-u="caption" data-t="19" data-3d="1" data-to="100% 50%" style="position: absolute; top: 70px; left: 85px; width: 150px; height: 70px; background-color: rgba(229,252,247,0.35); font-size: 30px; line-height: 70px; text-align: center;">Effectively</div>
            </div>
            
        
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora12l" style="top:0px;left:0px;width:30px;height:46px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora12r" style="top:0px;right:0px;width:30px;height:46px;" data-autocenter="2"></span>
    </div>
</div>
<div class="sel1">
<p align="center" style="font-variant: small-caps;font-family: verdana;font-weight: bold; font-size: 30px;margin-right:800px; color: #ffffff;"><u>IT/ITes</u></p>
<div class="subjs">
<table>
<tr>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=C"><img height="200" width="200" src="images/Cprogramming.png"/></a></td>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=CPlusPlus"><img height="200" width="200" src="images/C++-Logo.png"/></a></td>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=Java"><img height="200" width="200" src="images/Java-logo.png"/></a></td>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=Android"><img height="200" width="200" src="images/Android.png"/></a></td>
</tr>
<tr><td><br></td></tr>
<tr><td><br></td></tr>
<tr>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=HTML"><img height="200" width="200" src="images/HTML5.png"/></a></td>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=CSS"><img height="200" width="200" src="images/CSS3_Logo.png"/></a></td>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=SQL"><img height="200" width="200" src="images/sql.png"/></a></td>
	<td class="selopt"><a href="showInterviewQuestionsAnswers?subject=JS"><img height="200" width="200" src="images/javascript-logo.png"/></a></td>
</tr>
</table>
</div>
</div>
</div>

</body>
</html>
