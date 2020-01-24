<%@ include file="uheader.jsp"%>

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>

<%String email=(String)session.getAttribute("email");%>
<%String name=(String)session.getAttribute("name");%>




<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


String sql="insert into query(query, uemail, uname, date_) values('"+request.getParameter("query")+"','"+email+"','"+name+"','"+DateDemo.main()+"')";
System.out.println(sql);
st.executeUpdate(sql);

response.sendRedirect("postquery.jsp?id=succ");


}
catch(Exception e){
	System.out.println("00000000"+e);
}
%>