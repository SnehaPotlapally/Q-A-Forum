
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>


<%String email1=(String)session.getAttribute("email");%>

<%
String eemail=Base64.encode(email1);
try{
//String f1[]=Details.main(email);
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from friends where user1='"+eemail+"' ";
System.out.println("***********"+sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>

<h3 class="agileits-title w3title2">Your Friends are</h3>
			<div class="agile_gallery_grids">	
			
				<div class="col-sm3 col-xs-3 agile_gallery_grid"> 
										
<%
while(rs.next()){

String user=new String(Base64.decode(rs.getString("user2")));
System.out.println("11="+user);
rs2=st2.executeQuery("select * from users where email='"+user+"' ");
while(rs2.next())
	{
			%>		<div class="row">
				
												<div class="3u 12u(mobile)">

					
												<section class="box feature">
															<a href="#" class="image featured">
															<img src="view.jsp?id=<%=rs2.getString("email")%>"   style="width:258px;height:221px;"alt="" /></a>
															<%=rs.getString("user2")%>
															Decoded:
															<%=rs2.getString("email")%>
															</h4>
															<p>
															</p>
														</section>

</div></div>


	<%
}


%>

<%
}
}
catch(Exception e){
System.out.println("11="+e);
}
%>
                </ul>

<%@ include file="ufooter.jsp"%>
