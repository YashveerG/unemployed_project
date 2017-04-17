<%@page import="com.grid.DBConnect"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="Dashboard.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
body{
background-color:#E8ECFB;
}
hr
{
color: #CDCBC8;
background-color: #CDCBC8;
height: 3px;
}		color{
               color:black;}
div.questions {
background-color:#E5E8E8 ;
border-radius:7px;
}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String question = request.getParameter("question"); 
 %>
<%!
static Connection con;
static Statement st;
static ResultSet rs;
	%>

	 <div style="margin-left:25%;margin-top:2%;margin-right:5%;">	
	
	 	<table  style="float:right;">
	 	<tr>
			<th>
				<a href="Discussion_Forum.jsp">
					<button type="button" class="btn btn-warning">View all questions</button>
				</a>
			</th>
			
	        <th>
	        	<a href="Discussion_Forum.jsp">
	        		<button type="button" class="btn btn-warning">Ask new question</button>
	        	</a>
	        </th>    	
    	</table>
    	
    	<br>
    	
    </div>
   <div  class="questions" style="margin-left:25%;margin-top:2%;margin-right:5%;"><hr><br>
	<%try 
	  {
    	con = DBConnect.getDBConnection();
		st = con.createStatement();
		rs = st.executeQuery("Select * FROM df_question where df_question_text='" +question+"' ");
		
		while(rs.next()) 
		{
			int id;
			id=rs.getInt("df_question_num");
			
			session.setAttribute("id",id);
			
			int idd=(int)session.getAttribute("id");
			
			String topic=rs.getString("df_topic");
			
			if (topic !=null)
				out.write("<b style='margin-left:2%;font-size:20px;'>On &nbsp''&nbsp</b><b style='color:#596A9D;font-size:20px;'>"+topic+"</b><b style='font-size:20px;'>&nbsp''&nbsp&nbsptopic.</b><br>");
			
	   			out.write("<br><b style='margin-left:2%;font-size:170%;color:#B01731;'>Question >&emsp;</b><b style='font-size:110%'>"+rs.getString("df_question_text")+" &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; By </b><b style='color:#F38B23;'>"+rs.getString("df_user_name")+"</b><br><br>");
   			String code_snippet=rs.getString("df_code_snippet");
   			String comment=rs.getString("df_comments");
   			
	   	if (code_snippet!=null) 
	    { 
        	 out.write("<b style='margin-left:8%;'>Code Snippet :</b><br>");
        	 out.write("<textarea class='color' style='margin-left:8%;border-radius:5px;font-size:15px;border:0px;' rows='15' id='question'  disabled =true cols='54'>"+rs.getString("df_code_snippet")+"</textarea><br>");
      	}
	   	
	    if (comment!=null) 
	    {
	    	 out.write("<br><b style='margin-left:8%;'>Comments :</b><br>");
	    	 out.write("<textarea style='margin-left:8%;border-radius:5px;font-size:15px;border:0px;' rows='3' id='question'  disabled =true cols='54'>"+rs.getString("df_comments")+"</textarea><br><hr>");
	    }
	   }
	}
	catch(Exception exc)
	{
		out.print("<h1 align='center' style='color:red'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
	}
	%>

	<%
	  try 
	  { 
		int idd=(int)session.getAttribute("id");
		rs = st.executeQuery("Select * FROM df_answer where df_question_num='" +idd+"' ");
		
		while(rs.next()) 
		{
			out.write("<br><b style='margin-left:2%;font-size:150%;color:green;'>Answer ></b>");
			
			out.write("<b style='margin-left:2%;border-radius:5px;font-size:15px;'> "+rs.getString("df_answer_text")+" &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;By </b><b style='color:#F38B23;'>"+rs.getString("df_user_name")+"</b><br>");
			out.write("<br><b style='margin-left:8%;'>Code Snippet :</b><br>");
			 
			out.write("<textarea class='color' style='margin-left:8%;border-radius:5px;font-size:15px;border:0px;' rows='15'   disabled =true cols='54'>"+rs.getString("df_code_snippet")+"</textarea><br>");
			out.write("<br><b style='margin-left:8%;'>Comment :</b><br>");
			
	   	    out.write("<textarea style='margin-left:8%;border-radius:5px;font-size:15px;border:0px;' rows='3' disabled =true   cols='54'>"+rs.getString("df_comments")+"</textarea>");
		}
			out.write("<hr><form action='postAnswer' method='post'><b style='margin-left:10px;color:#FC9C09;font-size:150%;'>Post Your Answer Here....</b><br><br><b style='margin-left:8%;'>Answer :</b><br><textarea style='background-color:#F6F9FA;margin-left:8%;border-radius:5px;font-size:15px;border:0px;' rows='3' name='answer' placeholder='Any Answer!!!!'  cols='54'></textarea><br><br><b style='margin-left:8%;'>Code Snippet :</b><br><textarea class='color' style='background-color:#F6F9FA;margin-left:8%;border-radius:5px;font-size:15px;border:0px;' rows='15' name='code_snippet'  placeholder='Any Code_Snippet!!!' required cols='54'></textarea><br><br><b style='margin-left:8%;'>Comments :</b><br><textarea style='background-color:#F6F9FA;margin-left:8%;border-radius:5px;font-size:15px;border:0px;' rows='3' name='comment' placeholder='Any Comment!!!' required cols='54'></textarea><br><br><b style='margin-left:8%;font-size:15px;'>Your Name Please :</b><br><input style='background-color:#F6F9FA;margin-left:8%;border-radius:5px;font-size:15px;width:48%;border:0px;' type='text' name='user_name' required autocomplete='off'/><br><br><button type='submit' style='margin-left:8%;' class='btn btn-warning'>Post Your Answer...</button><hr></form>");
   	    }
	
	catch(Exception exc)
	{
		out.print("<h1 align='center' style='color:red'>Exception thrown at runtime :  " + exc.getMessage() + "</h1>");
	}
	%>
  </div>
</body>
</html>