<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>
<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Thank You!!')</script>");
	}
 %>

<%

try{
LineChart.main(""+session.getAttribute("email"));

}
catch(Exception e){
System.out.println("11="+e);
}
%>

<center><img src="images/LineChart.jpeg" width="640" height="480" border="0" alt="">
&nbsp;</center>
<%@ include file="ufooter.jsp"%>