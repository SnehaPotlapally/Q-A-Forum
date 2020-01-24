
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>


<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
//Statement st2=con.createStatement();
String sql="select * from query where status='new' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
	<header>
												<h2>Queries</h2>
													</header>
<table>
<tr><td><h4>Qid</h4><td><h4>Query</h4><td><h4>Asker</h4><td>
<%
while(rs.next()){
%>
<tr><td><h3><%=rs.getString(1)%><td><h3><u><%=rs.getString(2)%></u><td><h3><%=rs.getString(4)%><td><a href="process.jsp?id=<%=rs.getString(1)%>"><h3>Process</a>

<%

}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
            </table>
<%@ include file="footer.jsp"%>
