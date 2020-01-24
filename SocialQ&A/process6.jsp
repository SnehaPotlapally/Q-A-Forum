
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*"%>
<h2>The social closeness of friend <img src="images/eqau-5.png" width="84" height="52" border="0" alt=""></h1><br><br>
<table>
<tr><td><h3><I><u>Asker Friend<td><h3><I><u>Ps <td><h3><I><u>Pa<td><h3><I><u>Pc<td><h3><I><u>Closeness 

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
	
	tt=y*rs.getDouble("ps")+y*rs.getDouble("pa")+y*rs.getDouble("pc");
	%>
	<tr><td><%=rs.getString(1)%><td><%=rs.getString("ps")%><td><%=rs.getString("pa")%><td><%=rs.getString("pc")%><td><%=tt%>

	
	<%	
	st2.executeUpdate("update calc set closeness="+tt+" where email='"+rs.getString(1)+"' ");

}

}

catch(Exception e){
System.out.println("11="+e);
}
%>
</table>

</h1>											
	<form method="post" action="process7.jsp">
		<input type="submit" value="calculate the metric">
	</form>	

<%@ include file="footer.jsp"%>
