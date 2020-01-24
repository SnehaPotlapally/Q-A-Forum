<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>
</div></div></div>
		  <head>
<style>
table, th, td {
  border: 2px solid black;
  border-color: #B1DDAB;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>

<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from synset order by cat ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
	<header>
<h2>CATEGORY SYNSET</h2>
													</header>
<h4><TABLE border>
<tr><td>Sno<td>Category<td>Sub Category<td>Keywords
<%
int i=0;
while(rs.next()){
%>
<tr><td><%=++i%><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><form method="post" action="">
	
<textarea name="" rows="" cols=""><%=rs.getString(3)%></textarea>
</form>


<%
}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
            </table>

</h4>
<%@ include file="footer.jsp"%>