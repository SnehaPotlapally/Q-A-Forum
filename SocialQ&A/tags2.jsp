<%@ page import="java.sql.*,databaseconnection.*, CT.*"%>
<html>
<head>

<%
String[] values = request.getParameterValues("tags");
Connection ccc=databasecon.getconnection();

String val="";
for(String s: values){
	val=val+Base64.encode(s)+";";
}
String email=(String)session.getAttribute("email");

ResultSet rs=null;

PreparedStatement ps=null;
       try
                {	  

Connection con=databasecon.getconnection();
	Statement st = con.createStatement();
st.executeUpdate("insert into weight values('"+Base64.encode(email)+"','0') ");

ps=con.prepareStatement("INSERT INTO interests(email,interests)VALUES(?,?)");
			//////////////////////////////////////////////////

ps.setString(1,Base64.encode(email));
ps.setString(2,val);

int s = ps.executeUpdate();

response.sendRedirect("signup.jsp?id="+email);

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
