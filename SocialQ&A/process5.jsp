
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*"  import="CT.Base64"%>
<img src="images/eqau-4.png" width="682" height="93" border="0" alt=""><br><br>

<table>
<tr><td><h3><I><u>Asker Friend<td><h3><I><u>Common Friends <td><h3><I><u>Asker Total Friends<td><h3><I><u>C=

<%
String qid=request.getParameter("id");
String cat=(String)session.getAttribute("cat"); String que=(String)session.getAttribute("que"); ;
String qemail=(String)session.getAttribute("qemail"); ; String qname=(String)session.getAttribute("qname"); ;

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();


Set<String> set=new HashSet<String>();
Set<String> set2=new HashSet<String>();

String sql="select * from friends where user1='"+Base64.encode(qemail)+"'";
System.out.println(sql);

double i=0;
ResultSet rs=st.executeQuery(sql);
while(rs.next()){
	set.add(rs.getString(2));
}

i=set.size();
System.out.println(i);


ResultSet rs2=null;
String sql2="select * from friends where user1='"+Base64.encode(qemail)+"' ";
rs2=st2.executeQuery(sql2);

while(rs2.next()){

		double d=0;
		rs=st.executeQuery("select * from friends where user1='"+rs2.getString(2)+"' ");
		set2.clear();
		set2.addAll(set);
	System.out.println(set);	
	while(rs.next()){
		
				if(set2.add(rs.getString(2))){
				}else{++d;}
			
		}
		%>
		<TR><td><%=rs2.getString(2)%><td><%=d%><td><%=i%><td><%=d/i%>
	<%	st3.executeUpdate("update calc set pc='"+d/i+"' where email='"+rs2.getString(2)+"' ");

	


	}
}

catch(Exception e){
System.out.println("11="+e);
}
%>
</table>

</h1>											
	<form method="post" action="process6.jsp">
		<input type="submit" value="The social closeness of friend Uk ">
	</form>	

<%@ include file="footer.jsp"%>
