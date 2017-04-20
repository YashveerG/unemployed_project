<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quiz</title>
<style type="text/css">
.q {
	font-family: verdana;
	font-weight: bold;
	font-stretch: narrower;
	font-size: 20px;
	color: maroon;
}

.c {
	font-family: verdana;
	font-weight: bold;
	font-size: 18px;
	color: #99;
	font-style: inherit;
}

.t {
	font-family: verdana;
	font-variant: small-caps;
	font-weight: bold;
	font-size: 14px;
	color: graytext;
	font-style: normal;
}

.submitBtn {
	width: 100px;
	height: 40px;
	border: none;
	outline: none;
	box-shadow: -5px 5px 5px 0 #685642;
	margin-top: 20px;
	color: blue;
	font-size: 13px;
	text-shadow: 0 1px rgba(0, 0, 0, 0.4);
	background: linear-gradient(to bottom, #977d60, #685642);
	border-radius: 3px;
	font-weight: bold;
	font-variant: small-caps;
}

.button6:hover {
	background-color: #2E64FE;
	cursor: pointer;
}

.button6:active {
	margin-left: -5px;
	margin-bottom: -5px;
	padding-top: 2px;
	box-shadow: none;
}
</style>
<script language="javascript">
	var tim;
	var min = 0;
	var sec = 60;

	function customSubmit(someValue) {
		/*  document.questionForm.minute.value = min;   
		 document.questionForm.second.value = sec;  */

		document.questionForm.submit();
	}

	function examTimer() {

		if (parseInt(sec) > 0) {

			document.getElementById("showtime").innerHTML = "Time Remaining : " + sec + " seconds";
			sec = parseInt(sec) - 1;
			tim = setTimeout("examTimer()", 1000);
		} else {

			if (parseInt(min) == 0 && parseInt(sec) == 0) {
				document.getElementById("showtime").innerHTML = "Time Remaining : " + sec + " seconds";
				//alert("Time Up");
				document.questionForm.minute.value = 0;
				document.questionForm.second.value = 0;
				document.questionForm.submit();

			}

			if (parseInt(sec) == 0) {
				document.getElementById("showtime").innerHTML = "Time Remaining : " + sec + " seconds";
				min = parseInt(min) - 1;
				sec = 59;
				tim = setTimeout("examTimer()", 1000);
			}
			//window.location.reload();
		}
	}
</script>
<script type="text/javascript">
window.history.forward();
function preventBackButtonPress() 
{
	window.history.forward();
}
</script>
</head>
<br />

<body class="container-fluid" onload="examTimer()" onLoad="preventBackButtonPress()" onUnload="">
	<%
		int question_no=Integer.parseInt(session.getAttribute("count").toString());
			ArrayList<String> data = (ArrayList<String>)session.getAttribute("skillsQuestionAnswersData");
			
			String q=(String)data.get(question_no);
	// 		String newstr=q.replace("_","");
	%>

	<form class="c" name="questionForm" action="test.jsp" method="post">


		<div class="t" style="position: absolute; left: 300px; top: 90px">

			<div class="t" id="showCount" style="position: absolute; left: 600px; top: 90px"></div>

			Current Question : <label id="qCount"><%=question_no+1+" / " + (data.size()-1)%></label>

		</div>

		<div class="t" id="showtime" style="position: absolute; left: 930px; top: 90px"></div>
			
			
		<h4 style="margin-left: 290px; margin-top: 40px"><i><u>Test instructions</u><sup style="color: red;">*</sup><br/><br><ul><li>Click on the underline in the question provided to enter your answer.</li>
		<li>Enter your answer within the time limit allocated to that question.</li><li>Please do not use HTML Tags</li></ul></i></h4>
		<div style="position: absolute; left: 300px; top: 245px">
			<textarea class="form-control" id="ques" name="quesans" onclick="myFunction()" rows="12" cols="60" style='font-size: 20px;'> 
<%
 	//String newstr=q.replace("_","");
  	out.write(q);
 %>

 <%
 	session.setAttribute("count", question_no+1);
 %> 
                                                               	                                                                                                                        
</textarea>

			<script>
				function myFunction() {
					var ta = document.getElementById("ques");
					var str = ta.innerHTML;
					var k = str.indexOf("__");
					if (k >= 0) {
						while (k != str.length && str.charAt(k) == '_') {
							str = str.substring(0, k) + " "
									+ str.substring(k + 1);
							//sb.replace(k,k+1," ");
							k++;
						}
						ta.innerHTML = str;
						ta.setSelectionRange(k, k);
					}
				}
			</script>
		</div>

		<%!int next = 0;
	int result = 0,wrong=0;
	%>

		<%
		List<String> user_ans =(ArrayList<String>)session.getAttribute("list_ans");
			if(user_ans==null)
			user_ans = new ArrayList<String>();
			String getanswer = request.getParameter("quesans");
			if(getanswer!=null)
			user_ans.add(getanswer);
			session.setAttribute("list_ans", user_ans);
			//user_ans.removeAll(Collections.singleton(null));
			ArrayList<String> correct_ans = (ArrayList<String>) session.getAttribute("skillsAnswers");
			

// 			for(int m=0;m<user_ans.size();m++)
// 			System.out.println(user_ans.get(m));

// 			for (int n = 0; n < correct_ans.size()-1; n++)
// 			System.out.println(correct_ans.get(n));

		
			//System.out.println(next);
			result=0;
			wrong=0;
			//System.out.println("pre size===="+result);
			if(user_ans.size() == correct_ans.size()-1){
			for (int k = 0; k < correct_ans.size()-1; k++) {
				if (user_ans.get(k).trim().replaceAll(" ", "").toLowerCase().equalsIgnoreCase(correct_ans.get(k).replaceAll(" ", "").toLowerCase())) {
					result++;
				}
				
				else
					wrong++;
				//System.out.println(user_ans.get(k)+"=========="+correct_ans.get(k));
			}
		}
			//else
				//System.out.println("size==="+user_ans.size() +"---------"+ correct_ans.size());
			
			//}
			
			session.setAttribute("score", result);
			session.setAttribute("wrong_ans", wrong);
			
			
			//System.out.println(result);


// 	List<String> dup = new ArrayList<String>();

// 		for (int i = 0; i < correct_ans.size(); i++) {
// 			dup.add(i, correct_ans.get(i));
// 		}
		
// 		while(dup.size()==correct_ans.size()){
// 		for (int j = 0; j < correct_ans.size(); j++) {
// 			for (int k = 0; k < dup.size(); k++) {
// 				if (correct_ans.get(j).equals(dup.get(k))) {
// 					result++;
// 				}
// 			}
// 		}
// 		System.out.print(result);
// 		}
		
	
				if (question_no == data.size() - 1)
					response.sendRedirect("/UnEmployedGridJavaProj/TestResult.jsp");	
		%>

		<div style="position: absolute; float: left; margin-left: 1010px; top: 590px">

			<input class="submitBtn" type="submit" value="Next Question" /> 
			<input type="hidden" name="minute" /> <input type="hidden" name="second" />
		</div>
		</form>
</body>
</html>
