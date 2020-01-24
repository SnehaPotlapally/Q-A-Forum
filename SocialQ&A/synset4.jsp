<%@ page  import="java.sql.*" import="databaseconnection.*" %>


<%String cat=request.getParameter("cat");
String subcat=request.getParameter("subcat");
String keys=request.getParameter("keys");
String keys2=request.getParameter("keys2");


String val="";
val=keys+keys2;

       try
                {	  

Connection ccc=databasecon.getconnection();
PreparedStatement ps=null;
ps=ccc.prepareStatement("INSERT INTO synset(cat,subcat,keywords)VALUES(?,?,?)");
ps.setString(1,cat);
ps.setString(2,subcat);
ps.setString(3,val);
int s = ps.executeUpdate();

response.sendRedirect("synset.jsp?id=succ");

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}


%>



