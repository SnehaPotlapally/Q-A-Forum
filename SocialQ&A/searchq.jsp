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
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from query where uemail='"+session.getAttribute("email")+"' and query like '%"+request.getParameter("keys")+"%' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
	<header>
<h2>Search Questions & Answers</h2>
													</header>

<%
int i=0;
while(rs.next()){

%><br><br>
<b><font size="+2" color="#3d9c98">Q<%=++i%>)&nbsp;&nbsp;<%=rs.getString("query")%></font></b>
	

<%
		rs2=st2.executeQuery("select * from interaction where qid='"+rs.getString(1)+"'  and ans!='non' ");
		while(rs2.next()){
%><br><br>
			<font size="+1" color="#4888d7">Ans)&nbsp;&nbsp;<%=rs2.getString("ans")%></font><br>By: <%=new String(Base64.decode(rs2.getString("user")))%>
<%
	}
}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
&nbsp;
<%@ include file="ufooter.jsp"%>