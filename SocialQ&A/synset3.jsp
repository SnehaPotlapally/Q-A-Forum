<%@ page  import="java.sql.*"  import="java.util.*"  import="java.io.*" import="databaseconnection.*" %>

<%@ include file="aheader.jsp"%>

<%String cat=request.getParameter("cat");
String key=request.getParameter("subcat");

key=key.toLowerCase();
BufferedReader bw=null; 
String val="";

File f =null;
 f = new File("E://WORDS/"+Character.toString(key.charAt(0))+"/"+key+"/"+key+".txt");
String line="";
if(f.exists())
{
bw=new BufferedReader (new FileReader(f));
line=bw.readLine();
line=line.trim();
String[] tmp=line.split("\\s+");
for(String t: tmp)
		val=val+t+";";

}
%>


											<header>
												<h2>Add Sub Category</h2>
											</header>


<h3>
<form method="post" action="synset4.jsp">
Main Category
<input type="text" name="cat" readonly value="<%=cat%>">
Sub Category
<input type="text" name="subcat" readonly value="<%=key%>">
<br>
Keywords from wordnet
<textarea name="keys" rows="" cols=""><%=val%></textarea>
<br>
Extra Keywords 
<textarea name="keys2" rows="" cols="" placeholder=" ';' use for multiple keywords "></textarea>
<br>

</h3>
<input type="submit" Value="Next">

</form>

<br><br><br><br><br>
<%@ include file="footer.jsp"%>

