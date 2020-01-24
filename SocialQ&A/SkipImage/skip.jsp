
<%@ page  import="java.sql.*" import="CT.*" %>



<%
try{

String email=(String)session.getAttribute("email");
SkipImage.main(email);
response.sendRedirect("signup.jsp?id="+email+"");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
