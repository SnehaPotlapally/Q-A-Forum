
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*"%>
<img src="images/eqau-1.PNG" width="682" height="93" border="0" alt=""><br><br>
<table>
<tr><td><h3>Asker Friends<td><h3>Weight for '<%=session.getAttribute("cat")%>'
<%
String qid=request.getParameter("id");
String cat=(String)session.getAttribute("cat"); String que=(String)session.getAttribute("que"); ;
String qemail=(String)session.getAttribute("qemail"); ; String qname=(String)session.getAttribute("qname"); ;

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
st3.executeUpdate("delete from calc ");

String sql="select * from friends where user1='"+Base64.encode(qemail)+"' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;

while(rs.next()){
rs2=st2.executeQuery("select "+cat+" from weight  where user='"+rs.getString(2)+"' ");
rs2.next();
st3.executeUpdate("insert into calc(email, weight) values ('"+rs.getString(2)+"','"+rs2.getString(1)+"') ");
%>
<tr><td><h4><%=rs.getString(2)%><h6>(
<%=new String(Base64.decode(rs.getString(2)))%>)
<td><h4><%=rs2.getString(1)%>
<%
}

}
catch(Exception e){
System.out.println("11="+e);
}
%>

</table>
											
	<form method="post" action="process3.jsp">
		<input type="submit" value="Interest Similarity">

	</form>	


<%@ include file="footer.jsp"%>
