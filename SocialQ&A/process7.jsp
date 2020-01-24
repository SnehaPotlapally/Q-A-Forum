
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*"%>
<h2>Calculate the metric <img src="images/eqau-6.png" width="84" height="52" border="0" alt=""></h1><br><br>
<table>
<tr><td><h3><I><u>Asker Friend<td><h3><I><u>Weight <td><h3><I><u>Closeness<td><h3><I><u>Metric 

<%
String qid=request.getParameter("id");
String cat=(String)session.getAttribute("cat"); String que=(String)session.getAttribute("que"); ;
String qemail=(String)session.getAttribute("qemail"); ; String qname=(String)session.getAttribute("qname"); ;

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();


String sql="select * from calc";
System.out.println(sql);

double y=0.5;
double tt=0.0;
ResultSet rs=st.executeQuery(sql);
while(rs.next()){
	
	tt=y*rs.getDouble("weight")+(1-y)*rs.getDouble("closeness");
	%>
	<tr><td><%=rs.getString(1)%><td><%=rs.getString("weight")%><td><%=rs.getString("closeness")%><td><%=tt%>

	
	<%	
	st2.executeUpdate("update calc set metric="+tt+" where email='"+rs.getString(1)+"' ");

	}
}

catch(Exception e){
System.out.println("11="+e);
}
%>
</table>

</h1>						
<form method="post" action="process8.jsp">
<table><tr><td>
<h3>Threshold Value</h3>
<input type="number" step="0.1" name="tvalue">
<tr><td>
		<input type="submit" value="Forward Query">
	</form>	
</table>

<%@ include file="footer.jsp"%>
