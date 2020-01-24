
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*"  import="CT.Base64"%>

<h3>Question is forwarded to:</h3>
<table>
<tr><td><h3><I><u>Asker Friend<td><h3><I><u>Question Id <td><h3><I><u>Metric Score

<%
String qid=(String)session.getAttribute("qid");;
String cat=(String)session.getAttribute("cat"); String que=(String)session.getAttribute("que"); ;
String qemail=(String)session.getAttribute("qemail"); ; String qname=(String)session.getAttribute("qname"); ;

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();

st2.executeUpdate("update weight set "+cat+"="+cat+"+1 where user ='"+qemail+"' ");
st2.executeUpdate("update query set status='done' where qid ='"+qid+"' ");


String sql="select * from calc where metric >='"+request.getParameter("tvalue")+"'  order by metric desc";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
while(rs.next()){	
	%>
	<tr><td><%=rs.getString(1)%><td><%=qid%>
	<td><%=rs.getString("metric")%>

		
<%
st2.executeUpdate("insert into interaction values ('"+qid+"','"+Base64.encode(qemail)+"','"+rs.getString(1)+"','non')");
st2.executeUpdate("update weight set "+cat+"="+cat+"+1 where user ='"+rs.getString(1)+"' ");

}


}

catch(Exception e){
System.out.println("11="+e);
}
%>
</table>
<center><img src="images/all-done-logo_1379019425.png" width="330" height="154" border="0" alt=""></center>
<%@ include file="footer.jsp"%>
