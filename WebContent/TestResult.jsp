<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>Insert title here</title>
<style type="text/css">
body {
	background:
		url("${pageContext.request.contextPath}/images/background.jpg");
}

.q {
	font-family: verdana;
	font-variant: small-caps;
	font-weight: bold;
	font-stretch: narrower;
	font-size: 24px;
	color: maroon;
}

.c {
	font-family: serif;
	font-weight: bold;
	font-size: 18px;
	color: #99;
	font-style: inherit;
}

.a {
	font-variant: small-caps;
	font-size: 18px;
	color: "red";
}
</style>
</head>
<body>

	<%
		List<String> QAList = (ArrayList<String>) session.getAttribute("skillsQuestionAnswersData");
		int result = (int) session.getAttribute("score");
		int wrong_res = (int) session.getAttribute("wrong_ans");

		int tot_num_questions = QAList.size() - 1;
	%>
	<div style="position: absolute; left: 600px; top: 100px">
		<h3 class="q" align="center">Quiz Result</h3>
		<table class="c" width="400px" height="150px" border="2">
			<tr>
				<td class="head">Quiz :</td>
				<td><span id="lblSubject">&nbsp;<%=session.getAttribute("subject")%></span></td>
			</tr>
			<%-- <tr>
            <td class="head">
                Starting Time :
            </td>
            <td >
                <span id="lblStime">&nbsp;${sessionScope.started}</span></td>
        </tr> --%>


			<tr>
				<td class="head">No. of Questions :</td>
				<td><span id="lblNquestions">&nbsp;<%=tot_num_questions%></span></td>
			</tr>

			<tr>
				<td class="head">No. of correct answers :</td>
				<td><span id="lblNcans">&nbsp;<%=result%></span></td>
			</tr>

			<tr>
				<td class="head">No. of wrong answers :</td>
				<td><span id="lblNcans">&nbsp;<%=wrong_res%></span></td>
			</tr>

			<tr>
				<td class="head">Percentage :</td>
				<td>
					<%
						float percent = (float) (result*100.0) / tot_num_questions;
					%> <span id="lblNcans">&nbsp;<%=percent%></span>
				</td>
			</tr>

<tr>
				<td colspan="2" align="center">
					<%
					if(percent<=35.0f)
						out.print("<h3><b> Poor Performance</b></h3>");

					else if(percent>35.0f && percent<=60.0f)
						out.print("<h3> <b> Avereage Performance </b></h3>");

					else if(percent>60.0f && percent<=80.0f)
						out.print("<h3><b> Good Performance </b></h3>");
					
					else if(percent>80.0f && percent<=100.0f)
						out.print("<h3><b> Excellent Performance</b> </h3>");
					%>
				</td>
				
			</tr>

		</table>

		<%-- <c:if test="${requestScope.result >= 5}">
   <h3 align="center"><font style="color: green">Passed</font></h3>
</c:if>
<c:if test="${requestScope.result < 5}">
   <h3  align="center""><font style="color: red">Failed</font></h3>
</c:if> --%>
		<%-- ${pageContext.request.contextPath} --%>
	
		
		
		<h2 class="a" align="center">
			<a href='skillTest.jsp'><font style="color: orange">Take Another Exam</font></a>
		</h2>
	</div>

</body>
</html>