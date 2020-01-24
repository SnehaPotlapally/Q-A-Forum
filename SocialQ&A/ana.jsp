<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>


<%

try{
LineChart.main2();

}
catch(Exception e){
System.out.println("11="+e);
}
%>

<img src="images/LineChart.jpeg" width="640" height="480" border="0" alt="">

<%@ include file="footer.jsp"%>