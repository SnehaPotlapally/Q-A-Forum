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

	String eemail=(String)session.getAttribute("email");
	eemail=Base64.encode(eemail);
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
//Statement st2=con.createStatement();
String sql="select * from interaction where user='"+eemail+"'  and ans='non' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
	<header>
												<h2>Questions </h2>
													</header>

<%
int i=0;
while(rs.next()){
%>

<form method="post" action="uqueries2.jsp?qid=<%=rs.getString(1)%>">
	<h4><%=++i%>) &nbsp;<%String[] que=Details.main(rs.getString(1));%>
<font size="" color="#3d9c98"><%=que[0]%>
</font><br>
<font size="-1" color="#6dc7c2">Questioned by: <%=que[2]%>
</font><br><br>
<input type="text" name="ans" required placeholder="Provide your answer...">
</form><%

}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
            </table>


<%@ include file="ufooter.jsp"%>