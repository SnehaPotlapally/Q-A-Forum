
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.Base64"%>
<img src="images/eqau-2.png" width="682" height="93" border="0" alt=""><br><br>
<%
String qid=request.getParameter("id");
String cat=(String)session.getAttribute("cat"); String que=(String)session.getAttribute("que"); ;
String qemail=(String)session.getAttribute("qemail"); ; String qname=(String)session.getAttribute("qname"); ;

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();

String sql="select * from friends where user1='"+Base64.encode(qemail)+"' ";
System.out.println(sql);
ResultSet rs2=null;

Set<String> set=new HashSet<String>();
String com1="";
String[] com11=null;
String com2="";
String[] com22=null;
rs2=st2.executeQuery("select * from interests  where email='"+Base64.encode(qemail)+"' ");
while(rs2.next()){
	com1=rs2.getString(2);
}

double i=0;
ResultSet rs=st.executeQuery(sql);
%>

<table>
<tr><td><h3><I><u>Asker Friends<td><h3><I><u>Interests <td><h3><I><u>Interests Similarity

<%
while(rs.next()){
System.out.println("@@@");


rs2=st2.executeQuery("select * from interests  where email='"+rs.getString(2)+"' ");

					System.out.println("select * from interests  where email='"+rs.getString(2)+"' ");

		while(rs2.next()){
				i=0;

				set=new HashSet<String>();
				com11=com1.split("\\;");
				for(String s: com11)
					set.add(s);

				System.out.println(set);

		com2=rs2.getString(2);
		com22=com2.split("\\;");

		for(String s: com22){
			if(set.add(s)){}else{++i;}
		}

		st3.executeUpdate("update calc set ps='"+i/10+"' where email='"+rs.getString(2)+"' ");


%>

<tr><td><h4><%=rs.getString(2)%><td><h4><font size="" color="#c80b4d"><%=com2%></font><td><h4><%=i/10%>
<%
}



}
%>
</table>

<h4>
Asker Intrests:
<font size="" color="#990000"><%=com1%></font>

<%
}
catch(Exception e){
System.out.println("11="+e);
}
%>

</h1>											
	<form method="post" action="process4.jsp">
		<input type="submit" value="Asking & Ans Frequency 'A'">
	</form>	
Note: Total Interests are 10.
<%@ include file="footer.jsp"%>
