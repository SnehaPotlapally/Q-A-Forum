
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>


<%
String qid=request.getParameter("id");
session.setAttribute("qid",qid); ;

String cat=""; String que="";
String qemail=""; String qname="";

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
st3.executeUpdate("delete from temp");

String sql="select * from query where qid='"+qid+"' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
<%
while(rs.next()){


que=rs.getString(2);
qemail=rs.getString(3);
qname=rs.getString(4);

String tmp[]=que.split("\\s+");
for(String term:tmp){
rs2=st2.executeQuery("SELECT cat, count(*) from synset where keywords like '%"+term+";%' group by cat");
while(rs2.next()){
	System.out.println("SELECT cat, count(*) from synset where keywords like '%"+term+";%' group by cat");

st3.executeUpdate("insert into temp values('"+rs2.getString(1)+"','"+rs2.getInt(2)+"')");

}
}
}
}
catch(Exception e){
System.out.println("11="+e);
}
%>



<%String sql="SELECT cat, sum(freq) from temp  group by cat order by sum(freq) desc ";
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
if(rs.next()){
	cat=rs.getString(1);

	session.setAttribute("cat",cat);
	session.setAttribute("que",que);
	session.setAttribute("qemail",qemail);
	session.setAttribute("qname",qname);
	%>
	<header>
												<h2>Question Categorization </h2>
												<p><img src="images/speech_balloon_question.png" width="42" height="42" border="0" alt=""><%=que%></p>
												<h3><img src="images/img_263507.png" width="42" height="42" border="0" alt="">Category: <%=cat%></h3>
											
	<form method="post" action="process2.jsp">
		<input type="submit" value="Question User Mapper">

	</form>	<%
}
else{
	out.println("<h1>Question is not belongs any category. Cannot forward to friends..</h1>");
}

}
catch(Exception e){
System.out.println("22="+e);
}



%>




<%@ include file="footer.jsp"%>
