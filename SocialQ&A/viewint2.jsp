
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>


<%String email1=(String)session.getAttribute("email");%>

<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from interests where email='"+Base64.encode(email1)+"' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);

%>

<h3 class="agileits-title w3title2">Your Interests are</h3>
			<div class="agile_gallery_grids">	
			
				<div class="col-sm3 col-xs-3 agile_gallery_grid"> 
	<ul>									
<%
while(rs.next()){

String intr=rs.getString(2);
String intre[]=intr.split("\\;");
for(String s: intre){
	%>
	<li><center><h4><%=new String(Base64.decode(s))%></h4>
	</center><%
}
}

}
catch(Exception e){
System.out.println("11="+e);
}
%>
                </ul>

		
<%@ include file="ufooter.jsp"%>
